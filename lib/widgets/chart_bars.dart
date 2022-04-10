 class ChartBar {
  dynamic close;
  dynamic high;
  dynamic low;
  dynamic open;
  String? time;
  dynamic amount;

  int? vol;

  ChartBar();

  ChartBar.fromJson(Map<String, dynamic> jsonMap) {
    close = jsonMap['c'];
    high = jsonMap['h'];
    low = jsonMap['l'];
    open = jsonMap['o'];
    time = jsonMap['t'];
    vol = jsonMap['v'];
    amount = jsonMap['c'];
  }
}
