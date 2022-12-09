import { Client, registry, MissingWalletError } from 'mdc-client-ts'

import { Strings } from "mdc-client-ts/mdc.did/types"
import { DIDDocument } from "mdc-client-ts/mdc.did/types"
import { VerificationMethod } from "mdc-client-ts/mdc.did/types"
import { VerificationRelationship } from "mdc-client-ts/mdc.did/types"
import { Service } from "mdc-client-ts/mdc.did/types"
import { DIDDocumentWithSeq } from "mdc-client-ts/mdc.did/types"
import { DataWithSeq } from "mdc-client-ts/mdc.did/types"
import { Params } from "mdc-client-ts/mdc.did/types"


export { Strings, DIDDocument, VerificationMethod, VerificationRelationship, Service, DIDDocumentWithSeq, DataWithSeq, Params };

function initClient(vuexGetters) {
	return new Client(vuexGetters['common/env/getEnv'], vuexGetters['common/wallet/signer'])
}

function mergeResults(value, next_values) {
	for (let prop of Object.keys(next_values)) {
		if (Array.isArray(next_values[prop])) {
			value[prop]=[...value[prop], ...next_values[prop]]
		}else{
			value[prop]=next_values[prop]
		}
	}
	return value
}

type Field = {
	name: string;
	type: unknown;
}
function getStructure(template) {
	let structure: {fields: Field[]} = { fields: [] }
	for (const [key, value] of Object.entries(template)) {
		let field = { name: key, type: typeof value }
		structure.fields.push(field)
	}
	return structure
}
const getDefaultState = () => {
	return {
				DID: {},
				
				_Structure: {
						Strings: getStructure(Strings.fromPartial({})),
						DIDDocument: getStructure(DIDDocument.fromPartial({})),
						VerificationMethod: getStructure(VerificationMethod.fromPartial({})),
						VerificationRelationship: getStructure(VerificationRelationship.fromPartial({})),
						Service: getStructure(Service.fromPartial({})),
						DIDDocumentWithSeq: getStructure(DIDDocumentWithSeq.fromPartial({})),
						DataWithSeq: getStructure(DataWithSeq.fromPartial({})),
						Params: getStructure(Params.fromPartial({})),
						
		},
		_Registry: registry,
		_Subscriptions: new Set(),
	}
}

// initial state
const state = getDefaultState()

export default {
	namespaced: true,
	state,
	mutations: {
		RESET_STATE(state) {
			Object.assign(state, getDefaultState())
		},
		QUERY(state, { query, key, value }) {
			state[query][JSON.stringify(key)] = value
		},
		SUBSCRIBE(state, subscription) {
			state._Subscriptions.add(JSON.stringify(subscription))
		},
		UNSUBSCRIBE(state, subscription) {
			state._Subscriptions.delete(JSON.stringify(subscription))
		}
	},
	getters: {
				getDID: (state) => (params = { params: {}}) => {
					if (!(<any> params).query) {
						(<any> params).query=null
					}
			return state.DID[JSON.stringify(params)] ?? {}
		},
				
		getTypeStructure: (state) => (type) => {
			return state._Structure[type].fields
		},
		getRegistry: (state) => {
			return state._Registry
		}
	},
	actions: {
		init({ dispatch, rootGetters }) {
			console.log('Vuex module: mdc.did initialized!')
			if (rootGetters['common/env/client']) {
				rootGetters['common/env/client'].on('newblock', () => {
					dispatch('StoreUpdate')
				})
			}
		},
		resetState({ commit }) {
			commit('RESET_STATE')
		},
		unsubscribe({ commit }, subscription) {
			commit('UNSUBSCRIBE', subscription)
		},
		async StoreUpdate({ state, dispatch }) {
			state._Subscriptions.forEach(async (subscription) => {
				try {
					const sub=JSON.parse(subscription)
					await dispatch(sub.action, sub.payload)
				}catch(e) {
					throw new Error('Subscriptions: ' + e.message)
				}
			})
		},
		
		
		
		 		
		
		
		async QueryDID({ commit, rootGetters, getters }, { options: { subscribe, all} = { subscribe:false, all:false}, params, query=null }) {
			try {
				const key = params ?? {};
				const client = initClient(rootGetters);
				let value= (await client.MdcDid.query.queryDId( key.did_base64)).data
				
					
				commit('QUERY', { query: 'DID', key: { params: {...key}, query}, value })
				if (subscribe) commit('SUBSCRIBE', { action: 'QueryDID', payload: { options: { all }, params: {...key},query }})
				return getters['getDID']( { params: {...key}, query}) ?? {}
			} catch (e) {
				throw new Error('QueryClient:QueryDID API Node Unavailable. Could not perform query: ' + e.message)
				
			}
		},
		
		
		async sendMsgCreateDID({ rootGetters }, { value, fee = [], memo = '' }) {
			try {
				const client=await initClient(rootGetters)
				const result = await client.MdcDid.tx.sendMsgCreateDID({ value, fee: {amount: fee, gas: "200000"}, memo })
				return result
			} catch (e) {
				if (e == MissingWalletError) {
					throw new Error('TxClient:MsgCreateDID:Init Could not initialize signing client. Wallet is required.')
				}else{
					throw new Error('TxClient:MsgCreateDID:Send Could not broadcast Tx: '+ e.message)
				}
			}
		},
		
		async MsgCreateDID({ rootGetters }, { value }) {
			try {
				const client=initClient(rootGetters)
				const msg = await client.MdcDid.tx.msgCreateDID({value})
				return msg
			} catch (e) {
				if (e == MissingWalletError) {
					throw new Error('TxClient:MsgCreateDID:Init Could not initialize signing client. Wallet is required.')
				} else{
					throw new Error('TxClient:MsgCreateDID:Create Could not create message: ' + e.message)
				}
			}
		},
		
	}
}
