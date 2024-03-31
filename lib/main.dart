import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xFF212325),
      ),
      home: WelcomeScreen(),
    );
  }
}

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
          padding: EdgeInsets.only(top: 100, bottom: 40),
          decoration: BoxDecoration(
              color: Colors.black,
              image: DecorationImage(
                image: AssetImage("images/bg1.png"),
                fit: BoxFit.cover,
                opacity: 0.9,
              )),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Holland Chic",
                style: TextStyle(
                  fontFamily: 'Lobster',
                  fontSize: 50,
                  color: Colors.brown[500],
                ),
              ),
              Column(
                children: [
                  Text(
                    "Reach your beauty with Holland Chic",
                    style: TextStyle(
                      color: Colors.brown[300],
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      letterSpacing: 1,
                    ),
                  ),
                  SizedBox(height: 80),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => HomeScreen(),
                          ));
                    },
                    child: Ink(
                      child: Container(
                        padding:
                        EdgeInsets.symmetric(vertical: 15, horizontal: 50),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Text(
                          "Get Started",
                          style: TextStyle(
                            color: Colors.pink[100],
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          )),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}