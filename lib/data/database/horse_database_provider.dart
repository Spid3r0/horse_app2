import '../Model/Horse.dart';
import 'database_provider.dart';
import 'package:sqflite/sqflite.dart';

class HorseDatabaseProvider extends DatabaseProvider<Horse> {
  String tableName = "Horse";
  late Database database;

  String column_id = "id";
  String column_name = "name";
  String column_type = "type";
  String column_speed = "speed";
  String column_stamina = "stamina";
  String column_userId = "userId";
  String column_raceId = "raceId";

  @override
  Future<Horse> getItem(int id) async{
    final database = await open();
    List<Map<String, dynamic>> questionMaps = await database.rawQuery(
      'SELECT * FROM $tableName WHERE id=?',
      [id]
    );
    return questionMaps.map((e) => Horse.fromJson(e)).toList().first;
  }

  @override
  Future<List<Horse>> getList() async {
    final database = await open();
    List<Map<String, dynamic>> questionMaps = await database.query(tableName);
    return questionMaps.map((e) => Horse.fromJson(e)).toList();
  }


  @override
  Future<bool> removeItem(int id) {
    // TODO: implement removeItem
    throw UnimplementedError();
  }

  @override
  Future<bool> updateItem(int id, Horse model) {
    // TODO: implement updateItem
    throw UnimplementedError();
  }

  }
