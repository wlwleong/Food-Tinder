import 'dart:math';

import 'package:flutter/material.dart';
import 'package:food_tinder/models/Food.dart';

class Donut {
  String link;

  Donut({required this.link});
}

class ResultsPage extends StatefulWidget {
  const ResultsPage({Key? key}) : super(key: key);

  @override
  _ResultsPageState createState() => _ResultsPageState();
}

class _ResultsPageState extends State<ResultsPage> {
  List<Donut> donuts = foodItems
      .map((item) => Donut(link: item.imageURL))
      .toList()
      .getRange(0, 6)
      .toList();

  int randomIndex = -1;

  final random = new Random();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "RESULT",
          style: TextStyle(
            fontSize: 20.0,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                DonutConstrainedBox(
                  donut: donuts[0],
                  hasBorder: randomIndex == 0,
                ),
                DonutConstrainedBox(
                  donut: donuts[1],
                  hasBorder: randomIndex == 1,
                ),
                DonutConstrainedBox(
                  donut: donuts[2],
                  hasBorder: randomIndex == 2,
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                DonutConstrainedBox(
                  donut: donuts[3],
                  hasBorder: randomIndex == 3,
                ),
                DonutConstrainedBox(
                  donut: donuts[4],
                  hasBorder: randomIndex == 4,
                ),
                DonutConstrainedBox(
                  donut: donuts[5],
                  hasBorder: randomIndex == 5,
                ),
              ],
            ),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Colors.red,
              padding: EdgeInsets.all(20.0),
            ),
            onPressed: () {
              setState(() {
                randomIndex = random.nextInt(6);
              });
            },
            child: Text(
              'CHOOSE ONE FOR ME',
              style: TextStyle(
                fontSize: 20.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class DonutConstrainedBox extends StatelessWidget {
  final bool hasBorder;
  final Donut donut;
  DonutConstrainedBox({required this.donut, required this.hasBorder});

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints.tightFor(width: 150.0, height: 150.0),
      child: Container(
        decoration: hasBorder
            ? BoxDecoration(
                border: Border.all(
                  color: Colors.green,
                  width: 5.0,
                ),
              )
            : null,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: Colors.transparent,
          ),
          onPressed: () {},
          child: Image.network(donut.link),
        ),
      ),
    );
  }
}
