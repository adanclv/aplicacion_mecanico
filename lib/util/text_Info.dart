import 'package:flutter/material.dart';

class Text_info extends StatelessWidget {
  final String cadena;
  final int opcion;
  final Color colores;

  const Text_info(
      {super.key,
      required this.cadena,
      required this.opcion,
      required this.colores});

  @override
  Widget build(BuildContext context) {
    return opcion == 0
        ? Padding(
            padding: EdgeInsets.only(left: 25, top: 20),
            child: Text(
              cadena,
              style: TextStyle(color: colores, fontSize: 20, letterSpacing: 2),
            ),
          )
        : Padding(
            padding: EdgeInsets.only(left: 10, right: 25, top: 25, bottom: 20),
            child: Text(
              cadena,
              style: TextStyle(color: colores, fontSize: 30),
            ),
          );
  }
}
