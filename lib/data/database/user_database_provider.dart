import 'package:horse_app2/data/Model/User.dart';
import 'package:sqflite/sqflite.dart';

import 'database_provider.dart';

class UserDatabaseProvider extends DatabaseProvider<User> {
  String tableName = "User";
  late Database database;

  String column_id = "id";
  String column_name = "name";


  @override
  Future<User> getItemById(int id) async{
    final database = await open();
    List<Map<String, dynamic>> dbResult = await database.rawQuery(
        'SELECT * FROM $tableName WHERE id=?',
        [id]
    );
    return dbResult.map((e) => User().fromJson(e)).toList().first;
  }

  @override
  Future<List<User>> getList() async{
    final database = await open();
    List<Map<String, dynamic>> dbResult = await database.query(tableName);
    return dbResult.map((e) => User().fromJson(e)).toList();
  }

  @override
  Future<bool> removeItem(int id) {
    // TODO: implement removeItem
    throw UnimplementedError();
  }

  @override
  Future<bool> updateItem(int id, User model) {
    // TODO: implement updateItem
    throw UnimplementedError();
  }
}