# Currency Converter API - Dart/Flutter Client

Currency Converter calculates foreign exchange conversions across 170+ currencies using real-time rates. Pass an amount with source and target currency codes to receive the converted total, exchange rate, and 24-hour trend direction.

[![pub package](https://img.shields.io/pub/v/apiverve_currencyconverter.svg)](https://pub.dev/packages/apiverve_currencyconverter)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

This is the Dart/Flutter client for the [Currency Converter API](https://apiverve.com/marketplace/currencyconverter?utm_source=dart&utm_medium=referral&utm_content=readme).

## Installation

Add this to your `pubspec.yaml`:

```yaml
dependencies:
  apiverve_currencyconverter: ^1.2.3
```

Then run:

```bash
dart pub get
# or for Flutter
flutter pub get
```

## Usage

```dart
import 'package:apiverve_currencyconverter/apiverve_currencyconverter.dart';

void main() async {
  final client = CurrencyconverterClient('YOUR_API_KEY');

  try {
    final response = await client.execute({
      'value': 1,
      'from': 'USD',
      'to': 'EUR',
      'date': '2025-06-02'
    });

    print('Status: ${response.status}');
    print('Data: ${response.data}');
  } catch (e) {
    print('Error: $e');
  }
}
```

## Response

```json
{
  "status": "ok",
  "error": null,
  "data": {
    "from": "USD",
    "to": "EUR",
    "value": 1,
    "convertedValue": 0.866496,
    "rate": 0.866496,
    "change24h": 0.000493,
    "change24hPct": 0.0569,
    "changeDirection": "up",
    "high24h": 0.866914,
    "low24h": 0.865725,
    "lastUpdated": "2026-09-15T21:00:17.674Z"
  }
}
```

## API Reference

- **API Home:** [Currency Converter API](https://apiverve.com/marketplace/currencyconverter?utm_source=dart&utm_medium=referral&utm_content=readme)
- **Documentation:** [docs.apiverve.com/ref/currencyconverter](https://docs.apiverve.com/ref/currencyconverter?utm_source=dart&utm_medium=referral&utm_content=readme)

## Authentication

All requests require an API key. Get yours at [apiverve.com](https://apiverve.com?utm_source=dart&utm_medium=referral&utm_content=readme).

## License

MIT License - see [LICENSE](LICENSE) for details.

---

Built with Dart for [APIVerve](https://apiverve.com?utm_source=dart&utm_medium=referral&utm_content=readme)
