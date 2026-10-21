# Currency Converter API - Ruby Gem

Currency Converter calculates foreign exchange conversions across 170+ currencies using real-time rates. Pass an amount with source and target currency codes to receive the converted total, exchange rate, and 24-hour trend direction.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'apiverve_currencyconverter'
```

And then execute:

```bash
$ bundle install
```

Or install it yourself as:

```bash
$ gem install apiverve_currencyconverter
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```ruby
require 'apiverve_currencyconverter'

# Initialize the client
client = APIVerve::Currencyconverter::Client.new(api_key: "YOUR_API_KEY")

# Make a request
response = client.execute({
  value: 1,
  from: "USD",
  to: "EUR",
  date: "2025-06-02"
})

# Print the response
puts response
```


### Error Handling

```ruby
begin
  response = client.execute({ value: 1, from: "USD", to: "EUR", date: "2025-06-02" })
  puts response["data"]
rescue APIVerve::Currencyconverter::ValidationError => e
  puts "Validation error: #{e.errors.join(', ')}"
rescue APIVerve::Currencyconverter::APIError => e
  puts "API error: #{e.message}"
  puts "Status code: #{e.status_code}"
end
```

### Debug Mode

```ruby
# Enable debug logging
client = APIVerve::Currencyconverter::Client.new(
  api_key: "YOUR_API_KEY",
  debug: true
)
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

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/currencyconverter?utm_source=rubygems&utm_medium=referral&utm_content=readme).

## Support

- Website: [https://apiverve.com/marketplace/currencyconverter?utm_source=ruby&utm_medium=referral&utm_content=readme](https://apiverve.com/marketplace/currencyconverter?utm_source=ruby&utm_medium=referral&utm_content=readme)
- Email: hello@apiverve.com

## License

This gem is available under the [MIT License](LICENSE).
