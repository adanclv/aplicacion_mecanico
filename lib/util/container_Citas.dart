import 'package:aplicacion_mecanico/controlador/Save_citas.dart';
import 'package:flutter/material.dart';

class Container_citas extends StatelessWidget {
  final String nombre;
  final String fecha;
  final String hora;
  final String vehiculo;
  Container_citas(
      {super.key,
      required this.nombre,
      required this.fecha,
      required this.hora,
      required this.vehiculo});

  Save_citas sc = Save_citas();
  List<String> servicio = [];

  @override
  Widget build(BuildContext context) {
    servicio = sc.list_servicios(nombre);
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: Theme.of(context).secondaryHeaderColor,
          borderRadius: BorderRadius.circular(15)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '$nombre',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 26,
                      color: Colors.black),
                ),
                Text(
                  '$fecha',
                  style: TextStyle(fontSize: 18, color: Colors.black),
                ),
              ],
            ),
            SizedBox(height: 8),
            Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: servicio
                    .map(
                      (e) => Text(
                        e,
                        style: TextStyle(fontSize: 17, color: Colors.black),
                      ),
                    )
                    .toList()),
            SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  vehiculo,
                  style: TextStyle(fontSize: 17, color: Colors.black),
                ),
                Text(
                  '$hora',
                  style: TextStyle(fontSize: 17, color: Colors.black),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
