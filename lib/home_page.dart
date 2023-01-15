import 'package:flutter/material.dart';
import 'dart:math' as math;

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late Color color = Colors.white;
  void _changeColor() {
    setState(() => color = Color((math.Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(widget.title),
      ),
      body: GestureDetector(
        onTap: () {
          _changeColor();
        },
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: color,
          child: const Center(
            child: Text(
              'Hey there, \nGlory to Ukrane!',
              style: TextStyle(color: Colors.amber, fontWeight: FontWeight.bold, fontSize: 40),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}