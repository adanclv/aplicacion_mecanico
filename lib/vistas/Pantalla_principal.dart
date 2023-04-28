import 'package:aplicacion_mecanico/util/container_CupertinoSegmentedControl.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Pantalla_principal extends StatefulWidget {
  const Pantalla_principal({super.key});

  @override
  State<Pantalla_principal> createState() => _Pantalla_principal();
}

class _Pantalla_principal extends State<Pantalla_principal> {
  int indexCupertino = 0;
  int horaActual = DateTime.now().hour;
  String mensaje = '';

  String buenosDTN() {
    if (horaActual > 0 && horaActual <= 11) {
      mensaje = 'Buenos Dias';
    } else if (horaActual >= 11 && horaActual < 20) {
      mensaje = 'Buenas Tardes';
    } else {
      mensaje = 'Buenas Noches';
    }
    return mensaje;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(25),
              child: Text(
                buenosDTN(),
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 30),
              child: Text(
                'Task',
                style: TextStyle(
                    color: Colors.white, fontSize: 18, letterSpacing: 2),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 30),
              child: TextField(
                style: TextStyle(color: Colors.black),
                decoration: InputDecoration(
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  fillColor: Color(0xFFE6EFFF),
                  filled: true,
                  label: Text(
                    'Buscar...',
                    style: TextStyle(color: Colors.black),
                  ),
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.circular(10)),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),

            Center(
              child: CupertinoSegmentedControl<int>(
                unselectedColor: Color(0xFF15202B),
                //selectedColor: Colors.white,
                children: {
                  0: Container_CupertinoSegmentedControl(
                      textN: 'Todo', indexN: indexCupertino, i: 0),
                  1: Container_CupertinoSegmentedControl(
                      textN: 'Por rellenar', indexN: indexCupertino, i: 1),
                  2: Container_CupertinoSegmentedControl(
                      textN: 'En proceso', indexN: indexCupertino, i: 2),
                },
                groupValue: indexCupertino,
                onValueChanged: (value) {
                  setState(() {
                    indexCupertino = value;
                    print('$indexCupertino, Hora $horaActual');
                  });
                },
              ),
            ),
//            Center(child: Chip(label: 'label'),),
            SizedBox(
              height: 20,
            ),
            Expanded(
                child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.assignment_outlined,
                      color: Colors.white38, size: 150),
                  Text(
                    'Sin Pendientes todavia',
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                  Text(
                    'Presiona agregar para realizar servicio',
                    style: TextStyle(color: Colors.white38),
                  ),
                ],
              ),
            )),
          ],
        ),
      ),
    );
  }
}
