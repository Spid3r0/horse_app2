import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Stable extends StatefulWidget {
  const Stable({Key? key}) : super(key: key);

  @override
  State<Stable> createState() => _StableState();
}

class _StableState extends State<Stable> {
  final _horseListController = PageController(
    initialPage: 0,
    viewportFraction: 0.8,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        child: Container(
          color: Color(0xff7c7c7c),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: 100,
                        height: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Color(0xff7c7c7c),
                          boxShadow: [BoxShadow(color: Color(0xffb7a9a9), spreadRadius: 3)],
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(FontAwesomeIcons.person),
                            Text('2/5'),
                          ],
                        ),
                      ),
                      Container(
                        width: 100,
                        height: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Color(0xff7c7c7c),
                          boxShadow: [BoxShadow(color: Color(0xffb7a9a9), spreadRadius: 3)],
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(FontAwesomeIcons.personBiking),
                            Text('2/5'),
                          ],
                        ),
                      ),
                      Container(
                        width: 100,
                        height: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Color(0xff7c7c7c),
                          boxShadow: [BoxShadow(color: Color(0xffb7a9a9), spreadRadius: 3)],
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(FontAwesomeIcons.horse),
                            Text('2/5'),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,

                    children: [
                      Container(
                        width: 100,
                        height: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Color(0xff7c7c7c),
                          boxShadow: [BoxShadow(color: Color(0xffb7a9a9), spreadRadius: 3)],
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(FontAwesomeIcons.horse),
                            Text('2/5'),
                          ],
                        ),
                      ),
                      Container(
                        width: 100,
                        height: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Color(0xff7c7c7c),
                          boxShadow: [BoxShadow(color: Color(0xffb7a9a9), spreadRadius: 3)],
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(FontAwesomeIcons.horse),
                            Text('2/5'),
                          ],
                        ),
                      ),

                    ],
                  ),
                ],
              ),


              Container(
                decoration: BoxDecoration(
                  color: Colors.grey,
                  boxShadow: [
                    BoxShadow(color: Colors.redAccent, spreadRadius: 3)
                  ],
                ),
                height: 200,
                width: 400,
                padding: EdgeInsets.all(5),
                child: PageView(
                  controller: _horseListController,
                  scrollDirection: Axis.vertical,
                  children: [
                    Card(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(FontAwesomeIcons.horse),
                              Row(
                                children: [
                                  Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                  ),
                                ],
                              )
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('Arap Ati'),
                              Text('Yaş:3'),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Card(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(FontAwesomeIcons.horse),
                              Row(
                                children: [
                                  Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                  ),
                                ],
                              )
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('Arap Ati'),
                              Text('Yaş:3'),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Card(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(FontAwesomeIcons.horse),
                              Row(
                                children: [
                                  Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                  ),
                                ],
                              )
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('Arap Ati'),
                              Text('Yaş:3'),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
