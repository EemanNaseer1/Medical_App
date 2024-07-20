import 'package:flutter/material.dart';
import 'package:project7/widget/login.dart';

class WalkThrough extends StatelessWidget {
  const WalkThrough({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Column(
          children: [
            SizedBox(
              height: 120,
            ),
            Container(
              child: Image.asset("assets/images/mobile.jpg"),
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              child: Image.asset("assets/images/text.jpg"),
            ),
            Row(
              children: [
                Container(
                    margin: EdgeInsets.only(top: 100, left: 20),
                    child: TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const LoginScreen(),
                            ),
                          );
                        },
                        child: Text(
                          "Skip",
                          style:
                              TextStyle(color: Color.fromRGBO(9, 15, 71, 0.45)),
                        ))),
                Container(
                  margin: EdgeInsets.only(left: 80, top: 100),
                  child: Image.asset("assets/images/dot.jpg"),
                ),
                Container(
                    margin: EdgeInsets.only(top: 100, left: 80),
                    child: TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const LoginScreen(),
                            ),
                          );
                        },
                        child: Text("Next",
                          style:
                              TextStyle(color: Color.fromRGBO(65, 87, 255, 1)),
                        ))),
              ],
            )
          ],
        ),
      )),
    );
  }
}
