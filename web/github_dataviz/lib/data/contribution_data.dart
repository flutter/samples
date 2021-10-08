class ContributionData {
  int weekTime;
  int add;
  int delete;
  int change;

  ContributionData(this.weekTime, this.add, this.delete, this.change);

  static ContributionData fromJson(Map<String, dynamic> jsonMap) {
    ContributionData data = ContributionData(
        jsonMap['w'], jsonMap['a'], jsonMap['d'], jsonMap['c']);
    return data;
  }
}
