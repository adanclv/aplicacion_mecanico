import 'package:flutter/material.dart';

class BottonAddIcon extends StatelessWidget {
  final IconData iconName;
  final String textName;

  const BottonAddIcon(
      {super.key, required this.iconName, required this.textName});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFFE6EFFF),
      padding: EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: [
          Container(
            height: 60,
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Color.fromARGB(255, 200, 210, 227)),
            child: Icon(
              color: Colors.black,
              iconName,
              size: 35,
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Container(
            child: Text(
              textName,
              style: TextStyle(fontSize: 20, color: Colors.black),
            ),
          )
        ],
      ),
    );
  }
}
