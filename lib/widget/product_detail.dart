import 'package:flutter/material.dart';

class ProductDetail extends StatefulWidget {
  const ProductDetail({super.key});

  @override
  State<ProductDetail> createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          AppBar(backgroundColor: Color.fromRGBO(255, 255, 255, 1), actions: [
        Wrap(children: [
          Row(
            children: [
              Icon(Icons.notification_add_outlined),
              SizedBox(
                width: 30,
              ),
              Icon(Icons.shopping_bag_outlined),
              SizedBox(
                width: 20,
              )
            ],
          )
        ])
      ]),
      body: SingleChildScrollView(
        child: Column(children: [
          Container(
            margin: EdgeInsets.only(left: 5),
            child: Text(
              "Sugar Free Gold Low Calories",
              style: TextStyle(
                  color: Color.fromRGBO(9, 15, 71, 1),
                  fontSize: 22,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            child: Text("Etiam mollis metus non purus "),
            margin: EdgeInsets.only(right: 90),
          ),
          Container(
            padding: EdgeInsets.only(left: 15),
            margin: EdgeInsets.only(top: 10),
            child: Image.asset("assets/images/pack.jpg"),
          ),
          Container(
            child: Image.asset("assets/images/dot1.jpg"),
          ),
          Row(
            children: [
              Container(
                padding: EdgeInsets.only(left: 20),
                child: Image.asset("assets/images/rs.jpg"),
              ),
              Container(
                child: Text(
                  "Rs.56",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
              Container(
                padding: EdgeInsets.only(right: 30),
                margin: EdgeInsets.only(top: 40),
                child: Text("Etiam mollis"),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.add_box_outlined,
                      color: Color.fromRGBO(0, 106, 255, 1),
                    )),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                child: Text(
                  "Add to cart",
                  style: TextStyle(color: Color.fromRGBO(0, 106, 255, 1)),
                ),
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.only(right: 220),
            child: Text(
              "Package size",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Row(
              children: [
                SizedBox(
                  width: 20,
                ),
                Container(
                  child: Image.asset("assets/images/yellow.jpg"),
                ),
                SizedBox(
                  width: 20,
                ),
                Container(
                  child: Image.asset("assets/images/box.jpg"),
                ),
                SizedBox(
                  width: 20,
                ),
                Container(
                  child: Image.asset("assets/images/box3.jpg"),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(right: 190, top: 20),
            child: Text(
              "Product Details",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 20),
            child: Image.asset("assets/images/detail.jpg"),
          ),
          Container(
            padding: EdgeInsets.only(right: 220, top: 20),
            child: Text(
              "Ingredients",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 20),
            child: Image.asset("assets/images/ingrediant.jpg"),
          ),
          Row(
            children: [
              Container(
                padding: EdgeInsets.only(top: 20, left: 20),
                child: Text(
                  "Expiry Date",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 20, left: 10),
                child: Text("25/12/2023"),
              )
            ],
          ),
          Row(
            children: [
              Container(
                padding: EdgeInsets.only(top: 20, left: 20),
                child: Text(
                  "Brand Name",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 20, left: 10),
                child: Text("Something"),
              )
            ],
          ),
          Container(
            padding: EdgeInsets.all(20),
            child: Image.asset("assets/images/feedback.jpg"),
          ),
          Container(
            width: 300,
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Card()));
              },
              child: Text(
                "Go to Cart",
                style: TextStyle(color: Colors.white),
              ),
              style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromRGBO(65, 87, 255, 1)),
            ),
          )
        ]),
      ),
    );
  }
}
