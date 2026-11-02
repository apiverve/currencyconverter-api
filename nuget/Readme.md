Currency Converter API
============

Currency Converter calculates foreign exchange conversions across 170+ currencies using real-time rates. Pass an amount with source and target currency codes to receive the converted total, exchange rate, both currency names and 24-hour trend direction; paid plans add 1-day to 1-year changes, 30-day stats, and hourly and 30-day history.


[![NuGet version](https://img.shields.io/nuget/v/APIVerve.API.CurrencyConverter.svg)](https://www.nuget.org/packages/APIVerve.API.CurrencyConverter)

This is a .NET wrapper for the [Currency Converter API](https://apiverve.com/marketplace/currencyconverter?utm_source=nuget&utm_medium=referral&utm_content=readme)

---

## Installation

Using the .NET CLI:
```
dotnet add package APIVerve.API.CurrencyConverter
```

Using the Package Manager:
```
nuget install APIVerve.API.CurrencyConverter
```

Using the Package Manager Console:
```
Install-Package APIVerve.API.CurrencyConverter
```

From within Visual Studio:

1. Open the Solution Explorer
2. Right-click on a project within your solution
3. Click on Manage NuGet Packages
4. Click on the Browse tab and search for "APIVerve.API.CurrencyConverter"
5. Click on the APIVerve.API.CurrencyConverter package, select the appropriate version in the right-tab and click Install

---

## Configuration

Before using the Currency Converter API client, you have to setup your account and obtain your API Key.
You can get it by signing up at [https://apiverve.com](https://apiverve.com?utm_source=nuget&utm_medium=referral&utm_content=readme)

---

## Quick Start

Here's a simple example to get you started quickly:

```csharp
using System;
using APIVerve.API.CurrencyConverter;

class Program
{
    static async Task Main(string[] args)
    {
        // Initialize the API client
        var apiClient = new CurrencyConverterAPIClient("[YOUR_API_KEY]");

        var queryOptions = new CurrencyConverterQueryOptions {
            Value = 1,
            From = "USD",
            To = "EUR",
            Date = "2025-06-02",
            History = true,
            Hourly = true
        };

        // Make the API call
        try
        {
            var response = await apiClient.ExecuteAsync(queryOptions);

            if (response.Error != null)
            {
                Console.WriteLine($"API Error: {response.Error}");
            }
            else
            {
                Console.WriteLine("Success!");
                // Access response data using the strongly-typed ResponseObj properties
                Console.WriteLine(Newtonsoft.Json.JsonConvert.SerializeObject(response, Newtonsoft.Json.Formatting.Indented));
            }
        }
        catch (Exception ex)
        {
            Console.WriteLine($"Exception: {ex.Message}");
        }
    }
}
```

---

## Usage

The Currency Converter API documentation is found here: [https://docs.apiverve.com/ref/currencyconverter](https://docs.apiverve.com/ref/currencyconverter?utm_source=nuget&utm_medium=referral&utm_content=readme).
You can find parameters, example responses, and status codes documented here.

### Setup

###### Authentication
Currency Converter API uses API Key-based authentication. When you create an instance of the API client, you can pass your API Key as a parameter.

```csharp
// Create an instance of the API client
var apiClient = new CurrencyConverterAPIClient("[YOUR_API_KEY]");
```

---

## Usage Examples

### Basic Usage (Async/Await Pattern - Recommended)

The modern async/await pattern provides the best performance and code readability:

```csharp
using System;
using System.Threading.Tasks;
using APIVerve.API.CurrencyConverter;

public class Example
{
    public static async Task Main(string[] args)
    {
        var apiClient = new CurrencyConverterAPIClient("[YOUR_API_KEY]");

        var queryOptions = new CurrencyConverterQueryOptions {
            Value = 1,
            From = "USD",
            To = "EUR",
            Date = "2025-06-02",
            History = true,
            Hourly = true
        };

        var response = await apiClient.ExecuteAsync(queryOptions);

        if (response.Error != null)
        {
            Console.WriteLine($"Error: {response.Error}");
        }
        else
        {
            Console.WriteLine(Newtonsoft.Json.JsonConvert.SerializeObject(response, Newtonsoft.Json.Formatting.Indented));
        }
    }
}
```

### Synchronous Usage

If you need to use synchronous code, you can use the `Execute` method:

```csharp
using System;
using APIVerve.API.CurrencyConverter;

public class Example
{
    public static void Main(string[] args)
    {
        var apiClient = new CurrencyConverterAPIClient("[YOUR_API_KEY]");

        var queryOptions = new CurrencyConverterQueryOptions {
            Value = 1,
            From = "USD",
            To = "EUR",
            Date = "2025-06-02",
            History = true,
            Hourly = true
        };

        var response = apiClient.Execute(queryOptions);

        if (response.Error != null)
        {
            Console.WriteLine($"Error: {response.Error}");
        }
        else
        {
            Console.WriteLine(Newtonsoft.Json.JsonConvert.SerializeObject(response, Newtonsoft.Json.Formatting.Indented));
        }
    }
}
```

---

## Error Handling

The API client provides comprehensive error handling. Here are some examples:

### Handling API Errors

```csharp
using System;
using System.Threading.Tasks;
using APIVerve.API.CurrencyConverter;

public class Example
{
    public static async Task Main(string[] args)
    {
        var apiClient = new CurrencyConverterAPIClient("[YOUR_API_KEY]");

        var queryOptions = new CurrencyConverterQueryOptions {
            Value = 1,
            From = "USD",
            To = "EUR",
            Date = "2025-06-02",
            History = true,
            Hourly = true
        };

        try
        {
            var response = await apiClient.ExecuteAsync(queryOptions);

            // Check for API-level errors
            if (response.Error != null)
            {
                Console.WriteLine($"API Error: {response.Error}");
                Console.WriteLine($"Status: {response.Status}");
                return;
            }

            // Success - use the data
            Console.WriteLine("Request successful!");
            Console.WriteLine(Newtonsoft.Json.JsonConvert.SerializeObject(response, Newtonsoft.Json.Formatting.Indented));
        }
        catch (ArgumentException ex)
        {
            // Invalid API key or parameters
            Console.WriteLine($"Invalid argument: {ex.Message}");
        }
        catch (System.Net.Http.HttpRequestException ex)
        {
            // Network or HTTP errors
            Console.WriteLine($"Network error: {ex.Message}");
        }
        catch (Exception ex)
        {
            // Other errors
            Console.WriteLine($"Unexpected error: {ex.Message}");
        }
    }
}
```

### Comprehensive Error Handling with Retry Logic

```csharp
using System;
using System.Threading.Tasks;
using APIVerve.API.CurrencyConverter;

public class Example
{
    public static async Task Main(string[] args)
    {
        var apiClient = new CurrencyConverterAPIClient("[YOUR_API_KEY]");

        // Configure retry behavior (max 3 retries)
        apiClient.SetMaxRetries(3);        // Retry up to 3 times (default: 0, max: 3)
        apiClient.SetRetryDelay(2000);     // Wait 2 seconds between retries

        var queryOptions = new CurrencyConverterQueryOptions {
            Value = 1,
            From = "USD",
            To = "EUR",
            Date = "2025-06-02",
            History = true,
            Hourly = true
        };

        try
        {
            var response = await apiClient.ExecuteAsync(queryOptions);

            if (response.Error != null)
            {
                Console.WriteLine($"API Error: {response.Error}");
            }
            else
            {
                Console.WriteLine("Success!");
                Console.WriteLine(Newtonsoft.Json.JsonConvert.SerializeObject(response, Newtonsoft.Json.Formatting.Indented));
            }
        }
        catch (Exception ex)
        {
            Console.WriteLine($"Failed after retries: {ex.Message}");
        }
    }
}
```

---

## Advanced Features

### Custom Headers

Add custom headers to your requests:

```csharp
var apiClient = new CurrencyConverterAPIClient("[YOUR_API_KEY]");

// Add custom headers
apiClient.AddCustomHeader("X-Custom-Header", "custom-value");
apiClient.AddCustomHeader("X-Request-ID", Guid.NewGuid().ToString());

var queryOptions = new CurrencyConverterQueryOptions {
    Value = 1,
    From = "USD",
    To = "EUR",
    Date = "2025-06-02",
    History = true,
    Hourly = true
};

var response = await apiClient.ExecuteAsync(queryOptions);

// Remove a header
apiClient.RemoveCustomHeader("X-Custom-Header");

// Clear all custom headers
apiClient.ClearCustomHeaders();
```

### Request Logging

Enable logging for debugging:

```csharp
var apiClient = new CurrencyConverterAPIClient("[YOUR_API_KEY]", isDebug: true);

// Or use a custom logger
apiClient.SetLogger(message =>
{
    Console.WriteLine($"[LOG] {DateTime.Now:yyyy-MM-dd HH:mm:ss} - {message}");
});

var queryOptions = new CurrencyConverterQueryOptions {
    Value = 1,
    From = "USD",
    To = "EUR",
    Date = "2025-06-02",
    History = true,
    Hourly = true
};

var response = await apiClient.ExecuteAsync(queryOptions);
```

### Retry Configuration

Customize retry behavior for failed requests:

```csharp
var apiClient = new CurrencyConverterAPIClient("[YOUR_API_KEY]");

// Set retry options
apiClient.SetMaxRetries(3);           // Retry up to 3 times (default: 0, max: 3)
apiClient.SetRetryDelay(1500);        // Wait 1.5 seconds between retries (default: 1000ms)

var queryOptions = new CurrencyConverterQueryOptions {
    Value = 1,
    From = "USD",
    To = "EUR",
    Date = "2025-06-02",
    History = true,
    Hourly = true
};

var response = await apiClient.ExecuteAsync(queryOptions);
```

### Dispose Pattern

The API client implements `IDisposable` for proper resource cleanup:

```csharp
var queryOptions = new CurrencyConverterQueryOptions {
    Value = 1,
    From = "USD",
    To = "EUR",
    Date = "2025-06-02",
    History = true,
    Hourly = true
};

using (var apiClient = new CurrencyConverterAPIClient("[YOUR_API_KEY]"))
{
    var response = await apiClient.ExecuteAsync(queryOptions);
    Console.WriteLine(Newtonsoft.Json.JsonConvert.SerializeObject(response, Newtonsoft.Json.Formatting.Indented));
}
// HttpClient is automatically disposed here
```

---

## Example Response

```json
{
  "status": "ok",
  "error": null,
  "data": {
    "from": "USD",
    "to": "EUR",
    "value": 100,
    "convertedValue": 89.5099,
    "rate": 0.895099,
    "change24h": 0.003587,
    "change24hPct": 0.4024,
    "changeDirection": "up",
    "high24h": 0.895323,
    "low24h": 0.8911,
    "date": "2026-10-27",
    "lastUpdated": "2026-10-27T17:41:09.810Z",
    "fromName": "US Dollar",
    "toName": "Euro",
    "change1d": 0.4467,
    "change7d": 0.5739,
    "change30d": 1.9699,
    "change1y": 4.1682,
    "high30d": 0.895099,
    "low30d": 0.878037,
    "average30d": 0.889911,
    "volatility30d": 0.2427,
    "history": [
      {
        "date": "2026-09-28",
        "rate": 0.878037
      },
      {
        "date": "2026-09-29",
        "rate": 0.880226
      },
      {
        "date": "2026-09-30",
        "rate": 0.882434
      },
      {
        "date": "2026-10-01",
        "rate": 0.883652
      },
      {
        "date": "2026-10-02",
        "rate": 0.888626
      },
      {
        "date": "2026-10-03",
        "rate": 0.888626
      },
      {
        "date": "2026-10-04",
        "rate": 0.888246
      },
      {
        "date": "2026-10-05",
        "rate": 0.894174
      },
      {
        "date": "2026-10-06",
        "rate": 0.891674
      },
      {
        "date": "2026-10-07",
        "rate": 0.890419
      },
      {
        "date": "2026-10-08",
        "rate": 0.892463
      },
      {
        "date": "2026-10-09",
        "rate": 0.889796
      },
      {
        "date": "2026-10-10",
        "rate": 0.892716
      },
      {
        "date": "2026-10-11",
        "rate": 0.892571
      },
      {
        "date": "2026-10-12",
        "rate": 0.892822
      },
      {
        "date": "2026-10-13",
        "rate": 0.894845
      },
      {
        "date": "2026-10-14",
        "rate": 0.891987
      },
      {
        "date": "2026-10-15",
        "rate": 0.890861
      },
      {
        "date": "2026-10-16",
        "rate": 0.88987
      },
      {
        "date": "2026-10-17",
        "rate": 0.889757
      },
      {
        "date": "2026-10-18",
        "rate": 0.889761
      },
      {
        "date": "2026-10-19",
        "rate": 0.890515
      },
      {
        "date": "2026-10-20",
        "rate": 0.889991
      },
      {
        "date": "2026-10-21",
        "rate": 0.890629
      },
      {
        "date": "2026-10-22",
        "rate": 0.889437
      },
      {
        "date": "2026-10-23",
        "rate": 0.891773
      },
      {
        "date": "2026-10-24",
        "rate": 0.892532
      },
      {
        "date": "2026-10-25",
        "rate": 0.892668
      },
      {
        "date": "2026-10-26",
        "rate": 0.891118
      },
      {
        "date": "2026-10-27",
        "rate": 0.895099
      }
    ],
    "hourly": [
      {
        "hour": 18,
        "rate": 0.891512,
        "timestamp": "2026-10-26T18:41:09.810Z"
      },
      {
        "hour": 19,
        "rate": 0.891173,
        "timestamp": "2026-10-26T19:41:09.810Z"
      },
      {
        "hour": 20,
        "rate": 0.8911,
        "timestamp": "2026-10-26T20:41:09.810Z"
      },
      {
        "hour": 21,
        "rate": 0.891849,
        "timestamp": "2026-10-26T21:41:09.810Z"
      },
      {
        "hour": 22,
        "rate": 0.89212,
        "timestamp": "2026-10-26T22:41:09.810Z"
      },
      {
        "hour": 23,
        "rate": 0.891692,
        "timestamp": "2026-10-26T23:41:09.810Z"
      },
      {
        "hour": 0,
        "rate": 0.891922,
        "timestamp": "2026-10-27T00:41:09.810Z"
      },
      {
        "hour": 1,
        "rate": 0.892681,
        "timestamp": "2026-10-27T01:41:09.810Z"
      },
      {
        "hour": 2,
        "rate": 0.892646,
        "timestamp": "2026-10-27T02:41:09.810Z"
      },
      {
        "hour": 3,
        "rate": 0.892287,
        "timestamp": "2026-10-27T03:41:09.810Z"
      },
      {
        "hour": 4,
        "rate": 0.892805,
        "timestamp": "2026-10-27T04:41:09.810Z"
      },
      {
        "hour": 5,
        "rate": 0.893422,
        "timestamp": "2026-10-27T05:41:09.810Z"
      },
      {
        "hour": 6,
        "rate": 0.893135,
        "timestamp": "2026-10-27T06:41:09.810Z"
      },
      {
        "hour": 7,
        "rate": 0.892984,
        "timestamp": "2026-10-27T07:41:09.810Z"
      },
      {
        "hour": 8,
        "rate": 0.8937,
        "timestamp": "2026-10-27T08:41:09.810Z"
      },
      {
        "hour": 9,
        "rate": 0.894058,
        "timestamp": "2026-10-27T09:41:09.810Z"
      },
      {
        "hour": 10,
        "rate": 0.89364,
        "timestamp": "2026-10-27T10:41:09.810Z"
      },
      {
        "hour": 11,
        "rate": 0.893781,
        "timestamp": "2026-10-27T11:41:09.810Z"
      },
      {
        "hour": 12,
        "rate": 0.894553,
        "timestamp": "2026-10-27T12:41:09.810Z"
      },
      {
        "hour": 13,
        "rate": 0.894604,
        "timestamp": "2026-10-27T13:41:09.810Z"
      },
      {
        "hour": 14,
        "rate": 0.894209,
        "timestamp": "2026-10-27T14:41:09.810Z"
      },
      {
        "hour": 15,
        "rate": 0.894651,
        "timestamp": "2026-10-27T15:41:09.810Z"
      },
      {
        "hour": 16,
        "rate": 0.895323,
        "timestamp": "2026-10-27T16:41:09.810Z"
      },
      {
        "hour": 17,
        "rate": 0.895099,
        "timestamp": "2026-10-27T17:41:09.810Z"
      }
    ]
  }
}
```

---

## Customer Support

Need any assistance? [Get in touch with Customer Support](https://apiverve.com/contact?utm_source=nuget&utm_medium=referral&utm_content=readme).

---

## Updates
Stay up to date by following [@apiverveHQ](https://twitter.com/apiverveHQ) on Twitter.

---

## Legal

All usage of the APIVerve website, API, and services is subject to the [APIVerve Terms of Service](https://apiverve.com/terms?utm_source=nuget&utm_medium=referral&utm_content=readme) and all legal documents and agreements.

---

## License
Licensed under the MIT License (MIT)

Copyright (&copy;) 2026 APIVerve, and EvlarSoft LLC

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
