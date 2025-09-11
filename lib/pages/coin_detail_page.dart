import 'package:equatable/equatable.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:vault_chain/model/market_model.dart';
import 'package:vault_chain/services/providers/detail_provider.dart';
import 'package:vault_chain/utils/app_colors.dart';
import 'package:vault_chain/utils/csv_parser.dart';
import 'package:vault_chain/utils/formatter.dart';
import 'package:vault_chain/utils/util.dart';

class CoinDetailPage extends StatefulWidget {
  const CoinDetailPage({super.key});

  @override
  State<CoinDetailPage> createState() => _CoinDetailPageState();
}

class _CoinDetailPageState extends State<CoinDetailPage> {
  List<List<_BtcCandlestickData>>? _btcMonthlyData;
  late MarketModel coin;

  final int _currentMonthIndex = 0;
  late final List<String> monthsNames;

  final int minDays = 1;
  final int maxDays = 31;
  late final FlLine _gridLine;

  final _textCoinController = TextEditingController();
  late TextEditingController _textCurrencyController;

  @override
  void initState() {
    monthsNames = [
      'January',
      'February',
      'March',
      'April',
      'May',
      'June',
      'July',
      'August',
      'September',
      'October',
      'November',
      'December',
    ];
    _loadData();
    _gridLine = FlLine(
      color: Colors.blueGrey.withValues(alpha: 0.4),
      strokeWidth: 0.8,
      // dashArray: [8, 4],
    );
    _textCoinController.text = 1.toString();
    super.initState();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    coin = ModalRoute.of(context)!.settings.arguments as MarketModel;

    _textCurrencyController = TextEditingController(
      text: coin.currentPrice.toString(),
    );
  }

  @override
  void dispose() {
    _textCoinController.dispose();
    _textCurrencyController.dispose();
    super.dispose();
  }

  void _loadData() async {
    final data = await rootBundle.loadString('assets/bitcoin.csv');
    final rows = CsvParser.parse(data);
    if (!mounted) {
      return;
    }
    setState(() {
      final allData = rows.skip(1).map((row) {
        // 2023-12-31,2024-01-01
        return _BtcCandlestickData(
          datetime: DateTime.parse(row[0]),
          open: double.parse(row[2]),
          high: double.parse(row[3]),
          low: double.parse(row[4]),
          close: double.parse(row[5]),
          volume: double.parse(row[6]),
          marketCap: double.parse(row[7]),
        );
      }).toList();

      _btcMonthlyData = List.generate(12, (index) {
        final month = index + 1;
        final monthData = allData
            .where((element) => element.datetime.month == month)
            .toList();
        monthData.sort((a, b) => a.datetime.compareTo(b.datetime));
        return monthData;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: defaultBackground(context),
      appBar: AppBar(
        titleSpacing: 0,
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 15,
              backgroundImage: NetworkImage(coin.image),
              backgroundColor: Colors.transparent,
            ),
            SizedBox(width: 6.0),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  coin.symbol.toUpperCase(),
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),
                Text(
                  coin.name,
                  style: TextStyle(fontSize: 14, color: Colors.grey),
                ),
              ],
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Row(
                spacing: 4,
                children: [
                  Text(
                    Formatter.formatCurrency(coin.currentPrice),
                    style: TextStyle(
                      fontSize: 26.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    '${Formatter.formatPercent(coin.priceChangePercentage24h)}(24H)',
                    style: TextStyle(
                      fontSize: 14,
                      color: coin.priceChangePercentage24h < 0
                          ? Colors.red
                          : Colors.green,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 25),
              AspectRatio(
                aspectRatio: 1.5,
                child: Stack(
                  children: [
                    if (_btcMonthlyData != null)
                      Padding(
                        padding: const EdgeInsets.only(right: 10.0),
                        child: CandlestickChart(
                          CandlestickChartData(
                            borderData: FlBorderData(show: false),
                            candlestickSpots:
                                _btcMonthlyData![_currentMonthIndex]
                                    .asMap()
                                    .entries
                                    .map((entry) {
                                      final index = entry.key;
                                      final data = entry.value;
                                      return CandlestickSpot(
                                        x: index.toDouble(),
                                        open: data.open,
                                        high: data.high,
                                        low: data.low,
                                        close: data.close,
                                      );
                                    })
                                    .toList(),
                            minX: 0,
                            maxX: 31,
                            gridData: FlGridData(
                              show: true,
                              getDrawingVerticalLine: (_) =>
                                  FlLine(strokeWidth: 0),
                              getDrawingHorizontalLine: (_) => _gridLine,
                            ),
                            titlesData: FlTitlesData(
                              show: true,
                              rightTitles: const AxisTitles(
                                sideTitles: SideTitles(showTitles: false),
                              ),
                              topTitles: const AxisTitles(
                                sideTitles: SideTitles(showTitles: false),
                              ),
                              leftTitles: AxisTitles(
                                drawBelowEverything: true,
                                sideTitles: SideTitles(
                                  showTitles: true,
                                  maxIncluded: false,
                                  minIncluded: false,
                                  reservedSize: 55,
                                  getTitlesWidget: _leftTitles,
                                ),
                              ),
                              bottomTitles: AxisTitles(
                                sideTitles: SideTitles(
                                  showTitles: true,
                                  reservedSize: 38,
                                  maxIncluded: false,
                                  interval: 1,
                                  getTitlesWidget: _bottomTitles,
                                ),
                              ),
                            ),
                            touchedPointIndicator: AxisSpotIndicator(
                              painter: AxisLinesIndicatorPainter(
                                verticalLineProvider: (x) {
                                  final data =
                                      _btcMonthlyData![_currentMonthIndex][x
                                          .toInt()];

                                  return VerticalLine(
                                    x: x,
                                    color:
                                        (data.isUp
                                                ? AppColors.contentColorGreen
                                                : AppColors.contentColorRed)
                                            .withValues(alpha: 0.5),
                                    strokeWidth: 1,
                                  );
                                },
                                horizontalLineProvider: (y) => HorizontalLine(
                                  y: y,
                                  label: HorizontalLineLabel(
                                    show: true,
                                    style: const TextStyle(
                                      color: AppColors.contentColorYellow,
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    labelResolver: (hLine) =>
                                        hLine.y.toInt().toString(),
                                    alignment: Alignment.topLeft,
                                  ),
                                  color: AppColors.contentColorYellow
                                      .withValues(alpha: 0.8),
                                  strokeWidth: 1,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    if (_btcMonthlyData == null)
                      const Center(child: CircularProgressIndicator()),
                  ],
                ),
              ),
              SizedBox(height: 8),
              Card.outlined(
                // color: defaultBackground(context),
                borderOnForeground: false,
                margin: EdgeInsets.all(0),
                elevation: 0,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 12.0,
                    horizontal: 14.0,
                  ),
                  child: Consumer<DetailProvider>(
                    builder: (context, value, child) {
                      return Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: value.priceChanges.entries.map((entry) {
                          return Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  entry.key,
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  width: double.infinity,
                                  child: Divider(),
                                ),
                                Text(
                                  "${entry.value.toStringAsFixed(2)}%",
                                  style: TextStyle(
                                    color: entry.value >= 0
                                        ? Colors.green
                                        : Colors.red,
                                  ),
                                ),
                              ],
                            ),
                          );
                        }).toList(),
                      );
                    },
                  ),
                ),
              ),
              SizedBox(height: 14.0),
              Row(
                spacing: 8.0,
                children: [
                  Expanded(
                    child: TextField(
                      controller: _textCoinController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        prefixIcon: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CircleAvatar(
                              radius: 8.5,
                              backgroundImage: NetworkImage(coin.image),
                            ),
                            Text(coin.symbol.toUpperCase()),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: TextField(
                      controller: _textCurrencyController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        prefixIcon: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [Text('IDR')],
                        ),
                      ),
                    ),
                  ),
                  // Flexible(child: TextField()),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _bottomTitles(double value, TitleMeta meta) {
    final day = value.toInt() + 1;

    final isImportantToShow = day % 5 == 0 || day == 1;

    if (!isImportantToShow) {
      return const SizedBox();
    }

    return SideTitleWidget(
      meta: meta,
      child: Text(
        day.toString(),
        style: const TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget _leftTitles(double value, TitleMeta meta) {
    return SideTitleWidget(
      meta: meta,
      // fitInside: SideTitleFitInsideData(
      //   enabled: true,
      //   axisPosition: 0,
      //   distanceFromEdge: 0,
      //   parentAxisSize: 0,
      // ),
      child: Text(meta.formattedValue, style: const TextStyle(fontSize: 14)),
    );
  }
}

class _BtcCandlestickData with EquatableMixin {
  _BtcCandlestickData({
    required this.datetime,
    required this.open,
    required this.high,
    required this.low,
    required this.close,
    required this.volume,
    required this.marketCap,
  });

  final DateTime datetime;
  final double open;
  final double high;
  final double low;
  final double close;
  final double volume;
  final double marketCap;

  bool get isUp => open < close;

  @override
  List<Object?> get props => [
    datetime,
    open,
    high,
    low,
    close,
    volume,
    marketCap,
  ];
}
