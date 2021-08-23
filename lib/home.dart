import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: (GridView.count(
        primary: false,
        padding: const EdgeInsets.all(10),
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        crossAxisCount: 2,
        children: <Widget>[
          Container(
            padding: const EdgeInsets.all(8),
            child: Column(
              children: [
                const Text("All Customer",
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                Icon(Icons.business, color: Colors.white, size: 50.0),
              ],
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment(
                    0.8, 0.0), // 10% of the width, so there are ten blinds.
                colors: <Color>[
                  Color(0xffee0000),
                  Color(0xffeeee00)
                ], // red to yellow
                tileMode:
                    TileMode.repeated, // repeats the gradient over the canvas
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child: Column(
              children: [
                const Text("Customer",
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                Icon(Icons.add_reaction_rounded,
                    color: Colors.white, size: 50.0),
              ],
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment(
                    0.8, 0.0), // 10% of the width, so there are ten blinds.
                colors: <Color>[
                  Color(0xffee0000),
                  Color(0xffeeee00)
                ], // red to yellow
                tileMode:
                    TileMode.repeated, // repeats the gradient over the canvas
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child: Column(
              children: [
                const Text("Item",
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                Icon(Icons.audiotrack, color: Colors.purple, size: 50.0),
              ],
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment(
                    0.8, 0.0), // 10% of the width, so there are ten blinds.
                colors: <Color>[
                  Color(0xffee0000),
                  Color(0xffeeee00)
                ], // red to yellow
                tileMode:
                    TileMode.repeated, // repeats the gradient over the canvas
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child: Column(
              children: [
                const Text("Orders",
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                Icon(Icons.add_shopping_cart_rounded,
                    color: Colors.white, size: 50.0),
              ],
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment(
                    0.8, 0.0), // 10% of the width, so there are ten blinds.
                colors: <Color>[
                  Color(0xffee0000),
                  Color(0xffeeee00)
                ], // red to yellow
                tileMode:
                    TileMode.repeated, // repeats the gradient over the canvas
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child: Column(
              children: [
                const Text("Order Details",
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                Icon(Icons.assessment, color: Colors.white, size: 50.0),
              ],
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment(
                    0.8, 0.0), // 10% of the width, so there are ten blinds.
                colors: <Color>[
                  Color(0xffee0000),
                  Color(0xffeeee00)
                ], // red to yellow
                tileMode:
                    TileMode.repeated, // repeats the gradient over the canvas
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child: Column(
              children: [
                const Text("Favorite",
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                Icon(Icons.favorite, color: Colors.pink, size: 50.0),
              ],
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment(
                    0.8, 0.0), // 10% of the width, so there are ten blinds.
                colors: <Color>[
                  Color(0xffee0000),
                  Color(0xffeeee00)
                ], // red to yellow
                tileMode:
                    TileMode.repeated, // repeats the gradient over the canvas
              ),
            ),
          ),
          // Container(
          //   width: 300.0,
          //   height: 500.0,
          //   decoration: BoxDecoration(
          //       borderRadius: BorderRadius.circular(15),
          //       image: DecorationImage(
          //           image: AssetImage("assert/tree.png"), fit: BoxFit.cover)),
          // ),
        ],
      )),
    );
  }
}
