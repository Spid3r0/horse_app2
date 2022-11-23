import 'package:horse_app2/data/Model/HorseRace.dart';
import 'package:sqflite/sqflite.dart';

import 'database_provider.dart';

class RaceDatabaseProvider extends DatabaseProvider<HorseRace> {
  String tableName = "Horse";
  late Database database;

  String column_id = "id";
  String column_name = "name";
  String column_moneyPrize = "moneyPrize";
  String column_entryFee = "entryFee";
  String column_horseCapacitiy = "horseCapacity";

  @override
  Future<HorseRace> getItemById(int id) async{
    final database = await open();
    List<Map<String, dynamic>> dbResult = await database.rawQuery(
        'SELECT * FROM $tableName WHERE id=?',
        [id]
    );
    return dbResult.map((e) => HorseRace().fromJson(e)).toList().first;
  }

  @override
  Future<List<HorseRace>> getList() async {
    final database = await open();
    List<Map<String, dynamic>> dbResult = await database.query(tableName);
    return dbResult.map((e) => HorseRace().fromJson(e)).toList();
  }

  @override
  Future<bool> removeItem(int id) {
    // TODO: implement removeItem
    throw UnimplementedError();
  }

  @override
  Future<bool> updateItem(int id, HorseRace model) {
    // TODO: implement updateItem
    throw UnimplementedError();
  }

}