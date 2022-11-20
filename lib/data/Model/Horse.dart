import '../database/database_model.dart';




class Horse extends DatabaseModel<Horse>{
  int? id;
  String? name;
  String? type;
  int? speed;
  int? stamina;
  int? userId;
  int? raceId;

  Horse(
      {this.id,
        this.name,
        this.type,
        this.speed,
        this.stamina,
        this.userId,
        this.raceId});

  Horse.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    type = json['type'];
    speed = json['speed'];
    stamina = json['stamina'];
    userId = json['userId'];
    raceId = json['raceId'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['type'] = this.type;
    data['speed'] = this.speed;
    data['stamina'] = this.stamina;
    data['userId'] = this.userId;
    data['raceId'] = this.raceId;
    return data;
  }
  @override
  Horse fromJson(Map<String, dynamic> json) {
    // TODO: implement fromJson
    throw UnimplementedError();
  }
}