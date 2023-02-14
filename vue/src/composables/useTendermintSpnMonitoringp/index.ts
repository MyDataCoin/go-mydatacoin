/* eslint-disable @typescript-eslint/no-unused-vars */
import { useQuery, type UseQueryOptions, useInfiniteQuery, type UseInfiniteQueryOptions } from "@tanstack/vue-query";
import { useClient } from '../useClient';
import type { Ref } from 'vue'

export default function useTendermintSpnMonitoringp() {
  const client = useClient();
  const QueryConsumerClientID = ( options: any) => {
    const key = { type: 'QueryConsumerClientID',  };    
    return useQuery([key], () => {
      return  client.TendermintSpnMonitoringp.query.queryConsumerClientID().then( res => res.data );
    }, options);
  }
  
  const QueryConnectionChannelID = ( options: any) => {
    const key = { type: 'QueryConnectionChannelID',  };    
    return useQuery([key], () => {
      return  client.TendermintSpnMonitoringp.query.queryConnectionChannelID().then( res => res.data );
    }, options);
  }
  
  const QueryMonitoringInfo = ( options: any) => {
    const key = { type: 'QueryMonitoringInfo',  };    
    return useQuery([key], () => {
      return  client.TendermintSpnMonitoringp.query.queryMonitoringInfo().then( res => res.data );
    }, options);
  }
  
  const QueryParams = ( options: any) => {
    const key = { type: 'QueryParams',  };    
    return useQuery([key], () => {
      return  client.TendermintSpnMonitoringp.query.queryParams().then( res => res.data );
    }, options);
  }
  
  return {QueryConsumerClientID,QueryConnectionChannelID,QueryMonitoringInfo,QueryParams,
  }
}