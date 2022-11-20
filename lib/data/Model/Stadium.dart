import '../database/database_model.dart';

class Stadium extends DatabaseModel<Stadium>{
  int? id;
  String? name;
  int? length;
  String? ground;

  Stadium({this.id, this.name, this.length, this.ground});

  Stadium.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    length = json['length'];
    ground = json['ground'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['length'] = this.length;
    data['ground'] = this.ground;
    return data;
  }


  @override
  Stadium fromJson(Map<String, dynamic> json) {
    // TODO: implement fromJson
    throw UnimplementedError();
  }
}