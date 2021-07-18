import 'package:flutter/material.dart';
import 'package:food_tinder/Pages/Swipe.dart';
import 'package:food_tinder/models/Food.dart';
import 'package:group_button/group_button.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final filters = ['Japanese', 'Korean', 'Spicy', 'Dessert'];

  @override
  Widget build(BuildContext context) {
    _goToNextPage() {
      print('Reached here');
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => SwipePage(
                // acceptedItems: this.acceptedItems,
                ),
          ));
    }

    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(25.0, 30.0, 25.0, 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              padding: EdgeInsets.fromLTRB(20.0, 30.0, 20.0, 30.0),
              color: Colors.white,
              child: Column(
                children: [
                  Text(
                    'PREFERENCES',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey[700],
                      letterSpacing: 1.0,
                    ),
                  ),
                  Divider(
                    height: 30.0,
                    color: Colors.orangeAccent,
                  ),
                  GroupButton(
                    spacing: 10,
                    isRadio: false,
                    borderRadius: BorderRadius.circular(5.0),
                    buttons: filters,
                    onSelected: (index, isSelected) {
                      print('object');
                    },
                    groupingType: GroupingType.wrap,
                    selectedColor: Colors.amber,
                    unselectedColor: Colors.grey[300],
                    selectedBorderColor: Colors.red,
                    unselectedBorderColor: Colors.grey[500],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _goToNextPage,
        tooltip: 'Go to Results',
        child: Icon(Icons.arrow_forward_ios),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
