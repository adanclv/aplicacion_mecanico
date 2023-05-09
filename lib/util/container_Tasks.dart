import 'package:aplicacion_mecanico/controlador/Save_servicio.dart';
import 'package:flutter/material.dart';

class Container_tasks extends StatelessWidget {
  final String noOrden;
  final String nombre;
  final String telefono;
  final String vehiculo;
  final String placas;

  Container_tasks(
      {super.key,
      required this.noOrden,
      required this.nombre,
      required this.telefono,
      required this.vehiculo,
      required this.placas});

  double tamano() {
    double alto = 0.0;
    if (servicio.length == 1) {
      alto = 15.0;
    } else if (servicio.length == 2) {
      alto = 40.0;
    } else if (servicio.length == 3) {
      alto = 65.0;
    } else if (servicio.length == 4) {
      alto = 91.0;
    }
    return alto;
  }

  bool check(String servicio) {
    bool doing = false;
    switch (servicio) {
      case 'Afinacion (Por rellenar)':
        doing = true;
        break;
      case 'Suspension (Por rellenar)':
        doing = true;
        break;
      case 'Frenos (Por rellenar)':
        doing = true;
        break;
      case 'Direccion Hidraulica (Por rellenar)':
        doing = true;
        break;
    }
    return doing;
  }

  Save_servicio ss = Save_servicio();
  List<String> servicio = [];

  @override
  Widget build(BuildContext context) {
    servicio = ss.list_servicios(nombre);
    return Container(
      decoration: BoxDecoration(
          color: Theme.of(context).secondaryHeaderColor,
          borderRadius: BorderRadius.circular(15)),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'No. $noOrden',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 26,
                  color: Colors.black),
            ),
            SizedBox(height: 10),
            SizedBox(
              width: 250,
              height: tamano(),
              child: ListView(
                physics: NeverScrollableScrollPhysics(),
                children: servicio
                    .map(
                      (e) => Container(
                        padding: EdgeInsets.only(bottom: 8),
                        child: Text(
                          e,
                          style: TextStyle(
                              fontSize: 17,
                              color:
                                  check(e) == true ? Colors.red : Colors.black),
                        ),
                      ),
                    )
                    .toList(),
              ),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Cliente: $nombre',
                  style: TextStyle(fontSize: 17, color: Colors.black),
                ),
                Text(
                  'Tel: $telefono',
                  style: TextStyle(fontSize: 17, color: Colors.black),
                ),
              ],
            ),
            SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  vehiculo,
                  style: TextStyle(fontSize: 17, color: Colors.black),
                ),
                Text(
                  'Placas: $placas',
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
