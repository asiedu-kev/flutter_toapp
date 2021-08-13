import 'package:flutter/material.dart';
import 'package:mytodos/screens/homepage.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({Key? key}) : super(key: key);

  @override
  _LoginpageState createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
        body: SafeArea(
            child: Container(
      padding: EdgeInsets.only(top: size.height / 3),
      child: Column(children: [
        Image(image: AssetImage('assets/images/logo.png')),
        Text(
          'MYTODOS',
          style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Color(0xFF211551)),
        ),
        Expanded(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 28, vertical: 16),
              child: TextField(
                decoration: InputDecoration(
                  border: UnderlineInputBorder(),
                  hintText: 'Entrer votre identifiant',
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 28, vertical: 16),
              child: TextFormField(
                decoration: InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: 'Entrer votre mot de passe',
                ),
              ),
            ),
            Center(
              child: TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Homepage()));
                },
                child: Text('Se Connecter',
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                style: TextButton.styleFrom(
                    primary: Colors.white,
                    backgroundColor: Color(0xFF211551),
                    onSurface: Colors.grey,
                    elevation: 5,
                    padding: EdgeInsets.all(10)),
              ),
            )
          ],
        ))
      ]),
    )));
  }
}
