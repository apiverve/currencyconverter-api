declare module '@apiverve/currencyconverter' {
  export interface currencyconverterOptions {
    api_key: string;
    secure?: boolean;
  }

  export interface currencyconverterResponse {
    status: string;
    error: string | null;
    data: CurrencyConverterData;
    code?: number;
  }


  interface CurrencyConverterData {
      from:           string;
      to:             string;
      value:          number;
      convertedValue: number;
  }

  export default class currencyconverterWrapper {
    constructor(options: currencyconverterOptions);

    execute(callback: (error: any, data: currencyconverterResponse | null) => void): Promise<currencyconverterResponse>;
    execute(query: Record<string, any>, callback: (error: any, data: currencyconverterResponse | null) => void): Promise<currencyconverterResponse>;
    execute(query?: Record<string, any>): Promise<currencyconverterResponse>;
  }
}
