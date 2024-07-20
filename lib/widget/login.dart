import 'package:flutter/material.dart';
import 'package:project7/widget/home_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController mobilenumberControler = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [],
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Center(
              child: Column(
            children: [
              SizedBox(
                height: 150,
              ),
              Container(
                child: Image.asset("assets/images/quick.jpg"),
              ),
              SizedBox(
                height: 80,
              ),
              Container(
                child: Image.asset("assets/images/enter.jpg"),
              ),
              Container(
                margin: EdgeInsets.only(top: 40),
                height: 40,
                width: 250,
                child: TextField(
                  obscureText: true,
                  controller: mobilenumberControler,
                ),
                decoration: BoxDecoration(
                    border: Border.all(color: Color.fromRGBO(0, 0, 0, 1)),
                    borderRadius: BorderRadius.circular(10)),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  String number = mobilenumberControler.text;
                  if (number == "03333517164") {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomeScreen()));
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: const Text('Invalid Mobile Number'),
                    ));
                  }
                },
                child: Text(
                  "Continue",
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromRGBO(65, 87, 255, 1),
                  foregroundColor: const Color.fromRGBO(255, 255, 255, 1),
                ),
              )
            ],
          )),
        ),
      ),
    );
  }
}
