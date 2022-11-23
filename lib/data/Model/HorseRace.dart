import '../database/database_model.dart';
import 'Horse.dart';

class HorseRace extends DatabaseModel<HorseRace>{
  int? id;
  String? name;
  List<String>? horseTypesAllowed;
  int? moneyPrize;
  int? entryFee;
  int? horseCapacity;
  List<Horse>? horseList;

  HorseRace(
      {this.id,
        this.name,
        this.horseTypesAllowed,
        this.moneyPrize,
        this.entryFee,
        this.horseCapacity,
        this.horseList});

  HorseRace.fromJson(Map<String, dynamic> json) {
    fromJson(json);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['horseTypesAllowed'] = this.horseTypesAllowed;
    data['moneyPrize'] = this.moneyPrize;
    data['entryFee'] = this.entryFee;
    data['horseCapacity'] = this.horseCapacity;
    if (this.horseList != null) {
      data['horseList'] = this.horseList!.map((v) => v.toJson()).toList();
    }
    return data;
  }

  @override
  HorseRace fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    horseTypesAllowed = json['horseTypesAllowed'].cast<String>();
    moneyPrize = json['moneyPrize'];
    entryFee = json['entryFee'];
    horseCapacity = json['horseCapacity'];
    if (json['horseList'] != null) {
      horseList = <Horse>[];
      json['horseList'].forEach((v) {
        horseList!.add(new Horse.fromJson(v));
      });
    }
    return this;
  }
}
