class PeriodDate {
  DateTime startDate;
  DateTime endDate;

  PeriodDate();

  PeriodDate.fromJSON(Map<String, dynamic> jsonMap) {
    try {
      startDate = jsonMap['start_date'];
      endDate = jsonMap['end_date'];
    } catch (e) {
      startDate = DateTime.now();
      endDate = DateTime.now();
      print(e);
    }
  }
}
