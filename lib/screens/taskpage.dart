import 'package:flutter/material.dart';

class Taskpage extends StatefulWidget {
  const Taskpage({Key? key}) : super(key: key);

  @override
  _TaskpageState createState() => _TaskpageState();
}

class _TaskpageState extends State<Taskpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Container(
        padding: EdgeInsets.all(12),
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.only(top: 14),
            child: Row(children: [
              InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: Image(
                      image: AssetImage('assets/images/back_arrow_icon.png')),
                ),
              ),
              Expanded(
                  child: TextField(
                      decoration: InputDecoration(
                          hintText: 'Entrez le titre de la tache',
                          border: InputBorder.none),
                      style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF211551))))
            ]),
          ),
          TextField(
              decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Entrez la description de votre tache"))
        ]),
      ),
    ));
  }
}
