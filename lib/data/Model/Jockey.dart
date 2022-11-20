
import '../database/database_model.dart';

class Jockey extends DatabaseModel<Jockey> {
  int? id;
  String? name;
  int? horseId;
  int? experience;
  int? userId;

  Jockey({this.id, this.name, this.horseId, this.experience, this.userId});

  Jockey.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    horseId = json['horseId'];
    experience = json['experience'];
    userId = json['userId'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['horseId'] = this.horseId;
    data['experience'] = this.experience;
    data['userId'] = this.userId;
    return data;
  }
  @override
  Jockey fromJson(Map<String, dynamic> json) {
    // TODO: implement fromJson
    throw UnimplementedError();
  }
}


