import 'package:horse_app2/data/database/horse_database_provider.dart';

import '../database/database_model.dart';
import 'Horse.dart';
import 'Jockey.dart';

class User extends DatabaseModel<User>{
  int? id;
  String? name;
  List<Horse>? horseList;
  List<Jockey>? jockeyList;

  User({this.id, this.name, this.horseList, this.jockeyList});

  void initHorseList(HorseDatabaseProvider horseDatabaseProvider) {

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
    id = json['id'];
    name = json['name'];
    return this;
  }
}
