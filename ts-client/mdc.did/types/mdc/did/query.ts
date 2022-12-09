/* eslint-disable */
import _m0 from "protobufjs/minimal";
import { DIDDocumentWithSeq } from "./did_document";

export const protobufPackage = "mdc.did";

export interface QueryDIDRequest {
  didBase64: string;
}

export interface QueryDIDResponse {
  didDocumentWithSeq: DIDDocumentWithSeq | undefined;
}

function createBaseQueryDIDRequest(): QueryDIDRequest {
  return { didBase64: "" };
}

export const QueryDIDRequest = {
  encode(message: QueryDIDRequest, writer: _m0.Writer = _m0.Writer.create()): _m0.Writer {
    if (message.didBase64 !== "") {
      writer.uint32(10).string(message.didBase64);
    }
    return writer;
  },

  decode(input: _m0.Reader | Uint8Array, length?: number): QueryDIDRequest {
    const reader = input instanceof _m0.Reader ? input : new _m0.Reader(input);
    let end = length === undefined ? reader.len : reader.pos + length;
    const message = createBaseQueryDIDRequest();
    while (reader.pos < end) {
      const tag = reader.uint32();
      switch (tag >>> 3) {
        case 1:
          message.didBase64 = reader.string();
          break;
        default:
          reader.skipType(tag & 7);
          break;
      }
    }
    return message;
  },

  fromJSON(object: any): QueryDIDRequest {
    return { didBase64: isSet(object.didBase64) ? String(object.didBase64) : "" };
  },

  toJSON(message: QueryDIDRequest): unknown {
    const obj: any = {};
    message.didBase64 !== undefined && (obj.didBase64 = message.didBase64);
    return obj;
  },

  fromPartial<I extends Exact<DeepPartial<QueryDIDRequest>, I>>(object: I): QueryDIDRequest {
    const message = createBaseQueryDIDRequest();
    message.didBase64 = object.didBase64 ?? "";
    return message;
  },
};

function createBaseQueryDIDResponse(): QueryDIDResponse {
  return { didDocumentWithSeq: undefined };
}

export const QueryDIDResponse = {
  encode(message: QueryDIDResponse, writer: _m0.Writer = _m0.Writer.create()): _m0.Writer {
    if (message.didDocumentWithSeq !== undefined) {
      DIDDocumentWithSeq.encode(message.didDocumentWithSeq, writer.uint32(10).fork()).ldelim();
    }
    return writer;
  },

  decode(input: _m0.Reader | Uint8Array, length?: number): QueryDIDResponse {
    const reader = input instanceof _m0.Reader ? input : new _m0.Reader(input);
    let end = length === undefined ? reader.len : reader.pos + length;
    const message = createBaseQueryDIDResponse();
    while (reader.pos < end) {
      const tag = reader.uint32();
      switch (tag >>> 3) {
        case 1:
          message.didDocumentWithSeq = DIDDocumentWithSeq.decode(reader, reader.uint32());
          break;
        default:
          reader.skipType(tag & 7);
          break;
      }
    }
    return message;
  },

  fromJSON(object: any): QueryDIDResponse {
    return {
      didDocumentWithSeq: isSet(object.didDocumentWithSeq)
        ? DIDDocumentWithSeq.fromJSON(object.didDocumentWithSeq)
        : undefined,
    };
  },

  toJSON(message: QueryDIDResponse): unknown {
    const obj: any = {};
    message.didDocumentWithSeq !== undefined && (obj.didDocumentWithSeq = message.didDocumentWithSeq
      ? DIDDocumentWithSeq.toJSON(message.didDocumentWithSeq)
      : undefined);
    return obj;
  },

  fromPartial<I extends Exact<DeepPartial<QueryDIDResponse>, I>>(object: I): QueryDIDResponse {
    const message = createBaseQueryDIDResponse();
    message.didDocumentWithSeq = (object.didDocumentWithSeq !== undefined && object.didDocumentWithSeq !== null)
      ? DIDDocumentWithSeq.fromPartial(object.didDocumentWithSeq)
      : undefined;
    return message;
  },
};

/** Query defines the gRPC querier service. */
export interface Query {
  /** Parameters queries the parameters of the module. */
  DID(request: QueryDIDRequest): Promise<QueryDIDResponse>;
}

export class QueryClientImpl implements Query {
  private readonly rpc: Rpc;
  constructor(rpc: Rpc) {
    this.rpc = rpc;
    this.DID = this.DID.bind(this);
  }
  DID(request: QueryDIDRequest): Promise<QueryDIDResponse> {
    const data = QueryDIDRequest.encode(request).finish();
    const promise = this.rpc.request("mdc.did.Query", "DID", data);
    return promise.then((data) => QueryDIDResponse.decode(new _m0.Reader(data)));
  }
}

interface Rpc {
  request(service: string, method: string, data: Uint8Array): Promise<Uint8Array>;
}

type Builtin = Date | Function | Uint8Array | string | number | boolean | undefined;

export type DeepPartial<T> = T extends Builtin ? T
  : T extends Array<infer U> ? Array<DeepPartial<U>> : T extends ReadonlyArray<infer U> ? ReadonlyArray<DeepPartial<U>>
  : T extends {} ? { [K in keyof T]?: DeepPartial<T[K]> }
  : Partial<T>;

type KeysOfUnion<T> = T extends T ? keyof T : never;
export type Exact<P, I extends P> = P extends Builtin ? P
  : P & { [K in keyof P]: Exact<P[K], I[K]> } & { [K in Exclude<keyof I, KeysOfUnion<P>>]: never };

function isSet(value: any): boolean {
  return value !== null && value !== undefined;
}
