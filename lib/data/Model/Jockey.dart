
import '../database/database_model.dart';
import 'Horse.dart';

class Jockey extends DatabaseModel<Jockey>{
  int? id;
  String? name;
  int? exp;
  Horse? horse;

  Jockey({this.id, this.name, this.exp, this.horse});

  Jockey.fromJson(Map<String, dynamic> json) {
    fromJson(json);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['exp'] = this.exp;
    if (this.horse != null) {
      data['horse'] = this.horse!.toJson();
    }
    return data;
  }

  @override
  Jockey fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    exp = json['exp'];
    horse = json['horse'] != null ? new Horse.fromJson(json['horse']) : null;
    return this;
  }
}