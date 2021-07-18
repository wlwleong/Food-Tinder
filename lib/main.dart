import 'package:flutter/material.dart';
import 'package:food_tinder/Pages/Swipe.dart';
import 'Pages/Home.dart';
import 'Pages/Results.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        // scaffoldBackgroundColor: const Color(0xFFEFEFEF),
      ),
      home: Scaffold(
        body: MyHomePage(title: 'Food Tinder'),
      ),
    );
  }
}

// class MainPageView extends StatefulWidget {
//   @override
//   _MainPageViewState createState() => _MainPageViewState();
// }

// class _MainPageViewState extends State<MainPageView> {
//   PageController _controller = PageController(initialPage: 0);

//   @override
//   void dispose() {
//     _controller.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return PageView(
//       controller: _controller,
//       children: <Widget>[
//         MyHomePage(title: 'Food Tinder'),
//         SwipePage(),
//         ResultsPage(),
//       ],
//     );
//   }
// }
