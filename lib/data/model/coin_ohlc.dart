class CoinOhlc {
  final DateTime timestamp;
  final double open;
  final double high;
  final double low;
  final double close;
  CoinOhlc({
    required this.timestamp,
    required this.open,
    required this.high,
    required this.low,
    required this.close,
  });
  factory CoinOhlc.fromList(List<dynamic> data) {
    return CoinOhlc(
      timestamp: DateTime.fromMillisecondsSinceEpoch(data[0]),
      open: (data[1] as num).toDouble(),
      high: (data[2] as num).toDouble(),
      low: (data[3] as num).toDouble(),
      close: (data[4] as num).toDouble(),
    );
  }
  List<dynamic> toList() {
    return [timestamp.millisecondsSinceEpoch, open, high, low, close];
  }

  @override
  String toString() {
    return 'CoinOhlc(timestamp: $timestamp, open: $open, high: $high, low: $low, close: $close)';
  }
}
