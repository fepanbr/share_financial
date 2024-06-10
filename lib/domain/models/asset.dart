class Asset {
  int? id;
  late String name;
  late double balance = 0.0;
  late int? assetGroupId;

  Asset(
      {this.id,
      required this.name,
      required this.balance,
      required this.assetGroupId});

  Asset.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    balance = double.parse(json['balance']);
    assetGroupId = json['assetGroupId'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['balance'] = balance;
    data['assetGroupId'] = assetGroupId;
    return data;
  }
}
