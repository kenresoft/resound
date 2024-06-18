import 'dart:math';

import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.sizeOf(context).height;
    var width = MediaQuery.sizeOf(context).width;
    IconData icon = Icons.wifi;
    String text = 'Air Play';
    return Scaffold(
      body: Container(
        height: height,
        width: width,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xff171719),
              Color(0xff537388),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomLeft,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // Ready button

            // RichText

            // Smart Speaker

            // Image

            // Container
            Container(
              height: 250,
              width: width,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(50),
                  topRight: Radius.circular(50),
                ),
                gradient: LinearGradient(
                  stops: const [0.05,0.85],
                  colors: const [
                    Color(0xff171719),
                    Color(0xff537388),
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomRight,
                  transform: GradientRotation(50.deg),
                  /*colors: [
                    Color(0xff537388),
                    Color(0xff171719),
                  ],
                  stops: [0, 0.7],
                  begin: Alignment(-1, 3),
                  end: Alignment(1, -3),*/
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  // Row
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      // AirPlay
                      buildColumn(icon, text),

                      // Bluetooth
                      buildColumn(icon, text),

                      // Audio
                      buildColumn(icon, text),
                    ],
                  ),

                  // Button
                  FilledButton(
                    style: FilledButton.styleFrom(
                      minimumSize: Size(width - 100, 60),
                      backgroundColor: const Color(0xffFB4C51),
                    ),
                    onPressed: () {},
                    child: const Text('Connect and Pair'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Column buildColumn(IconData icon, String text) {
    return Column(
      children: [
        Icon(icon),
        Text(text),
      ],
    );
  }
}

extension ExtensionName on num {
  double get deg {
    return this * pi / 180;
  }
}
