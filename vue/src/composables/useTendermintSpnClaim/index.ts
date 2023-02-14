/* eslint-disable @typescript-eslint/no-unused-vars */
import { useQuery, type UseQueryOptions, useInfiniteQuery, type UseInfiniteQueryOptions } from "@tanstack/vue-query";
import { useClient } from '../useClient';
import type { Ref } from 'vue'

export default function useTendermintSpnClaim() {
  const client = useClient();
  const QueryParams = ( options: any) => {
    const key = { type: 'QueryParams',  };    
    return useQuery([key], () => {
      return  client.TendermintSpnClaim.query.queryParams().then( res => res.data );
    }, options);
  }
  
  const QueryClaimRecord = (address: string,  options: any) => {
    const key = { type: 'QueryClaimRecord',  address };    
    return useQuery([key], () => {
      const { address } = key
      return  client.TendermintSpnClaim.query.queryClaimRecord(address).then( res => res.data );
    }, options);
  }
  
  const QueryClaimRecordAll = (query: any, options: any, perPage: number) => {
    const key = { type: 'QueryClaimRecordAll', query };    
    return useInfiniteQuery([key], ({pageParam = 1}: { pageParam?: number}) => {
      const {query } = key

      query['pagination.limit']=perPage;
      query['pagination.offset']= (pageParam-1)*perPage;
      query['pagination.count_total']= true;
      return  client.TendermintSpnClaim.query.queryClaimRecordAll(query ?? undefined).then( res => ({...res.data,pageParam}) );
    }, {...options,
      getNextPageParam: (lastPage, allPages) => { if ((lastPage.pagination?.total ?? 0) >((lastPage.pageParam ?? 0) * perPage)) {return lastPage.pageParam+1 } else {return undefined}},
      getPreviousPageParam: (firstPage, allPages) => { if (firstPage.pageParam==1) { return undefined } else { return firstPage.pageParam-1}}
    }
    );
  }
  
  const QueryMission = (missionID: string,  options: any) => {
    const key = { type: 'QueryMission',  missionID };    
    return useQuery([key], () => {
      const { missionID } = key
      return  client.TendermintSpnClaim.query.queryMission(missionID).then( res => res.data );
    }, options);
  }
  
  const QueryMissionAll = (query: any, options: any, perPage: number) => {
    const key = { type: 'QueryMissionAll', query };    
    return useInfiniteQuery([key], ({pageParam = 1}: { pageParam?: number}) => {
      const {query } = key

      query['pagination.limit']=perPage;
      query['pagination.offset']= (pageParam-1)*perPage;
      query['pagination.count_total']= true;
      return  client.TendermintSpnClaim.query.queryMissionAll(query ?? undefined).then( res => ({...res.data,pageParam}) );
    }, {...options,
      getNextPageParam: (lastPage, allPages) => { if ((lastPage.pagination?.total ?? 0) >((lastPage.pageParam ?? 0) * perPage)) {return lastPage.pageParam+1 } else {return undefined}},
      getPreviousPageParam: (firstPage, allPages) => { if (firstPage.pageParam==1) { return undefined } else { return firstPage.pageParam-1}}
    }
    );
  }
  
  const QueryAirdropSupply = ( options: any) => {
    const key = { type: 'QueryAirdropSupply',  };    
    return useQuery([key], () => {
      return  client.TendermintSpnClaim.query.queryAirdropSupply().then( res => res.data );
    }, options);
  }
  
  return {QueryParams,QueryClaimRecord,QueryClaimRecordAll,QueryMission,QueryMissionAll,QueryAirdropSupply,
  }
}