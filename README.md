# [Currency Converter API](https://apiverve.com/marketplace/currencyconverter?utm_source&#x3D;github&amp;utm_medium&#x3D;referral&amp;utm_content&#x3D;readme)

Currency Converter calculates foreign exchange conversions across 170+ currencies using real-time rates. Pass an amount with source and target currency codes to receive the converted total, exchange rate, both currency names and 24-hour trend direction; paid plans add 1-day to 1-year changes, 30-day stats, and hourly and 30-day history.

The Currency Converter API provides a simple, reliable way to integrate currency converter functionality into your applications. Built for developers who need production-ready currency converter capabilities without the complexity of building from scratch.

**[View API Details →](https://apiverve.com/marketplace/currencyconverter?utm_source&#x3D;github&amp;utm_medium&#x3D;referral&amp;utm_content&#x3D;readme)**

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![API Status](https://img.shields.io/badge/Status-Active-green.svg)](https://apiverve.com/marketplace/currencyconverter?utm_source&#x3D;github&amp;utm_medium&#x3D;referral&amp;utm_content&#x3D;readme)
[![Method](https://img.shields.io/badge/Method-GET-blue.svg)](#)
[![Platform](https://img.shields.io/badge/Platform-Multi--Platform-orange.svg)](#installation)

**Available on:**
[![npm](https://img.shields.io/badge/npm-CB3837?style=flat&logo=npm&logoColor=white)](https://www.npmjs.com/package/@apiverve/currencyconverter)
[![NuGet](https://img.shields.io/badge/NuGet-004880?style=flat&logo=nuget&logoColor=white)](https://www.nuget.org/packages/APIVerve.API.CurrencyConverter)
[![PyPI](https://img.shields.io/badge/PyPI-3776AB?style=flat&logo=python&logoColor=white)](https://pypi.org/project/apiverve-currencyconverter/)
[![RubyGems](https://img.shields.io/badge/RubyGems-E9573F?style=flat&logo=rubygems&logoColor=white)](https://rubygems.org/gems/apiverve_currencyconverter)
[![Packagist](https://img.shields.io/badge/Packagist-F28D1A?style=flat&logo=packagist&logoColor=white)](https://packagist.org/packages/apiverve/currencyconverter)
[![Go](https://img.shields.io/badge/Go-00ADD8?style=flat&logo=go&logoColor=white)](#-go)
[![Dart](https://img.shields.io/badge/Dart-0175C2?style=flat&logo=dart&logoColor=white)](https://pub.dev/packages/apiverve_currencyconverter)
[![JitPack](https://img.shields.io/badge/JitPack-2E7D32?style=flat&logo=android&logoColor=white)](#-android-jitpack)

---

## Quick Start

### Using JavaScript

```javascript
async function callCurrencyConverterAPI() {
    try {
        const params = new URLSearchParams({
            value: 1,
            from: 'USD',
            to: 'EUR'
        });

        const response = await fetch(`https://api.apiverve.com/v1/currencyconverter?${params}`, {
            method: 'GET',
            headers: {
                'x-api-key': 'YOUR_API_KEY_HERE'
            }
        });

        const data = await response.json();
        console.log(data);
    } catch (error) {
        console.error('Error:', error);
    }
}

callCurrencyConverterAPI();
```

### Using cURL

```bash
curl -X GET "https://api.apiverve.com/v1/currencyconverter?value=1&from=USD&to=EUR" \
  -H "x-api-key: YOUR_API_KEY_HERE"
```

**Get your API key:** [https://apiverve.com](https://apiverve.com)

**📁 For more examples, see the [examples folder](./examples/)**

---

## Installation

Choose your preferred programming language:

### 📦 NPM (JavaScript/Node.js)

```bash
npm install @apiverve/currencyconverter
```

[**View NPM Package →**](https://www.npmjs.com/package/@apiverve/currencyconverter) | [**Package Code →**](./npm/)

---

### 🔷 NuGet (.NET/C#)

```bash
dotnet add package APIVerve.API.CurrencyConverter
```

[**View NuGet Package →**](https://www.nuget.org/packages/APIVerve.API.CurrencyConverter) | [**Package Code →**](./nuget/)

---

### 🐍 Python (PyPI)

```bash
pip install apiverve-currencyconverter
```

[**View PyPI Package →**](https://pypi.org/project/apiverve-currencyconverter/) | [**Package Code →**](./python/)

---

### 💎 Ruby (RubyGems)

```bash
gem install apiverve_currencyconverter
```

[**View RubyGems Package →**](https://rubygems.org/gems/apiverve_currencyconverter) | [**Package Code →**](./ruby/)

---

### 🐘 PHP (Packagist)

```bash
composer require apiverve/currencyconverter
```

[**View Packagist Package →**](https://packagist.org/packages/apiverve/currencyconverter) | [**Package Code →**](./php/)

---

### 🎯 Dart (pub.dev)

```bash
dart pub add apiverve_currencyconverter
```

[**View pub.dev Package →**](https://pub.dev/packages/apiverve_currencyconverter) | [**Package Code →**](./dart/)

---

### 🤖 Android (JitPack)

```gradle
implementation 'com.github.apiverve:currencyconverter-api:1.0.0'
```

[**Package Code →**](./android/)

---

### 🐹 Go

```bash
go get github.com/apiverve/currencyconverter-api/go
```

[**Package Code →**](./go/)

---

## Why Use This API?

| Feature | Benefit |
|---------|---------|
| **Multi-language SDKs** | Native packages for JavaScript, Python, C#, Go, and Android |
| **Simple Integration** | Single API key authentication, consistent response format |
| **Production Ready** | 99.9% uptime SLA, served from 24 global regions |
| **Comprehensive Docs** | Full examples, OpenAPI spec, and dedicated support |

---

## Documentation

- 🏠 **API Home:** [Currency Converter API](https://apiverve.com/marketplace/currencyconverter?utm_source&#x3D;github&amp;utm_medium&#x3D;referral&amp;utm_content&#x3D;readme)
- 📚 **API Reference:** [docs.apiverve.com/ref/currencyconverter](https://docs.apiverve.com/ref/currencyconverter)
- 📖 **OpenAPI Spec:** [openapi.yaml](./openapi.yaml)
- 💡 **Examples:** [examples/](./examples/)

---

## What Can You Build?

The Currency Converter API is commonly used for:

- **Web Applications** - Add currency converter features to your frontend or backend
- **Mobile Apps** - Native SDKs for Android development
- **Automation** - Integrate with n8n, Zapier, or custom workflows
- **SaaS Products** - Enhance your product with currency converter capabilities
- **Data Pipelines** - Process and analyze data at scale

---

## API Reference

### Authentication
All requests require an API key in the header:
```
x-api-key: YOUR_API_KEY_HERE
```

Get your API key: [https://apiverve.com](https://apiverve.com)

### Response Format

Every APIVerve endpoint returns the same envelope — check `status`, then read `data`:

```json
{
  "status": "ok",
  "error": null,
  "data": { ... }
}
```

### Example Response

A real response from the Currency Converter API:

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

## Support & Community

- 🏠 **API Home**: [Currency Converter API](https://apiverve.com/marketplace/currencyconverter?utm_source&#x3D;github&amp;utm_medium&#x3D;referral&amp;utm_content&#x3D;readme)
- 💬 **Support**: [https://apiverve.com/contact](https://apiverve.com/contact)
- 🐛 **Issues**: [GitHub Issues](../../issues)
- 📖 **Documentation**: [https://docs.apiverve.com](https://docs.apiverve.com)
- 🌐 **Website**: [https://apiverve.com](https://apiverve.com)

---

## Contributing

We welcome contributions! Please see [CONTRIBUTING.md](CONTRIBUTING.md) for guidelines.

---

## Security

For security concerns, please review our [Security Policy](SECURITY.md).

---

## License

This project is licensed under the **MIT License** - see the [LICENSE](LICENSE) file for details.

---

## Acknowledgments

Built with ❤️ by [APIVerve](https://apiverve.com)

Copyright © 2026 APIVerve. All rights reserved.
