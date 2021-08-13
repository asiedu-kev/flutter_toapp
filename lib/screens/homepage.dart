import 'package:flutter/material.dart';
import 'package:mytodos/screens/widgets.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Container(
      color: Color(0xFFF6F6F6),
      width: double.infinity,
      padding: EdgeInsets.symmetric(
        horizontal: 15,
        vertical: 15,
      ),
      child: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(
                  bottom: 32.0,
                ),
                child: Image(image: AssetImage('assets/images/logo.png')),
              ),
              TaskCardWidget(title: "First todo"),
              TaskCardWidget(title: "Hello")
            ],
          ),
          Positioned(
              bottom: 0.0,
              right: 0.0,
              child: Container(
                  width: 60.0,
                  height: 60.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Color(0xFF7349FE)),
                  child:
                      Image(image: AssetImage('assets/images/add_icon.png'))))
        ],
      ),
    )));
  }
}
