class Figures{
  int id;
  String value;
  String dataUpdatedAt;
  List reference;
  String key;

  Figures(String key, Map<dynamic, dynamic> data){
    this.id = data['Id'] ?? 0;
    this.value = data['value'] != null  ? data['value'].toString() : "0";
    this.dataUpdatedAt = data['dataUpdatedAt'] ?? "not-available";
    this.reference = data['reference'] ?? List();
    this.key = key.toUpperCase() ?? "";
  }
}