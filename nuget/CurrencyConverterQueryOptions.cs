using System;
using System.Collections.Generic;
using System.Text;
using Newtonsoft.Json;

namespace APIVerve.API.CurrencyConverter
{
    /// <summary>
    /// Query options for the Currency Converter API
    /// </summary>
    public class CurrencyConverterQueryOptions
    {
        /// <summary>
        /// The amount to convert
        /// </summary>
        [JsonProperty("value")]
        public double Value { get; set; }

        /// <summary>
        /// The ISO 4217 currency code to convert from
        /// </summary>
        [JsonProperty("from")]
        public string From { get; set; }

        /// <summary>
        /// The ISO 4217 currency code to convert to
        /// </summary>
        [JsonProperty("to")]
        public string To { get; set; }

        /// <summary>
        /// Optional past date (YYYY-MM-DD) to use that day's closing rates instead of live rates. History runs from 1999-01-04 for about 30 major currencies and covers every supported currency from March 2024. A day with no rates, such as a weekend or holiday, uses the last close before it.
        /// </summary>
        [JsonProperty("date")]
        public string Date { get; set; }
    }
}
