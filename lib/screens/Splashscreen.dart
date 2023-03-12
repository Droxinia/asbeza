import 'dart:async';

import 'package:asbeza/main.dart';
import 'package:flutter/material.dart';

class Splashscreen extends StatelessWidget {
  const Splashscreen({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 3), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => const Base()));
    });
    return Scaffold(
        body: Column(
      children: const [
        //image logo
        Padding(
            padding: EdgeInsets.only(left: 80, right: 80, bottom: 40, top: 160),
            child: Image(image: AssetImage("assets/groccery.jpg"))),

        //text
        Padding(
          padding: EdgeInsets.all(24.0),
          child: Text(
            'Shop to your hearts content',
            style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
          ),
        ),

        //text
        Text('Fresh items only one click away ')
      ],
    ));
  }
}
