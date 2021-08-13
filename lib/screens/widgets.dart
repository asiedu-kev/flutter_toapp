import 'package:flutter/material.dart';

class TaskCardWidget extends StatelessWidget {
  final String title;
  TaskCardWidget({required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 15),
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(10)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title,
              style: TextStyle(
                  fontSize: 22,
                  color: Color(0xFF211551),
                  fontWeight: FontWeight.bold)),
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Text(
                'Hello user! Welcome to mytodos. That is a default task that you can edit or delete to start using the app.',
                style: TextStyle(
                    fontSize: 15, color: Color(0xFF86829D), height: 1.5)),
          )
        ],
      ),
    );
  }
}
