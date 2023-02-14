/* eslint-disable @typescript-eslint/no-unused-vars */
import { useQuery, type UseQueryOptions, useInfiniteQuery, type UseInfiniteQueryOptions } from "@tanstack/vue-query";
import { useClient } from '../useClient';
import type { Ref } from 'vue'

export default function useMdcDid() {
  const client = useClient();
  const QueryDID = (did_base64: string,  options: any) => {
    const key = { type: 'QueryDID',  did_base64 };    
    return useQuery([key], () => {
      const { did_base64 } = key
      return  client.MdcDid.query.queryDID(did_base64).then( res => res.data );
    }, options);
  }
  
  return {QueryDID,
  }
}