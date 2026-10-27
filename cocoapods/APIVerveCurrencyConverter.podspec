Pod::Spec.new do |s|
  s.name             = 'APIVerveCurrencyConverter'
  s.version          = '1.2.3'
  s.summary          = 'Currency Converter calculates foreign exchange conversions across 170+ currencies using real-time rates.'
  s.description      = <<-'DESC'
Currency Converter calculates foreign exchange conversions across 170+ currencies using real-time rates. Pass an amount with source and target currency codes to receive the converted total, exchange rate, and 24-hour trend direction.

This iOS/macOS SDK provides a convenient way to access the Currency Converter from APIVerve.
Supports both callback-based and async/await patterns.
                       DESC

  s.homepage         = 'https://apiverve.com/marketplace/currencyconverter?utm_source=cocoapods&utm_medium=referral&utm_content=homepage'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'APIVerve' => 'hello@apiverve.com' }
  # The SDK repo holds every language; the pod lives under cocoapods/ with its own tag.
  s.source           = { :git => 'https://github.com/apiverve/currencyconverter-api.git', :tag => "cocoapods/v#{s.version}" }

  s.ios.deployment_target = '15.0'
  s.osx.deployment_target = '12.0'

  s.swift_version = '5.0'

  s.source_files = 'cocoapods/Sources/APIVerveCurrencyConverter/**/*.swift'

  s.frameworks = 'Foundation'

  # APIResponse, APIVerveError and the request plumbing, shared by every APIVerve pod.
  s.dependency 'APIVerveCore', '~> 1.2'
end
