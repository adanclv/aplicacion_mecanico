import 'package:flutter/material.dart';

class Container_CupertinoSegmentedControl extends StatelessWidget {
  final String textN;
  final int indexN;
  final int i;

  const Container_CupertinoSegmentedControl(
      {super.key, required this.textN, required this.indexN, required this.i});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 15, right: 15, bottom: 5),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: indexN == i ? Color(0xFf95A6DC) : Color(0xFF15202B),
          ),
        ),
      ),
      //color: Colors.black,
      child: Text(
        textN,
        style: TextStyle(
            color: indexN == i ? Colors.white : Colors.white38, fontSize: 20),
      ),
    );
  }
}
