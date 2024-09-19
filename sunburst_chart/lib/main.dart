import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class ChartData {
  final String category;
  final double value;

  ChartData(this.category, this.value);
}

class SunburstData {
  final String category;
  final double value;

  SunburstData(this.category, this.value);
}

class SunburstChartWidget extends StatelessWidget {
  final List<SunburstData> data;

  SunburstChartWidget({required this.data});

  @override
  Widget build(BuildContext context) {
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

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Example data
    final List<SunburstData> exampleData = [
      SunburstData('Category 1', 30),
      SunburstData('Category 2', 70),
    ];

    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SunburstChartWidget(data: exampleData),
    );
  }
}

