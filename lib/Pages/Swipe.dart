import 'package:flutter/material.dart';
import 'package:flutter_tindercard/flutter_tindercard.dart';
import 'package:food_tinder/Pages/Results.dart';
import 'package:food_tinder/models/Food.dart';

class SwipePage extends StatefulWidget {
  SwipePage({Key? key}) : super(key: key);
  @override
  _SwipePageState createState() => _SwipePageState();
}

class _SwipePageState extends State<SwipePage> with TickerProviderStateMixin {
  List<String> images = foodItems.map((item) => item.imageURL).toList();

  List<String> acceptedItems = [];

  @override
  Widget build(BuildContext context) {
    CardController controller; //Use this to trigger swap.

    _goToNextPage() {
      print('Reached here');
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ResultsPage(
                // acceptedItems: this.acceptedItems,
                ),
          ));
    }

    return new Scaffold(
      body: new Center(
        child: Container(
          height: MediaQuery.of(context).size.height * 0.6,
          child: new TinderSwapCard(
            swipeUp: true,
            swipeDown: true,
            orientation: AmassOrientation.BOTTOM,
            totalNum: images.length,
            stackNum: 3,
            swipeEdge: 4.0,
            maxWidth: MediaQuery.of(context).size.width * 0.9,
            maxHeight: MediaQuery.of(context).size.width * 0.9,
            minWidth: MediaQuery.of(context).size.width * 0.8,
            minHeight: MediaQuery.of(context).size.width * 0.8,
            cardBuilder: (context, index) => Card(
              child: Image.network('${images[index]}', fit: BoxFit.cover),
            ),
            cardController: controller = CardController(),
            swipeUpdateCallback: (DragUpdateDetails details, Alignment align) {
              /// Get swiping card's alignment
              if (align.x < 0) {
                //Card is LEFT swiping
              } else if (align.x > 0) {
                //Card is RIGHT swiping
              }
            },
            swipeCompleteCallback:
                (CardSwipeOrientation orientation, int index) {
              if (orientation == CardSwipeOrientation.RIGHT) {
                setState(() {
                  acceptedItems.add(images[index]);
                });
              }
            },
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _goToNextPage,
        tooltip: 'Go to Results',
        child: Icon(Icons.arrow_forward_ios),
      ),
    );
  }
}
