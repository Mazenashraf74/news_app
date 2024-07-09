

class SouresModel {
  final String id;
  final String name;

  SouresModel({required this.id, required this.name});

  factory SouresModel.formjson(Map<String, dynamic> json) =>
      SouresModel(id: json["id"], name: json["name"]);
}
