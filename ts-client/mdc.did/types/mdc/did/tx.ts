/* eslint-disable */
import _m0 from "protobufjs/minimal";
import { DIDDocument } from "./did_document";

export const protobufPackage = "mdc.did";

export interface MsgCreateDID {
  did: string;
  document: DIDDocument | undefined;
  verificationMethodId: string;
  signature: Uint8Array;
  fromAddress: string;
}

export interface MsgCreateDIDResponse {
}

function createBaseMsgCreateDID(): MsgCreateDID {
  return { did: "", document: undefined, verificationMethodId: "", signature: new Uint8Array(), fromAddress: "" };
}

export const MsgCreateDID = {
  encode(message: MsgCreateDID, writer: _m0.Writer = _m0.Writer.create()): _m0.Writer {
    if (message.did !== "") {
      writer.uint32(10).string(message.did);
    }
    if (message.document !== undefined) {
      DIDDocument.encode(message.document, writer.uint32(18).fork()).ldelim();
    }
    if (message.verificationMethodId !== "") {
      writer.uint32(26).string(message.verificationMethodId);
    }
    if (message.signature.length !== 0) {
      writer.uint32(34).bytes(message.signature);
    }
    if (message.fromAddress !== "") {
      writer.uint32(42).string(message.fromAddress);
    }
    return writer;
  },

  decode(input: _m0.Reader | Uint8Array, length?: number): MsgCreateDID {
    const reader = input instanceof _m0.Reader ? input : new _m0.Reader(input);
    let end = length === undefined ? reader.len : reader.pos + length;
    const message = createBaseMsgCreateDID();
    while (reader.pos < end) {
      const tag = reader.uint32();
      switch (tag >>> 3) {
        case 1:
          message.did = reader.string();
          break;
        case 2:
          message.document = DIDDocument.decode(reader, reader.uint32());
          break;
        case 3:
          message.verificationMethodId = reader.string();
          break;
        case 4:
          message.signature = reader.bytes();
          break;
        case 5:
          message.fromAddress = reader.string();
          break;
        default:
          reader.skipType(tag & 7);
          break;
      }
    }
    return message;
  },

  fromJSON(object: any): MsgCreateDID {
    return {
      did: isSet(object.did) ? String(object.did) : "",
      document: isSet(object.document) ? DIDDocument.fromJSON(object.document) : undefined,
      verificationMethodId: isSet(object.verificationMethodId) ? String(object.verificationMethodId) : "",
      signature: isSet(object.signature) ? bytesFromBase64(object.signature) : new Uint8Array(),
      fromAddress: isSet(object.fromAddress) ? String(object.fromAddress) : "",
    };
  },

  toJSON(message: MsgCreateDID): unknown {
    const obj: any = {};
    message.did !== undefined && (obj.did = message.did);
    message.document !== undefined
      && (obj.document = message.document ? DIDDocument.toJSON(message.document) : undefined);
    message.verificationMethodId !== undefined && (obj.verificationMethodId = message.verificationMethodId);
    message.signature !== undefined
      && (obj.signature = base64FromBytes(message.signature !== undefined ? message.signature : new Uint8Array()));
    message.fromAddress !== undefined && (obj.fromAddress = message.fromAddress);
    return obj;
  },

  fromPartial<I extends Exact<DeepPartial<MsgCreateDID>, I>>(object: I): MsgCreateDID {
    const message = createBaseMsgCreateDID();
    message.did = object.did ?? "";
    message.document = (object.document !== undefined && object.document !== null)
      ? DIDDocument.fromPartial(object.document)
      : undefined;
    message.verificationMethodId = object.verificationMethodId ?? "";
    message.signature = object.signature ?? new Uint8Array();
    message.fromAddress = object.fromAddress ?? "";
    return message;
  },
};

function createBaseMsgCreateDIDResponse(): MsgCreateDIDResponse {
  return {};
}

export const MsgCreateDIDResponse = {
  encode(_: MsgCreateDIDResponse, writer: _m0.Writer = _m0.Writer.create()): _m0.Writer {
    return writer;
  },

  decode(input: _m0.Reader | Uint8Array, length?: number): MsgCreateDIDResponse {
    const reader = input instanceof _m0.Reader ? input : new _m0.Reader(input);
    let end = length === undefined ? reader.len : reader.pos + length;
    const message = createBaseMsgCreateDIDResponse();
    while (reader.pos < end) {
      const tag = reader.uint32();
      switch (tag >>> 3) {
        default:
          reader.skipType(tag & 7);
          break;
      }
    }
    return message;
  },

  fromJSON(_: any): MsgCreateDIDResponse {
    return {};
  },

  toJSON(_: MsgCreateDIDResponse): unknown {
    const obj: any = {};
    return obj;
  },

  fromPartial<I extends Exact<DeepPartial<MsgCreateDIDResponse>, I>>(_: I): MsgCreateDIDResponse {
    const message = createBaseMsgCreateDIDResponse();
    return message;
  },
};

/** Msg defines the Msg service. */
export interface Msg {
  /** this line is used by starport scaffolding # proto/tx/rpc */
  CreateDID(request: MsgCreateDID): Promise<MsgCreateDIDResponse>;
}

export class MsgClientImpl implements Msg {
  private readonly rpc: Rpc;
  constructor(rpc: Rpc) {
    this.rpc = rpc;
    this.CreateDID = this.CreateDID.bind(this);
  }
  CreateDID(request: MsgCreateDID): Promise<MsgCreateDIDResponse> {
    const data = MsgCreateDID.encode(request).finish();
    const promise = this.rpc.request("mdc.did.Msg", "CreateDID", data);
    return promise.then((data) => MsgCreateDIDResponse.decode(new _m0.Reader(data)));
  }
}

interface Rpc {
  request(service: string, method: string, data: Uint8Array): Promise<Uint8Array>;
}

declare var self: any | undefined;
declare var window: any | undefined;
declare var global: any | undefined;
var globalThis: any = (() => {
  if (typeof globalThis !== "undefined") {
    return globalThis;
  }
  if (typeof self !== "undefined") {
    return self;
  }
  if (typeof window !== "undefined") {
    return window;
  }
  if (typeof global !== "undefined") {
    return global;
  }
  throw "Unable to locate global object";
})();

function bytesFromBase64(b64: string): Uint8Array {
  if (globalThis.Buffer) {
    return Uint8Array.from(globalThis.Buffer.from(b64, "base64"));
  } else {
    const bin = globalThis.atob(b64);
    const arr = new Uint8Array(bin.length);
    for (let i = 0; i < bin.length; ++i) {
      arr[i] = bin.charCodeAt(i);
    }
    return arr;
  }
}

function base64FromBytes(arr: Uint8Array): string {
  if (globalThis.Buffer) {
    return globalThis.Buffer.from(arr).toString("base64");
  } else {
    const bin: string[] = [];
    arr.forEach((byte) => {
      bin.push(String.fromCharCode(byte));
    });
    return globalThis.btoa(bin.join(""));
  }
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
