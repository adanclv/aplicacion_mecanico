import 'package:aplicacion_mecanico/vistas/Registro_citas.dart';
import 'package:flutter/material.dart';

class Pantalla_citas extends StatefulWidget {
  const Pantalla_citas({super.key});

  @override
  State<Pantalla_citas> createState() => _Pantalla_citas();
}

class _Pantalla_citas extends State<Pantalla_citas> {
  List<String> mesActual = [
    'empty',
    'Enero',
    'Febrero',
    'Marzo',
    'Abril',
    'Mayo',
    'Junio',
    'Julio',
    'Agosto',
    'Septiembre',
    'Octubre',
    'Noviembre',
    'Diciembre'
  ];

  List<String> diaSemana = [
    'empty',
    'Lunes',
    'Martes',
    'Miercoles',
    'Jueves',
    'Viernes',
    'Sabado',
    'Domingo'
  ];

  int dayNow = DateTime.now().day;
  int monthNow = DateTime.now().month;
  int yearNow = DateTime.now().year;
  int weekdayNow = DateTime.now().weekday;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.all(25),
                  child: Text(
                    'Citas',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 30),
                  child: Text(
                    '${diaSemana[weekdayNow]} $dayNow de ${mesActual[monthNow]} $yearNow',
                    style: TextStyle(
                        color: Colors.white, fontSize: 18, letterSpacing: 2),
                  ),
                ),
              ],
            ),
            Expanded(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.dynamic_feed_outlined,
                      color: Colors.white38,
                      size: 150,
                    ),
                    Text(
                      'No hay Citas',
                      style: TextStyle(color: Colors.white, fontSize: 25),
                    ),
                    Text(
                      'Presiona el boton para asignar cita',
                      style: TextStyle(color: Colors.white38),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: 20, bottom: 20),
              child: FloatingActionButton(
                backgroundColor: Colors.white,
                focusColor: Colors.white,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Registro_citas(),
                    ),
                  );
                },
                child: Icon(
                  Icons.add,
                  color: Theme.of(context).primaryColor,
                  size: 30,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
