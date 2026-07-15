declare module '@apiverve/currencyconverter' {
  export interface currencyconverterOptions {
    api_key: string;
    secure?: boolean;
  }

  /**
   * Describes fields the current plan does not unlock. Locked fields arrive as null
   * in `data`; `locked_fields` names them, using dot paths for nested fields.
   * Absent when the plan unlocks everything.
   */
  export interface PremiumInfo {
    message: string;
    upgrade_url: string;
    locked_fields: string[];
  }

  export interface currencyconverterResponse {
    status: string;
    error: string | null;
    data: CurrencyConverterData;
    code?: number;
    premium?: PremiumInfo;
  }


  interface CurrencyConverterData {
      from:            null | string;
      to:              null | string;
      value:           number | null;
      convertedValue:  number | null;
      rate:            number | null;
      change24H:       number | null;
      change24HPct:    number | null;
      changeDirection: null | string;
      high24H:         number | null;
      low24H:          number | null;
  }

  export default class currencyconverterWrapper {
    constructor(options: currencyconverterOptions);

    execute(callback: (error: any, data: currencyconverterResponse | null) => void): Promise<currencyconverterResponse>;
    execute(query: Record<string, any>, callback: (error: any, data: currencyconverterResponse | null) => void): Promise<currencyconverterResponse>;
    execute(query?: Record<string, any>): Promise<currencyconverterResponse>;
  }
}
