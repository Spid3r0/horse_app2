import '../database/database_model.dart';

class Horse extends DatabaseModel<Horse>{
  int? id;
  String? name;
  String? type;
  int? speed;
  int? stamina;

  Horse({this.id, this.name, this.type, this.speed, this.stamina});

  Horse.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    type = json['type'];
    speed = json['speed'];
    stamina = json['stamina'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['type'] = this.type;
    data['speed'] = this.speed;
    data['stamina'] = this.stamina;
    return data;
  }

  @override
  Horse fromJson(Map<String, dynamic> json) {
    // TODO: implement fromJson
    throw UnimplementedError();
  }
}