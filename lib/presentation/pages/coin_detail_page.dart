import 'package:equatable/equatable.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:vault_chain/data/model/coin_detail.dart';
import 'package:vault_chain/data/model/portofolio_model.dart';
import 'package:vault_chain/data/services/providers/detail_provider.dart';
import 'package:vault_chain/core/utils/app_colors.dart';
import 'package:vault_chain/core/utils/csv_parser.dart';
import 'package:vault_chain/core/utils/formatter.dart';
import 'package:vault_chain/core/utils/util.dart';
import 'package:vault_chain/data/services/providers/portofolio_provider.dart';
import 'package:vault_chain/widgets/coin_detail_skeleton.dart';
import 'package:vault_chain/widgets/error_handler.dart';
import 'package:vault_chain/widgets/null_text.dart';
import 'package:vault_chain/widgets/price_change_icon.dart';

class CoinDetailPage extends StatefulWidget {
  const CoinDetailPage({super.key});

  @override
  State<CoinDetailPage> createState() => _CoinDetailPageState();
}

class _CoinDetailPageState extends State<CoinDetailPage> {
  List<List<_BtcCandlestickData>>? _btcMonthlyData;

  late final List<String> monthsNames;
  late PortofolioModel routeArgument;

  final int minDays = 1;
  final int maxDays = 31;
  late final FlLine _gridLine;

  final _textCoinController = TextEditingController();
  final _textCurrencyController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _initAwait();

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

    _gridLine = FlLine(
      color: Colors.blueGrey.withValues(alpha: 0.4),
      strokeWidth: 0.8,
      // dashArray: [8, 4],
    );
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    routeArgument =
        ModalRoute.of(context)!.settings.arguments as PortofolioModel;
    context.read<DetailProvider>().init(routeArgument.id);
  }

  @override
  void dispose() {
    _textCoinController.dispose();
    _textCurrencyController.dispose();
    super.dispose();
  }

  void _initAwait() async {
    final data = await rootBundle.loadString('assets/bitcoin.csv');
    final rows = CsvParser.parse(data);
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

  void _cryptoConverter(String value, CoinDetail coinDetail) {
    final price = double.tryParse(value) ?? 0.0;
    final marketPriceRaw = coinDetail.marketData.currentPrice['idr'];
    final marketPrice = (marketPriceRaw is num)
        ? marketPriceRaw.toDouble()
        : double.tryParse(marketPriceRaw.toString()) ?? 0.0;
    final total = marketPrice > 0 ? price / marketPrice : 0.0;
    _textCoinController.text = total.toString();
  }

  void _currencyConverter(String value, CoinDetail coinDetail) {
    final coins = double.tryParse(value) ?? 0.0;
    final marketPriceRaw = coinDetail.marketData.currentPrice['idr'];
    final marketPrice = (marketPriceRaw is num)
        ? marketPriceRaw.toDouble()
        : double.tryParse(marketPriceRaw.toString()) ?? 0.0;
    final total = coins * marketPrice;
    _textCurrencyController.text = total.toString();
  }

  String _defaultCurrency(CoinDetail coinDetail) {
    final marketPriceRaw = coinDetail.marketData.currentPrice['idr'];
    final marketPrice = (marketPriceRaw is num)
        ? marketPriceRaw.toDouble()
        : double.tryParse(marketPriceRaw.toString()) ?? 0.0;
    return marketPrice.toString();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: defaultBackground(context),
      appBar: AppBar(
        backgroundColor: defaultBackground(context),
        surfaceTintColor: defaultBackground(context),
        titleSpacing: 0,
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          spacing: 7.0,
          children: [
            CircleAvatar(
              radius: 14,
              backgroundImage: NetworkImage(
                routeArgument.image.replaceAll('/large/', '/small/'),
              ),
              backgroundColor: Colors.transparent,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  spacing: 4.0,
                  children: [
                    Text(
                      routeArgument.symbol.toUpperCase(),
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Card.filled(
                      color: defaultPrimaryContainer(context),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4),
                      ),
                      // padding: EdgeInsets.symmetric(vertical: 1, horizontal: 5),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        child: Text(
                          '#${routeArgument.marketCapRank.toString()}',
                          style: TextStyle(
                            fontSize: 11,
                            color: defaultOnPrimaryContainer(context),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Text(
                  routeArgument.name.length > 20
                      ? '${routeArgument.name.substring(0, 20)}…'
                      : routeArgument.name,
                  style: TextStyle(
                    fontSize: 14,
                    color: defaultOnPrimaryContainer(context),
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ],
        ),
        actions: [
          Consumer<PortofolioProvider>(
            builder: (context, porto, child) {
              final fav = porto.isFavorite(routeArgument.id);
              return IconButton(
                onPressed: () {
                  porto.toggleFavorite(
                    PortofolioModel(
                      id: routeArgument.id,
                      name: routeArgument.name,
                      symbol: routeArgument.symbol,
                      image: routeArgument.image,
                      marketCapRank: routeArgument.marketCapRank,
                    ),
                    true,
                  );
                },
                isSelected: fav,
                icon: Icon(Icons.star_border_outlined),
                selectedIcon: Icon(Icons.star, color: Colors.yellow),
              );
            },
          ),
        ],
      ),
      body: Consumer<DetailProvider>(
        builder: (context, detailProvider, child) {
          final coinDetail = detailProvider.coinDetail;
          if (detailProvider.isLoading ||
              coinDetail == null ||
              detailProvider.coinOhlc == null) {
            return CoinDetailSkeleton();
          }
          _textCoinController.text = (1.0).toString();
          _textCurrencyController.text = _defaultCurrency(coinDetail);
          if (detailProvider.error != null) {
            ErrorHandler(
              errorText: 'Error: ${detailProvider.error}',
              onPressed: () async =>
                  await detailProvider.init(routeArgument.id),
            );
          }
          return RefreshIndicator(
            onRefresh: () async => await detailProvider.init(routeArgument.id),
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(10.0),
              physics: AlwaysScrollableScrollPhysics(),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 4.0),
                    child: Row(
                      children: [
                        Text(
                          Formatter.formatCurrency(
                            coinDetail.marketData.currentPrice['idr']!,
                          ),
                          style: TextStyle(
                            fontSize: 26.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        coinDetail.marketData.changes['24h'] == null
                            ? NullText()
                            : Row(
                                children: [
                                  PriceChangeIcon(
                                    coinDetail.marketData.changes['24h']! <= 0,
                                  ),
                                  Text(
                                    '${Formatter.formatPercent(coinDetail.marketData.changes['24h']!)}(24H)',
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w600,
                                      color:
                                          coinDetail
                                                  .marketData
                                                  .changes['24h']! <
                                              0
                                          ? Colors.red
                                          : Colors.green,
                                    ),
                                  ),
                                ],
                              ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 25),
                  AspectRatio(
                    aspectRatio: 1.5,
                    child: Stack(
                      children: [
                        if (_btcMonthlyData != null ||
                            detailProvider.coinOhlc != null)
                          Padding(
                            padding: const EdgeInsets.only(right: 10.0),
                            child: CandlestickChart(
                              CandlestickChartData(
                                borderData: FlBorderData(show: false),
                                candlestickSpots: detailProvider.coinOhlc!
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
                                        show: true,
                                      );
                                    })
                                    .toList(),
                                minX: 0,
                                maxX: detailProvider.coinOhlc!.length
                                    .toDouble(),
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
                                      reservedSize: 40,
                                      getTitlesWidget: _leftTitles,
                                    ),
                                  ),
                                  bottomTitles: AxisTitles(
                                    sideTitles: SideTitles(
                                      showTitles: true,
                                      reservedSize: 36,
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
                                          detailProvider.coinOhlc![x.toInt()];
                                      return VerticalLine(
                                        x: x,
                                        color:
                                            (data.open < data.close
                                                    ? Colors.green
                                                    : Colors.red)
                                                .withValues(alpha: 0.5),
                                        strokeWidth: 1,
                                      );
                                    },
                                    horizontalLineProvider: (y) =>
                                        HorizontalLine(
                                          y: y,
                                          label: HorizontalLineLabel(
                                            show: true,
                                            style: const TextStyle(
                                              color:
                                                  AppColors.contentColorYellow,
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold,
                                            ),
                                            labelResolver: (hLine) =>
                                                hLine.y.toInt().toString(),
                                            alignment: Alignment.topLeft,
                                          ),
                                          color: Colors.yellow.withValues(
                                            alpha: 0.8,
                                          ),
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
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 12.0,
                        horizontal: 14.0,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: detailProvider
                            .coinDetail!
                            .marketData
                            .changes
                            .entries
                            .map((e) {
                              return Expanded(
                                child: Column(
                                  children: [
                                    Text(
                                      e.key,
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    SizedBox(
                                      width: double.infinity,
                                      child: Divider(thickness: 1.5),
                                    ),
                                    e.value == null
                                        ? NullText()
                                        : Text(
                                            overflow: TextOverflow.ellipsis,
                                            Formatter.formatPercent(e.value!),
                                            style: TextStyle(
                                              color: e.value! >= 0
                                                  ? Colors.green
                                                  : Colors.red,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                  ],
                                ),
                              );
                            })
                            .toList(),
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
                          keyboardType: TextInputType.number,
                          style: TextStyle(fontSize: 14, height: 1.8),
                          decoration: InputDecoration(
                            prefixIcon: Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: CircleAvatar(
                                radius: 1,
                                foregroundImage: NetworkImage(
                                  coinDetail.image.small,
                                ),
                                foregroundColor: Colors.transparent,
                              ),
                            ),
                          ),
                          onChanged: (value) {
                            _currencyConverter(value, coinDetail);
                          },
                        ),
                      ),
                      Expanded(
                        child: TextField(
                          controller: _textCurrencyController,
                          keyboardType: TextInputType.number,
                          style: TextStyle(fontSize: 14, height: 1.8),
                          decoration: InputDecoration(
                            prefixIcon: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  'IDR',
                                  style: TextStyle(fontWeight: FontWeight.w600),
                                ),
                              ],
                            ),
                          ),
                          onChanged: (value) {
                            _cryptoConverter(value, coinDetail);
                          },
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
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
    child: Text(
      meta.formattedValue,
      style: const TextStyle(fontSize: 14, overflow: TextOverflow.ellipsis),
    ),
    // fitInside: SideTitleFitInsideData(
    //   enabled: true,
    //   axisPosition: 0,
    //   distanceFromEdge: 0,
    //   parentAxisSize: 0,
    // ),
  );
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
