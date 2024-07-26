import 'package:flutter/material.dart';

class Cart extends StatefulWidget {
  const Cart({super.key});

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  int number = 1;
  int price = 25;
  num add = 25 + 25;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Container(
              padding: EdgeInsets.only(right: 250),
              child: Text(
                "Your cart",
                style: TextStyle(fontWeight: FontWeight.bold),
              ))
        ],
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                child: Text("2 Items in your cart"),
              ),
              Container(
                  child: TextButton(
                      onPressed: () {},
                      child: Text("+ Add more",
                          style: TextStyle(
                            color: Color.fromRGBO(65, 87, 255, 1),
                          ))))
            ],
          ),
          Stack(
            children: [
              Container(
                padding: EdgeInsets.only(
                  right: 250,
                ),
                height: 100,
                width: MediaQuery.of(context).size.width,
                child: Image.asset("assets/images/product1.jpg"),
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 70, top: 10),
                    child: Text(
                      "Sugar free gold",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 100),
                    child: Text("bottle of 500 pellets"),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: TextButton(
                        onPressed: () {},
                        child: Text(
                          "Rs.$price",
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.black),
                        )),
                  )
                ],
              ),
              Row(
                children: [
                  GestureDetector(
                      onTap: () {
                        setState(() {
                          number--;
                          print(price);
                        });
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(left: 270, top: 60),
                        child: Container(
                            child: Image.asset("assets/images/minus.jpg")),
                      )),
                  Padding(
                    padding: const EdgeInsets.only(top: 60),
                    child: Text("$number"),
                  ),
                  GestureDetector(
                      onTap: () {
                        setState(() {
                          number++;
                          print(price);
                        });
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(top: 60),
                        child: Container(
                            child: Image.asset("assets/images/plus.jpg")),
                      ))
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 330),
                child: Icon(
                  Icons.cancel,
                  color: Colors.white,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
