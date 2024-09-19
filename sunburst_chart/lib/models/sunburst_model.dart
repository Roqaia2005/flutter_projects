class SunburstData {
  final String category;
  final double value;
  
  SunburstData(this.category, this.value);
}
class ChartData {
  final String category;
  final double value;

  ChartData(this.category, this.value);
}
List<ChartData> _convertData(List<SunburstData> sunburstDataList) {
  return sunburstDataList.map((data) => ChartData(data.category, data.value)).toList();
}
