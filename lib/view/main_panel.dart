import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MainPanel extends StatelessWidget {
  const MainPanel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color(0xff7c7c7c),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: Color(0xff7c7c7c),
          boxShadow: [BoxShadow(color: Color(0xffb7a9a9), spreadRadius: 3)],
        ),
        padding: EdgeInsets.symmetric(vertical: 80, horizontal: 10),
        alignment: Alignment.center,
        child: GridView.count(
          padding: EdgeInsets.all(10),
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          crossAxisCount: 2,
          children: [
            ElevatedButton(
              onPressed: () {},
              child: Icon(
                Icons.shopping_cart,
                size: 60,
              ),
              style: ElevatedButton.styleFrom(primary: Color(0xff444444)),
            ),
            ElevatedButton(
                onPressed: () {},
                child: Icon(
                  Icons.flag,
                  size: 60,
                ),
                style:
                    ElevatedButton.styleFrom(primary: Color(0xff444444))),
            ElevatedButton(
                onPressed: () {},
                child: Icon(
                  FontAwesomeIcons.horseHead,
                  size: 60,
                ),
                style:
                    ElevatedButton.styleFrom(primary: Color(0xff444444))),
            ElevatedButton(
                onPressed: () {},
                child: Icon(
                  Icons.fitness_center,
                  size: 60,
                ),
                style:
                    ElevatedButton.styleFrom(primary: Color(0xff444444))),
          ],
        ),

      ),
    );
  }
}
