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
    }
}
