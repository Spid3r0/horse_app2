import '../database/database_model.dart';


class Race extends DatabaseModel<Race> {
  int? id;
  String? name;
  int? moneyPrize;
  int? entryFee;
  int? horseCapacity;

  Race(
      {this.id, this.name, this.moneyPrize, this.entryFee, this.horseCapacity});

  Race.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    moneyPrize = json['moneyPrize'];
    entryFee = json['entryFee'];
    horseCapacity = json['horseCapacity'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['moneyPrize'] = this.moneyPrize;
    data['entryFee'] = this.entryFee;
    data['horseCapacity'] = this.horseCapacity;
    return data;
  }

  @override
  Race fromJson(Map<String, dynamic> json) {
    // TODO: implement fromJson
    throw UnimplementedError();
  }



}



