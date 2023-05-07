import 'package:flutter/material.dart';

class Container_CupertinoSegmentedControl2 extends StatelessWidget {
  final String textN;
  final int indexN;
  final int i;

  const Container_CupertinoSegmentedControl2(
      {super.key, required this.textN, required this.indexN, required this.i});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: 130,
      height: 40,
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
              color: indexN == i ? Colors.white : Colors.white54,
              width: indexN == i ? 3 : 0),
        ),
      ),
      child: Text(
        textN,
        textAlign: TextAlign.center,
        style: TextStyle(
            color: indexN == i ? Colors.white : Colors.white38, fontSize: 20),
      ),
    );
  }
}
