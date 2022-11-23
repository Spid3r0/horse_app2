import '../database/database_model.dart';

class Stadium extends DatabaseModel<Stadium>{
  int? id;
  String? name;
  int? lenght;
  String? groundType;

  Stadium({this.id, this.name, this.lenght, this.groundType});

  Stadium.fromJson(Map<String, dynamic> json) {
    fromJson(json);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['lenght'] = this.lenght;
    data['groundType'] = this.groundType;
    return data;
  }

  @override
  Stadium fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    lenght = json['lenght'];
    groundType = json['groundType'];
    return this;
  }
}