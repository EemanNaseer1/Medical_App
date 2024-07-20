import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Column(children: [
      Container(
        child: Stack(children: [
          Container(
            child: Image.asset("assets/images/rectangle.jpg"),
          ),
          Positioned(
            top: 20,
            left: 20,
            child: Container(
              child: Image.asset("assets/images/home.jpg"),
            ),
          ),
          Positioned(
            top: 180,
            left: 60,
            child: Container(
              height: 40,
              width: 240,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(20),
                  color: Color.fromRGBO(255, 255, 255, 1)),
              child: TextField(
                controller: TextEditingController(),
                decoration: InputDecoration(
                  suffixIcon: Icon(Icons.search),
                  hintText: 'Search Medicine & Healthcare products',
                ),
              ),
            ),
          ),
        ]),
      ),
      Container(
        padding: EdgeInsets.only(right: 180, top: 25),
        child: Text(
          "Top Categories",
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      Container(
        padding: EdgeInsets.only(top: 10),
        child: Image.asset("assets/images/categorie.jpg"),
      ),
      Container(
        padding: EdgeInsets.all(20),
        child: Image.asset("assets/images/add.jpg"),
      ),
      Row(
        children: [
          Container(
            padding: EdgeInsets.only(left: 20),
            child: Text(
              "Deals of the Day",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Spacer(),
          Container(
            child: TextButton(
                onPressed: () {},
                child: Text(
                  "More",
                  style: TextStyle(color: Color.fromRGBO(0, 106, 255, 1)),
                )),
          )
        ],
      ),
    ])));
  }
}

void performsearch(String query) {
  print("Searching for : $query");
}
