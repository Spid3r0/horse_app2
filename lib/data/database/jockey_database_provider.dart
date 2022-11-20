import 'package:horse_app2/data/Model/Jockey.dart';
import 'package:sqflite/sqflite.dart';

import 'database_provider.dart';

class JockeyDatabaseProvider extends DatabaseProvider<Jockey> {
  String tableName = "Horse";
  late Database database;

  String column_id = "id";
  String column_name = "name";
  String column_horse = "horseId";
  String column_user = "userId";
  String column_exp = "experience";

  @override
  Future<Jockey> getItem (int id) async{
    final database = await open();
    List<Map<String, dynamic>> questionMaps = await database.rawQuery(
        'SELECT * FROM $tableName WHERE id=?',
        [id]
    );
    return questionMaps.map((e) => Jockey().fromJson(e)).toList().first;
  }

  @override
  Future<List<Jockey>> getList() async{
    final database = await open();
    List<Map<String, dynamic>> questionMaps = await database.query(tableName);
    return questionMaps.map((e) => Jockey().fromJson(e)).toList();
  }


  @override
  Future<bool> removeItem(int id) {
    // TODO: implement removeItem
    throw UnimplementedError();
  }

  @override
  Future<bool> updateItem(int id, Jockey model) {
    // TODO: implement updateItem
    throw UnimplementedError();
  }

}
