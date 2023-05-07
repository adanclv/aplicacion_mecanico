import 'package:flutter/material.dart';

class Container_clientes extends StatelessWidget {
  final String nombre;
  final String telefono;
  final String Lservicio;

  const Container_clientes(
      {super.key,
      required this.nombre,
      required this.telefono,
      required this.Lservicio});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Theme.of(context).secondaryHeaderColor,
          borderRadius: BorderRadius.circular(15)),
      child: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10, top: 8, bottom: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    nombre,
                    style: TextStyle(fontSize: 26, color: Colors.black),
                  ),
                  Icon(
                    Icons.person_2_rounded,
                    size: 35,
                    color: Colors.black,
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 30),
              child: Text(
                'Telefono: $telefono',
                style: TextStyle(fontSize: 16, color: Colors.black),
              ),
            ),
            SizedBox(height: 5),
            Padding(
              padding: EdgeInsets.only(left: 30),
              child: Text(
                'Ultimo Servicio: $Lservicio',
                style: TextStyle(fontSize: 16, color: Colors.black),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
