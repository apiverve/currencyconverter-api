/// Response models for the Currency Converter API.

/// API Response wrapper.
class CurrencyconverterResponse {
  final String status;
  final dynamic error;
  final CurrencyconverterData? data;

  CurrencyconverterResponse({
    required this.status,
    this.error,
    this.data,
  });

  factory CurrencyconverterResponse.fromJson(Map<String, dynamic> json) => CurrencyconverterResponse(
    status: json['status'] as String? ?? '',
    error: json['error'],
    data: json['data'] != null ? CurrencyconverterData.fromJson(json['data']) : null,
  );

  Map<String, dynamic> toJson() => {
    'status': status,
    if (error != null) 'error': error,
    if (data != null) 'data': data,
  };
}

/// Response data for the Currency Converter API.

class CurrencyconverterData {
  String? from;
  String? to;
  int? value;
  double? convertedValue;

  CurrencyconverterData({
    this.from,
    this.to,
    this.value,
    this.convertedValue,
  });

  factory CurrencyconverterData.fromJson(Map<String, dynamic> json) => CurrencyconverterData(
      from: json['from'],
      to: json['to'],
      value: json['value'],
      convertedValue: json['convertedValue'],
    );
}

class CurrencyconverterRequest {
  double value;
  String from;
  String to;

  CurrencyconverterRequest({
    required this.value,
    required this.from,
    required this.to,
  });

  Map<String, dynamic> toJson() => {
      'value': value,
      'from': from,
      'to': to,
    };
}
