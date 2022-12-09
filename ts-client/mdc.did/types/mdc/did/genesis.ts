/* eslint-disable */
import _m0 from "protobufjs/minimal";
import { DIDDocumentWithSeq } from "./did_document";

export const protobufPackage = "mdc.did";

/** GenesisState defines the did module's genesis state. */
export interface GenesisState {
  documents: { [key: string]: DIDDocumentWithSeq };
}

export interface GenesisState_DocumentsEntry {
  key: string;
  value: DIDDocumentWithSeq | undefined;
}

function createBaseGenesisState(): GenesisState {
  return { documents: {} };
}

export const GenesisState = {
  encode(message: GenesisState, writer: _m0.Writer = _m0.Writer.create()): _m0.Writer {
    Object.entries(message.documents).forEach(([key, value]) => {
      GenesisState_DocumentsEntry.encode({ key: key as any, value }, writer.uint32(10).fork()).ldelim();
    });
    return writer;
  },

  decode(input: _m0.Reader | Uint8Array, length?: number): GenesisState {
    const reader = input instanceof _m0.Reader ? input : new _m0.Reader(input);
    let end = length === undefined ? reader.len : reader.pos + length;
    const message = createBaseGenesisState();
    while (reader.pos < end) {
      const tag = reader.uint32();
      switch (tag >>> 3) {
        case 1:
          const entry1 = GenesisState_DocumentsEntry.decode(reader, reader.uint32());
          if (entry1.value !== undefined) {
            message.documents[entry1.key] = entry1.value;
          }
          break;
        default:
          reader.skipType(tag & 7);
          break;
      }
    }
    return message;
  },

  fromJSON(object: any): GenesisState {
    return {
      documents: isObject(object.documents)
        ? Object.entries(object.documents).reduce<{ [key: string]: DIDDocumentWithSeq }>((acc, [key, value]) => {
          acc[key] = DIDDocumentWithSeq.fromJSON(value);
          return acc;
        }, {})
        : {},
    };
  },

  toJSON(message: GenesisState): unknown {
    const obj: any = {};
    obj.documents = {};
    if (message.documents) {
      Object.entries(message.documents).forEach(([k, v]) => {
        obj.documents[k] = DIDDocumentWithSeq.toJSON(v);
      });
    }
    return obj;
  },

  fromPartial<I extends Exact<DeepPartial<GenesisState>, I>>(object: I): GenesisState {
    const message = createBaseGenesisState();
    message.documents = Object.entries(object.documents ?? {}).reduce<{ [key: string]: DIDDocumentWithSeq }>(
      (acc, [key, value]) => {
        if (value !== undefined) {
          acc[key] = DIDDocumentWithSeq.fromPartial(value);
        }
        return acc;
      },
      {},
    );
    return message;
  },
};

function createBaseGenesisState_DocumentsEntry(): GenesisState_DocumentsEntry {
  return { key: "", value: undefined };
}

export const GenesisState_DocumentsEntry = {
  encode(message: GenesisState_DocumentsEntry, writer: _m0.Writer = _m0.Writer.create()): _m0.Writer {
    if (message.key !== "") {
      writer.uint32(10).string(message.key);
    }
    if (message.value !== undefined) {
      DIDDocumentWithSeq.encode(message.value, writer.uint32(18).fork()).ldelim();
    }
    return writer;
  },

  decode(input: _m0.Reader | Uint8Array, length?: number): GenesisState_DocumentsEntry {
    const reader = input instanceof _m0.Reader ? input : new _m0.Reader(input);
    let end = length === undefined ? reader.len : reader.pos + length;
    const message = createBaseGenesisState_DocumentsEntry();
    while (reader.pos < end) {
      const tag = reader.uint32();
      switch (tag >>> 3) {
        case 1:
          message.key = reader.string();
          break;
        case 2:
          message.value = DIDDocumentWithSeq.decode(reader, reader.uint32());
          break;
        default:
          reader.skipType(tag & 7);
          break;
      }
    }
    return message;
  },

  fromJSON(object: any): GenesisState_DocumentsEntry {
    return {
      key: isSet(object.key) ? String(object.key) : "",
      value: isSet(object.value) ? DIDDocumentWithSeq.fromJSON(object.value) : undefined,
    };
  },

  toJSON(message: GenesisState_DocumentsEntry): unknown {
    const obj: any = {};
    message.key !== undefined && (obj.key = message.key);
    message.value !== undefined && (obj.value = message.value ? DIDDocumentWithSeq.toJSON(message.value) : undefined);
    return obj;
  },

  fromPartial<I extends Exact<DeepPartial<GenesisState_DocumentsEntry>, I>>(object: I): GenesisState_DocumentsEntry {
    const message = createBaseGenesisState_DocumentsEntry();
    message.key = object.key ?? "";
    message.value = (object.value !== undefined && object.value !== null)
      ? DIDDocumentWithSeq.fromPartial(object.value)
      : undefined;
    return message;
  },
};

type Builtin = Date | Function | Uint8Array | string | number | boolean | undefined;

export type DeepPartial<T> = T extends Builtin ? T
  : T extends Array<infer U> ? Array<DeepPartial<U>> : T extends ReadonlyArray<infer U> ? ReadonlyArray<DeepPartial<U>>
  : T extends {} ? { [K in keyof T]?: DeepPartial<T[K]> }
  : Partial<T>;

type KeysOfUnion<T> = T extends T ? keyof T : never;
export type Exact<P, I extends P> = P extends Builtin ? P
  : P & { [K in keyof P]: Exact<P[K], I[K]> } & { [K in Exclude<keyof I, KeysOfUnion<P>>]: never };

function isObject(value: any): boolean {
  return typeof value === "object" && value !== null;
}

function isSet(value: any): boolean {
  return value !== null && value !== undefined;
}
