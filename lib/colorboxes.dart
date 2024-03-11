import 'package:flutter/material.dart';

class ColorBoxes extends StatefulWidget {
  const ColorBoxes({super.key});

  @override
  State<ColorBoxes> createState() => _ColorBoxesState();
}

class _ColorBoxesState extends State<ColorBoxes> {
  bool Box1Color = false;
  bool Box2Color = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text("Color Box"),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              //Box1
              Column(
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: Box1Color ? Colors.yellow : Colors.black,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.white.withOpacity(0.6),
                          spreadRadius: 5,
                          blurRadius: 10,
                          offset: const Offset(0, 3),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  // Box1 Button
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        Box1Color = !Box1Color;
                      });
                    },
                    child: const Text("Color Box1"),
                  ),
                ],
              ),
              const SizedBox(
                width: 20,
              ),
              //Box2
              Column(
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: Box2Color ? Colors.red : Colors.black,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.white.withOpacity(0.6),
                          spreadRadius: 5,
                          blurRadius: 10,
                          offset: const Offset(0, 3),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  // Box2 Button
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        Box2Color = !Box2Color;
                      });
                    },
                    child: const Text("Color Box2"),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
