import 'package:horse_app2/data/Model/Stadium.dart';
import 'package:sqflite/sqflite.dart';

import 'database_provider.dart';

class StadiumDatabaseProvider extends DatabaseProvider<Stadium> {
  String tableName = "Horse";
  late Database database;

  String column_id = "id";
  String column_name = "name";
  String column_length = "length";
  String column_ground = "ground";

  @override
  Future<Stadium> getItemById(int id) async{
    final database = await open();
    List<Map<String, dynamic>> dbResult = await database.rawQuery(
        'SELECT * FROM $tableName WHERE id=?',
        [id]
    );
    return dbResult.map((e) => Stadium().fromJson(e)).toList().first;
  }

  @override
  Future<List<Stadium>> getList() async{
    final database = await open();
    List<Map<String, dynamic>> dbResult = await database.query(tableName);
    return dbResult.map((e) => Stadium().fromJson(e)).toList();
  }

  @override
  Future<bool> removeItem(int id) {
    // TODO: implement removeItem
    throw UnimplementedError();
  }

  @override
  Future<bool> updateItem(int id, Stadium model) {
    // TODO: implement updateItem
    throw UnimplementedError();
  }
}