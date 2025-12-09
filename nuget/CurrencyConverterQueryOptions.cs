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
        /// Example: 1
        /// </summary>
        [JsonProperty("value")]
        public string Value { get; set; }

        /// <summary>
        /// The currency code to convert from
        /// Example: USD
        /// </summary>
        [JsonProperty("from")]
        public string From { get; set; }

        /// <summary>
        /// The currency code to convert to
        /// Example: EUR
        /// </summary>
        [JsonProperty("to")]
        public string To { get; set; }
    }
}
