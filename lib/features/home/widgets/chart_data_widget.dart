import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class ChartDataWidget extends StatefulWidget {
  const ChartDataWidget({super.key});

  @override
  State<ChartDataWidget> createState() => _ChartDataState();
}

class _ChartDataState extends State<ChartDataWidget> {
  @override
  Widget build(BuildContext context) {
    final List<ChartData> chartData = <ChartData>[
      ChartData('Paypal', 128, 321),
      ChartData('Visa', 56, 287),
      ChartData('Bitcoin', 615, 176),
    ];
    return Scaffold(
      body: Center(
        child: SfCartesianChart(
          backgroundColor: Colors.white,
          primaryXAxis: CategoryAxis(
            majorTickLines: const MajorTickLines(width: 0),
            majorGridLines: const MajorGridLines(width: 0),
            axisLine: const AxisLine(width: 0),
          ),
          primaryYAxis: NumericAxis(
            axisLine: const AxisLine(width: 0),
            majorTickLines: const MajorTickLines(width: 0),
          ),
          series: <CartesianSeries>[
            ColumnSeries<ChartData, String>(
                dataSource: chartData,
                borderRadius:
                    const BorderRadius.vertical(top: Radius.circular(5)),
                xValueMapper: (ChartData data, _) => data.x,
                yValueMapper: (ChartData data, _) => data.y,
                color: const Color(0xb2618a32)),
            ColumnSeries<ChartData, String>(
              dataSource: chartData,
              borderRadius:
                  const BorderRadius.vertical(top: Radius.circular(5)),
              xValueMapper: (ChartData data, _) => data.x,
              yValueMapper: (ChartData data, _) => data.y1,
              color: const Color(0xb2c32932),
            ),
          ],
        ),
      ),
    );
  }
}

class ChartData {
  ChartData(this.x, this.y, this.y1);
  final String x;
  final double? y;
  final double? y1;
}
