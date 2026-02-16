# Currency Converter API - Dart/Flutter Client

Currency Converter is a simple tool for converting currency rates. It returns the converted currency rate based on the amount and currency provided.

[![pub package](https://img.shields.io/pub/v/apiverve_currencyconverter.svg)](https://pub.dev/packages/apiverve_currencyconverter)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

This is the Dart/Flutter client for the [Currency Converter API](https://currencyconverter.apiverve.com?utm_source=dart&utm_medium=readme).

## Installation

Add this to your `pubspec.yaml`:

```yaml
dependencies:
  apiverve_currencyconverter: ^1.1.14
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
      'to': 'EUR'
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
    "convertedValue": 0.95466
  }
}
```

## API Reference

- **API Home:** [Currency Converter API](https://currencyconverter.apiverve.com?utm_source=dart&utm_medium=readme)
- **Documentation:** [docs.apiverve.com/ref/currencyconverter](https://docs.apiverve.com/ref/currencyconverter?utm_source=dart&utm_medium=readme)

## Authentication

All requests require an API key. Get yours at [apiverve.com](https://apiverve.com?utm_source=dart&utm_medium=readme).

## License

MIT License - see [LICENSE](LICENSE) for details.

---

Built with Dart for [APIVerve](https://apiverve.com?utm_source=dart&utm_medium=readme)
