import 'package:flutter/material.dart';
import 'package:sunburst_chart/models/sunburst_model.dart';
import 'package:syncfusion_flutter_charts/charts.dart';



class SunburstChartWidget extends StatelessWidget {
  final List<SunburstData> data; // Assuming a list of SunburstData

  SunburstChartWidget({required this.data});

  @override
  Widget build(BuildContext context) {
    // Convert SunburstData to List<ChartData>
    final List<ChartData> chartData = _convertData(data);

    return Scaffold(
      appBar: AppBar(title: Text('Dynamic Circular Chart')),
      body: Center(
        child: SfCircularChart(
          series: <CircularSeries>[
            PieSeries<ChartData, String>(
              dataSource: chartData,
              xValueMapper: (ChartData data, _) => data.category,
              yValueMapper: (ChartData data, _) => data.value,
              dataLabelSettings: DataLabelSettings(isVisible: true),
            )
          ],
        ),
      ),
    );
  }

  List<ChartData> _convertData(List<SunburstData> sunburstDataList) {
    return sunburstDataList
        .map((data) => ChartData(data.category, data.value))
        .toList();
  }
}
