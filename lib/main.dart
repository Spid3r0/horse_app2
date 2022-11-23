import 'package:flutter/material.dart';
import 'package:horse_app2/data/Model/User.dart';
import 'package:horse_app2/data/database/user_database_provider.dart';
import 'package:horse_app2/view/stable.dart';

import 'package:percent_indicator/percent_indicator.dart';

import 'package:sqflite/sqflite.dart';
import 'data/Model/Horse.dart';
import 'data/database/horse_database_provider.dart';
import 'view/main_panel.dart';


Future<void> main() async {
  //runApp(const MyApp());
  WidgetsFlutterBinding.ensureInitialized();

  HorseDatabaseProvider horseDatabaseProvider = HorseDatabaseProvider();
  List<Horse> horseList = [];
  Horse horse = await horseDatabaseProvider.getItemById(2);
  print(horse.name);
  // Horse horseOne = new Horse();
  // horseOne.name = "Utkunun götü";
  // horseOne.type = "Kuru";
  // horseOne.speed = 31;
  // horseOne.stamina =31;
  // horseDatabaseProvider.insertItem(horseOne, horseDatabaseProvider.tableName);
  // horseList = await horseDatabaseProvider.getList();
  // for (var value in horseList) {
  //   print(value.name);
  // }

  User user = new User();
  UserDatabaseProvider userDatabaseProvider = new UserDatabaseProvider();
  user = await userDatabaseProvider.getItemById(1);
  print(user.name);
  user.initHorseList(horseDatabaseProvider);

}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _pageController = PageController(
    initialPage: 0,
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.redAccent,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Container(
                  child: Container(
                    padding: EdgeInsets.all(10),
                    color: Color(0xff555555),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Color(0xff444444),
                              boxShadow: [
                                BoxShadow(color: Colors.grey, spreadRadius: 3)
                              ],
                            ),
                            child: Text(
                              'Username',
                              style:
                                  TextStyle(fontSize: 30, color: Colors.white),
                            )),
                      ],
                    ),
                  ),
                ),
                Container(
                  color: Colors.black12,
                  child: Container(
                    padding: EdgeInsets.all(20),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            color: Colors.grey,
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.redAccent, spreadRadius: 3)
                            ],
                          ),
                          child: Row(
                            children: [
                              Icon(
                                Icons.attach_money,
                                color: Colors.lightGreenAccent,
                              ),
                              Text('200'),
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            color: Colors.grey,
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.redAccent, spreadRadius: 3)
                            ],
                          ),
                          child: Row(
                            children: [
                              Icon(
                                Icons.trending_down,
                                color: Colors.red,
                              ),
                              Container(
                                child: Text('20'),
                                padding: EdgeInsets.symmetric(horizontal: 5),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            color: Colors.grey,
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.redAccent, spreadRadius: 3)
                            ],
                          ),
                          child: LinearPercentIndicator(
                            width: 100,
                            lineHeight: 14.0,
                            percent: 0.3,
                            backgroundColor: Colors.white,
                            progressColor: Colors.deepOrange,
                            center: Text('Experience'),
                            trailing: Icon(
                              Icons.star,
                              color: Colors.amber,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.only(bottom: 10),
                child: PageView(
                  controller: _pageController,
                  children: [
                    MainPanel(),
                    Stable(),
                  ],
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Color(0xff7c7c7c),
                boxShadow: [
                  BoxShadow(color: Color(0xffb7a9a9), spreadRadius: 3)
                ],
              ),
              padding: EdgeInsets.only(top: 10, bottom: 10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: Color(0xff444444)),
                          onPressed: () {},
                          child: Icon(Icons.pause)),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: Color(0xff444444)),
                          onPressed: () {},
                          child: Icon(Icons.arrow_forward_ios)),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: Color(0xff444444)),
                          onPressed: () {},
                          child: Icon(Icons.fast_forward_rounded)),
                    ],
                  ),
                  Expanded(
                    child: Card(
                      color: Colors.grey,
                      child: Text(
                        'Day 1',
                        style: TextStyle(
                          fontSize: 30,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
