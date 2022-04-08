import 'package:flutter/material.dart';
import 'package:k_chart/flutter_k_chart.dart';
import 'package:k_chart/k_chart_widget.dart';
import 'package:varens_app_test/widgets/chart_bars.dart';

class Chart extends StatefulWidget {
  final List<ChartBar> bars;
  const Chart({ Key? key, required this.bars}) : super(key: key);

  @override
  _ChartState createState() => _ChartState();
}

  const MainState _mainState = MainState.MA;
  const bool _volHidden = true;
  const SecondaryState _secondaryState = SecondaryState.NONE;
  bool isLine = true;
  bool showLoading = true;
  const bool _isTrendLine = false;

  List<KLineEntity>? data;

  ChartStyle chartStyle = ChartStyle();
  ChartColors chartColors = ChartColors();

class _ChartState extends State<Chart> {

    @override
  void initState() {
    super.initState();
    chartColors.bgColor = [const Color(0xFF454545), const Color(0xFF454545)];
    chartColors.selectBorderColor = const Color(0xff6C7A86);
    chartColors.hCrossColor = const Color(0x554C86CD);
    chartColors.vCrossColor = const Color(0x554C86CD);
    chartColors.lineFillColor = Colors.transparent;
    chartColors.selectFillColor = Colors.blue;
    chartStyle.vCrossWidth = 0.5;

    parseChartData();
  }

  void parseChartData() {
    data = widget.bars
        .map((bar) => KLineEntity.fromCustom(
            open: bar.open.toDouble(),
            close: bar.close.toDouble(),
            time: DateTime.parse(bar.time!).millisecondsSinceEpoch,
            high: bar.high.toDouble(),
            amount: bar.amount.toDouble(),
            low: bar.low.toDouble(),
            vol: bar.vol!.toDouble(),
            ratio: 0,
            change: 0))
        .toList()
        .cast<KLineEntity>();

    if (data!.isNotEmpty) {
      DataUtil.calculate(data! as dynamic);
    }
    showLoading = false;
    setState(() {});
  }

    double _getHeight() {
    if (_secondaryState == SecondaryState.NONE) {
      return 300;
    }
    return 400;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        shrinkWrap: true,
        children: <Widget>[
          Stack(children: <Widget>[
            SizedBox(
              height: _getHeight(),
              width: double.infinity,
              child: KChartWidget(
                data,
                chartStyle,
                chartColors,
                isLine: isLine,
                isTrendLine: _isTrendLine,
                mainState: _mainState,
                volHidden: _volHidden,
                secondaryState: _secondaryState,
                fixedLength: 2,
                timeFormat: TimeFormat.YEAR_MONTH_DAY_WITH_HOUR,
                showNowPrice: false,
                hideGrid: false,
                showInfoDialog: true,
                isTapShowInfoDialog: true,
                maDayList: const [1, 100, 1000],
              ),
            ),
            if (showLoading)
              Container(
                  width: double.infinity,
                  height: 450,
                  alignment: Alignment.center,
                  child: const CircularProgressIndicator()),
          ]),
        ],
      ),
    );
  }
}
