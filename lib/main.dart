import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gestures and Animations',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // number of times the user taps
  int numTaps = 0;

  // number of double taps by the user
  int numDoubleTaps = 0;

  // number of long presses
  int numLongPress = 0;

  // for creating a square
  double posX = 0.0;
  double posY = 0.0;
  double boxSize = 150.0; // width and height of the square

  @override
  Widget build(BuildContext context) {
    // while building our UI, when the app loads for the first time
    if (posX == 0.0) {
      center(context);
    }

    return Scaffold(
      appBar: AppBar(
        title: Text("Gestures and Animations"),
      ),
      body: GestureDetector(
        onTap: () {
          setState(() {
            numTaps++;
          });
        },
        onDoubleTap: () {
          setState(() {
            numDoubleTaps++;
          });
        },
        onLongPress: () {
          setState(() {
            numLongPress++;
          });
        },
        onVerticalDragUpdate: (DragUpdateDetails value) {
          setState(() {
            // length moved by the user
            double delta =
                value.delta.dy; // vertical movement - (-ve Up) (+ve Down)
            posY += delta;
          });
        },
        onHorizontalDragUpdate: (DragUpdateDetails value) {
          setState(() {
            // length moved by the user
            double delta = value.delta.dx; // horizontal movement
            posX += delta;
          });
        },
        child: Stack(
          children: <Widget>[
            Positioned(
              left: posX,
              top: posY,
              child: Container(
                width: boxSize,
                height: boxSize,
                decoration: BoxDecoration(
                  color: Colors.red,
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Material(
        color: Theme.of(context).primaryColorLight,
        child: Padding(
          padding: EdgeInsets.all(15.0),
          child: Text(
            "Taps: $numTaps || Double Taps: $numDoubleTaps || Long Presses: $numLongPress",
            style: Theme.of(context).textTheme.title,
          ),
        ),
      ),
    );
  }

  // placing the square in the center of the screen
  void center(BuildContext context) {
    posX = (MediaQuery.of(context).size.width / 2) - boxSize / 2;

    // extra -30 because some of the space is already taken for the appbar and title
    posY = (MediaQuery.of(context).size.width / 2) - boxSize / 2 - 30.0;

    setState(() {
      posX = posX;
      posY = posY;
    });
  }
}
