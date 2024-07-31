import 'package:flutter/material.dart';
import 'package:project7/widget/product_detail.dart';
import 'package:project7/widget/profile.dart';

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
      child: SingleChildScrollView(
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
              top: 160,
              left: 60,
              child: Container(
                height: 40,
                width: 250,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(20),
                    color: Color.fromRGBO(255, 255, 255, 1)),
                child: TextField(
                  controller: TextEditingController(),
                  decoration: InputDecoration(
                    prefix: Icon(Icons.search),
                    hintText: 'Search Medicine & Healthcare products',
                  ),
                ),
              ),
            ),
          ]),
        ),
        Column(children: [
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
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ProductDetail()));
                    },
                    child: Text(
                      "More",
                      style: TextStyle(color: Color.fromRGBO(0, 106, 255, 1)),
                    )),
              )
            ],
          ),
          Row(
            children: [
              SizedBox(
                width: 15,
              ),
              Container(
                child: Image.asset("assets/images/product.jpg"),
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                child: Image.asset("assets/images/product.jpg"),
              )
            ],
          ),
          Row(
            children: [
              SizedBox(
                width: 15,
              ),
              Container(
                child: Image.asset("assets/images/product.jpg"),
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                child: Image.asset("assets/images/product.jpg"),
              )
            ],
          )
        ]),
        BottomAppBar(
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            color: Color.fromRGBO(255, 255, 255, 1),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.home_outlined,
                    color: Color.fromRGBO(65, 87, 255, 1),
                  ),
                ),
                IconButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ProductDetail()));
                  },
                  icon: Icon(
                    Icons.notification_add_outlined,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.add_box,
                    color: Color.fromRGBO(65, 87, 255, 1),
                  ),
                ),
                IconButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Card()));
                  },
                  icon: Icon(
                    Icons.shopping_bag_outlined,
                  ),
                ),
                IconButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Profile()));
                  },
                  icon: Icon(
                    Icons.person_outlined,
                    color: Color.fromRGBO(65, 87, 255, 1),
                  ),
                ),
              ],
            ),
          ),
        )
      ])),
    ));
  }
}
