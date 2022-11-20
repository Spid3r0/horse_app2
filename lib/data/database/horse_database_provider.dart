
import 'package:flutter/services.dart';
import 'dart:io';
import 'dart:typed_data';
import '../Model/Horse.dart';
import 'database_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class HorseDatabaseProvider extends DatabaseProvider<Horse> {
  String tableName = "Horse";
  late Database database;

  String column_id = "id";
  String column_name = "name";
  String column_type = "type";
  String column_speed = "speed";
  String column_stamina = "stamina";


  @override
  Future<Database> open() async {
    var dbDir = await getDatabasesPath();
    var dbPath = join(dbDir, "app.db");
    await deleteDatabase(dbPath);

    ByteData data = await rootBundle.load("assets/database/deneme.db");
    List<int> bytes = data.buffer.asUint8List(data.offsetInBytes, data.lengthInBytes);
    await File(dbPath).writeAsBytes(bytes,flush:true);
    //path read

    return openDatabase(
      dbPath,
      version: 1
    );
  }

  @override
  Future<Horse> getItem(int id) {
    // TODO: implement getItem
    throw UnimplementedError();
  }

  @override
  Future<List<Horse>> getList() async {
    final database = await open();
    List<Map<String, dynamic>> questionMaps = await database.query(tableName);
    return questionMaps.map((e) => Horse.fromJson(e)).toList();
  }

  @override
  Future<bool> insertItem(Horse model) {
    // TODO: implement insertItem
    throw UnimplementedError();
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
