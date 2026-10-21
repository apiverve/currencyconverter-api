# Currency Converter API - PHP Package

Currency Converter calculates foreign exchange conversions across 170+ currencies using real-time rates. Pass an amount with source and target currency codes to receive the converted total, exchange rate, and 24-hour trend direction.

## Installation

Install via Composer:

```bash
composer require apiverve/currencyconverter
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```php
<?php

require_once 'vendor/autoload.php';

use APIVerve\Currencyconverter\Client;

// Initialize the client
$client = new Client('YOUR_API_KEY');

// Make a request
$response = $client->execute([
    'value' => 1,
    'from' => 'USD',
    'to' => 'EUR',
    'date' => '2025-06-02'
]);

// Print the response
print_r($response);
```


### Error Handling

```php
use APIVerve\Currencyconverter\Client;
use APIVerve\Currencyconverter\Exceptions\APIException;
use APIVerve\Currencyconverter\Exceptions\ValidationException;

try {
    $response = $client->execute(['value' => 1, 'from' => 'USD', 'to' => 'EUR', 'date' => '2025-06-02']);
    print_r($response['data']);
} catch (ValidationException $e) {
    echo "Validation error: " . implode(', ', $e->getErrors());
} catch (APIException $e) {
    echo "API error: " . $e->getMessage();
    echo "Status code: " . $e->getStatusCode();
}
```

### Debug Mode

```php
// Enable debug logging
$client = new Client(
    apiKey: 'YOUR_API_KEY',
    debug: true
);
```

## Example Response

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

## Requirements

- PHP 7.4 or higher
- Guzzle HTTP client

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/currencyconverter?utm_source=packagist&utm_medium=referral&utm_content=readme).

## Support

- Website: [https://apiverve.com/marketplace/currencyconverter?utm_source=php&utm_medium=referral&utm_content=readme](https://apiverve.com/marketplace/currencyconverter?utm_source=php&utm_medium=referral&utm_content=readme)
- Email: hello@apiverve.com

## License

This package is available under the [MIT License](LICENSE).
