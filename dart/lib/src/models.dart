/// Response models for the Currency Converter API.

/// API Response wrapper.
class CurrencyconverterResponse {
  final String status;
  final dynamic error;
  final CurrencyconverterData? data;

  /// Set only when the current plan locks one or more fields; null otherwise.
  final PremiumInfo? premium;

  CurrencyconverterResponse({
    required this.status,
    this.error,
    this.data,
    this.premium,
  });

  factory CurrencyconverterResponse.fromJson(Map<String, dynamic> json) => CurrencyconverterResponse(
    status: json['status'] as String? ?? '',
    error: json['error'],
    data: json['data'] != null ? CurrencyconverterData.fromJson(json['data']) : null,
    premium: json['premium'] != null ? PremiumInfo.fromJson(json['premium']) : null,
  );

  Map<String, dynamic> toJson() => {
    'status': status,
    if (error != null) 'error': error,
    if (data != null) 'data': data,
    if (premium != null) 'premium': premium!.toJson(),
  };
}

/// Describes fields the current plan does not unlock. Locked fields arrive as null
/// in [data], and [lockedFields] names them (nested ones use dot paths).
class PremiumInfo {
  final String? message;
  final String? upgradeUrl;
  final List<String>? lockedFields;

  PremiumInfo({this.message, this.upgradeUrl, this.lockedFields});

  factory PremiumInfo.fromJson(Map<String, dynamic> json) => PremiumInfo(
    message: json['message'] as String?,
    upgradeUrl: json['upgrade_url'] as String?,
    lockedFields: (json['locked_fields'] as List?)?.map((e) => e.toString()).toList(),
  );

  Map<String, dynamic> toJson() => {
    if (message != null) 'message': message,
    if (upgradeUrl != null) 'upgrade_url': upgradeUrl,
    if (lockedFields != null) 'locked_fields': lockedFields,
  };
}

/// Response data for the Currency Converter API.

class CurrencyconverterData {
  String? from;
  String? to;
  num? value;
  num? convertedValue;
  num? rate;
  num? change24h;
  num? change24hPct;
  String? changeDirection;
  num? high24h;
  num? low24h;
  String? date;
  String? lastUpdated;
  String? fromName;
  String? toName;
  num? change1d;
  num? change7d;
  num? change30d;
  num? change1y;
  num? high30d;
  num? low30d;
  num? average30d;
  num? volatility30d;
  List<CurrencyconverterDataHistoryItem>? history;
  List<CurrencyconverterDataHourlyItem>? hourly;

  CurrencyconverterData({
    this.from,
    this.to,
    this.value,
    this.convertedValue,
    this.rate,
    this.change24h,
    this.change24hPct,
    this.changeDirection,
    this.high24h,
    this.low24h,
    this.date,
    this.lastUpdated,
    this.fromName,
    this.toName,
    this.change1d,
    this.change7d,
    this.change30d,
    this.change1y,
    this.high30d,
    this.low30d,
    this.average30d,
    this.volatility30d,
    this.history,
    this.hourly,
  });

  factory CurrencyconverterData.fromJson(Map<String, dynamic> json) => CurrencyconverterData(
      from: json['from'],
      to: json['to'],
      value: json['value'],
      convertedValue: json['convertedValue'],
      rate: json['rate'],
      change24h: json['change24h'],
      change24hPct: json['change24hPct'],
      changeDirection: json['changeDirection'],
      high24h: json['high24h'],
      low24h: json['low24h'],
      date: json['date'],
      lastUpdated: json['lastUpdated'],
      fromName: json['fromName'],
      toName: json['toName'],
      change1d: json['change1d'],
      change7d: json['change7d'],
      change30d: json['change30d'],
      change1y: json['change1y'],
      high30d: json['high30d'],
      low30d: json['low30d'],
      average30d: json['average30d'],
      volatility30d: json['volatility30d'],
      history: (json['history'] as List?)?.map((e) => CurrencyconverterDataHistoryItem.fromJson(e)).toList(),
      hourly: (json['hourly'] as List?)?.map((e) => CurrencyconverterDataHourlyItem.fromJson(e)).toList(),
    );
}

class CurrencyconverterDataHistoryItem {
  String? date;
  num? rate;

  CurrencyconverterDataHistoryItem({
    this.date,
    this.rate,
  });

  factory CurrencyconverterDataHistoryItem.fromJson(Map<String, dynamic> json) => CurrencyconverterDataHistoryItem(
      date: json['date'],
      rate: json['rate'],
    );
}

class CurrencyconverterDataHourlyItem {
  num? hour;
  num? rate;
  String? timestamp;

  CurrencyconverterDataHourlyItem({
    this.hour,
    this.rate,
    this.timestamp,
  });

  factory CurrencyconverterDataHourlyItem.fromJson(Map<String, dynamic> json) => CurrencyconverterDataHourlyItem(
      hour: json['hour'],
      rate: json['rate'],
      timestamp: json['timestamp'],
    );
}

class CurrencyconverterRequest {
  double value;
  String from;
  String to;
  String? date;
  bool? history;
  bool? hourly;

  CurrencyconverterRequest({
    required this.value,
    required this.from,
    required this.to,
    this.date,
    this.history,
    this.hourly,
  });

  Map<String, dynamic> toJson() => {
      'value': value,
      'from': from,
      'to': to,
      if (date != null) 'date': date,
      if (history != null) 'history': history,
      if (hourly != null) 'hourly': hourly,
    };
}
