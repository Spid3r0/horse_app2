import 'package:flutter/services.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'database_model.dart';
import 'dart:io';

abstract class DatabaseProvider<T extends DatabaseModel> {
  String databaseName = "deneme.db";

  Future open() async{
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

  Future<T> getItemById(int id);

  Future<List<T>> getList();

  Future<bool> updateItem(int id, T model);

  Future<bool> removeItem(int id);

  Future<bool> insertItem(T model, String tableName) async{
    final database = await open();
    try{
      await database.insert(tableName, model.toJson());
      return true;
    }
    catch(e){
      print(e);
      return false;
    }
  }

  late Database database;

  Future<void> close() async {
    await database.close();
  }

}