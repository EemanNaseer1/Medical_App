import 'package:flutter/material.dart';
import 'package:project7/widget/walkthrough.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(children: [
        GestureDetector(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context)=> const WalkThrough()));
          },
          child: Container(
            child: Image.asset("assets/images/logo.jpg"),
          ),
        )
      ])),
    );
  }
}
