const apiURL = import.meta.env.VITE_API_COSMOS ?? "https://explorermdc.duckdns.org";
const rpcURL = import.meta.env.VITE_WS_TENDERMINT ?? "https://rpcmdc.duckdns.org";
const prefix = import.meta.env.VITE_ADDRESS_PREFIX ?? "mdc";

export const env = {
  apiURL,
  rpcURL,
  prefix,
};
