# Currency Converter API - PHP Package

Currency Converter is a simple tool for converting currency rates. It returns the converted currency rate based on the amount and currency provided.

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
    'to' => 'EUR'
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
    $response = $client->execute(['value' => 1, 'from' => 'USD', 'to' => 'EUR']);
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
    "convertedValue": 0.921456,
    "rate": 0.921456,
    "change24h": -0.002134,
    "change24hPct": -0.2312,
    "changeDirection": "down",
    "high24h": 0.924521,
    "low24h": 0.919823
  }
}
```

## Requirements

- PHP 7.4 or higher
- Guzzle HTTP client

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/currencyconverter?utm_source=packagist&utm_medium=readme).

## Support

- Website: [https://currencyconverter.apiverve.com?utm_source=php&utm_medium=readme](https://currencyconverter.apiverve.com?utm_source=php&utm_medium=readme)
- Email: hello@apiverve.com

## License

This package is available under the [MIT License](LICENSE).
