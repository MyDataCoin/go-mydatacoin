/* eslint-disable */
/* tslint:disable */
/*
 * ---------------------------------------------------------------
 * ## THIS FILE WAS GENERATED VIA SWAGGER-TYPESCRIPT-API        ##
 * ##                                                           ##
 * ## AUTHOR: acacode                                           ##
 * ## SOURCE: https://github.com/acacode/swagger-typescript-api ##
 * ---------------------------------------------------------------
 */

/**
* NOTE: All 'json_name' and 'gogoproto.customtype' tags are for panacea-core to unmarshal the v1.3 genesis which is in the W3C JSON-LD format.
      On the other hand, the panacea-core and cosmos-sdk don't use those tags to marshal result to JSON (via grpc-gateway).
*/
export interface DidDIDDocument {
  /** Strings defines a JSON-LD string array format which is marshalled to a single string if the array length is 1. */
  contexts?: DidStrings;
  id?: string;

  /** Strings defines a JSON-LD string array format which is marshalled to a single string if the array length is 1. */
  controller?: DidStrings;
  verification_methods?: DidVerificationMethod[];

  /** TODO: the repeated gogoproto.customtype has an issue: https://github.com/gogo/protobuf/issues/478 */
  authentications?: DidVerificationRelationship[];
  assertion_methods?: DidVerificationRelationship[];
  key_agreements?: DidVerificationRelationship[];
  capability_invocations?: DidVerificationRelationship[];
  capability_delegations?: DidVerificationRelationship[];
  services?: DidService[];
}

/**
 * DIDDocumentWithSeq defines a message for DID Document with a sequence number for preventing replay attacks.
 */
export interface DidDIDDocumentWithSeq {
  /**
   * NOTE: All 'json_name' and 'gogoproto.customtype' tags are for panacea-core to unmarshal the v1.3 genesis which is in the W3C JSON-LD format.
   *       On the other hand, the panacea-core and cosmos-sdk don't use those tags to marshal result to JSON (via grpc-gateway).
   */
  document?: DidDIDDocument;

  /** @format uint64 */
  sequence?: string;
}

export type DidMsgCreateDIDResponse = object;

export interface DidQueryDIDResponse {
  /** DIDDocumentWithSeq defines a message for DID Document with a sequence number for preventing replay attacks. */
  did_document_with_seq?: DidDIDDocumentWithSeq;
}

/**
 * Service defines a service in the W3C DID Document.
 */
export interface DidService {
  id?: string;
  type?: string;
  service_endpoint?: string;
}

/**
 * Strings defines a JSON-LD string array format which is marshalled to a single string if the array length is 1.
 */
export interface DidStrings {
  values?: string[];
}

export interface DidVerificationMethod {
  id?: string;
  type?: string;
  controller?: string;
  public_key_base58?: string;
}

export interface DidVerificationRelationship {
  verification_method_id?: string;
  verification_method?: DidVerificationMethod;
}

export interface ProtobufAny {
  "@type"?: string;
}

export interface RpcStatus {
  /** @format int32 */
  code?: number;
  message?: string;
  details?: ProtobufAny[];
}

import axios, { AxiosInstance, AxiosRequestConfig, AxiosResponse, ResponseType } from "axios";

export type QueryParamsType = Record<string | number, any>;

export interface FullRequestParams extends Omit<AxiosRequestConfig, "data" | "params" | "url" | "responseType"> {
  /** set parameter to `true` for call `securityWorker` for this request */
  secure?: boolean;
  /** request path */
  path: string;
  /** content type of request body */
  type?: ContentType;
  /** query params */
  query?: QueryParamsType;
  /** format of response (i.e. response.json() -> format: "json") */
  format?: ResponseType;
  /** request body */
  body?: unknown;
}

export type RequestParams = Omit<FullRequestParams, "body" | "method" | "query" | "path">;

export interface ApiConfig<SecurityDataType = unknown> extends Omit<AxiosRequestConfig, "data" | "cancelToken"> {
  securityWorker?: (
    securityData: SecurityDataType | null,
  ) => Promise<AxiosRequestConfig | void> | AxiosRequestConfig | void;
  secure?: boolean;
  format?: ResponseType;
}

export enum ContentType {
  Json = "application/json",
  FormData = "multipart/form-data",
  UrlEncoded = "application/x-www-form-urlencoded",
}

export class HttpClient<SecurityDataType = unknown> {
  public instance: AxiosInstance;
  private securityData: SecurityDataType | null = null;
  private securityWorker?: ApiConfig<SecurityDataType>["securityWorker"];
  private secure?: boolean;
  private format?: ResponseType;

  constructor({ securityWorker, secure, format, ...axiosConfig }: ApiConfig<SecurityDataType> = {}) {
    this.instance = axios.create({ ...axiosConfig, baseURL: axiosConfig.baseURL || "" });
    this.secure = secure;
    this.format = format;
    this.securityWorker = securityWorker;
  }

  public setSecurityData = (data: SecurityDataType | null) => {
    this.securityData = data;
  };

  private mergeRequestParams(params1: AxiosRequestConfig, params2?: AxiosRequestConfig): AxiosRequestConfig {
    return {
      ...this.instance.defaults,
      ...params1,
      ...(params2 || {}),
      headers: {
        ...(this.instance.defaults.headers || {}),
        ...(params1.headers || {}),
        ...((params2 && params2.headers) || {}),
      },
    };
  }

  private createFormData(input: Record<string, unknown>): FormData {
    return Object.keys(input || {}).reduce((formData, key) => {
      const property = input[key];
      formData.append(
        key,
        property instanceof Blob
          ? property
          : typeof property === "object" && property !== null
          ? JSON.stringify(property)
          : `${property}`,
      );
      return formData;
    }, new FormData());
  }

  public request = async <T = any, _E = any>({
    secure,
    path,
    type,
    query,
    format,
    body,
    ...params
  }: FullRequestParams): Promise<AxiosResponse<T>> => {
    const secureParams =
      ((typeof secure === "boolean" ? secure : this.secure) &&
        this.securityWorker &&
        (await this.securityWorker(this.securityData))) ||
      {};
    const requestParams = this.mergeRequestParams(params, secureParams);
    const responseFormat = (format && this.format) || void 0;

    if (type === ContentType.FormData && body && body !== null && typeof body === "object") {
      requestParams.headers.common = { Accept: "*/*" };
      requestParams.headers.post = {};
      requestParams.headers.put = {};

      body = this.createFormData(body as Record<string, unknown>);
    }

    return this.instance.request({
      ...requestParams,
      headers: {
        ...(type && type !== ContentType.FormData ? { "Content-Type": type } : {}),
        ...(requestParams.headers || {}),
      },
      params: query,
      responseType: responseFormat,
      data: body,
      url: path,
    });
  };
}

/**
 * @title mdc/did/did_document.proto
 * @version version not set
 */
export class Api<SecurityDataType extends unknown> extends HttpClient<SecurityDataType> {
  /**
   * No description
   *
   * @tags Query
   * @name QueryDid
   * @summary Parameters queries the parameters of the module.
   * @request GET:/mdc/did/{did_base64}
   */
  queryDid = (didBase64: string, params: RequestParams = {}) =>
    this.request<DidQueryDIDResponse, RpcStatus>({
      path: `/mdc/did/${didBase64}`,
      method: "GET",
      format: "json",
      ...params,
    });
}
