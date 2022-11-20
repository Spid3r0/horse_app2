import '../database/database_model.dart';
import 'Horse.dart';
import 'Jockey.dart';

class User extends DatabaseModel<User>{
  int? id;
  String? name;
  List<Horse>? horseList;
  List<Jockey>? jockeyList;

  User({this.id, this.name, this.horseList, this.jockeyList});

  User.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    if (json['horseList'] != null) {
      horseList = <Horse>[];
      json['horseList'].forEach((v) {
        horseList!.add(new Horse.fromJson(v));
      });
    }
    if (json['jockeyList'] != null) {
      jockeyList = <Jockey>[];
      json['jockeyList'].forEach((v) {
        jockeyList!.add(new Jockey.fromJson(v));
      });
    }
  }

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    if (this.horseList != null) {
      data['horseList'] = this.horseList!.map((v) => v.toJson()).toList();
    }
    if (this.jockeyList != null) {
      data['jockeyList'] = this.jockeyList!.map((v) => v.toJson());
    }
    return data;
  }



  @override
  User fromJson(Map<String, dynamic> json) {
    // TODO: implement fromJson
    throw UnimplementedError();
  }
}
