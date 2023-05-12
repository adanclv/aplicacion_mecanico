import 'package:aplicacion_mecanico/controlador/Crear_cliente.dart';
import 'package:aplicacion_mecanico/controlador/Save_terminado.dart';
import 'package:aplicacion_mecanico/util/container_Tasks.dart';
import 'package:aplicacion_mecanico/vistas/Pantalla_servicio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../modelo/Pendientes.dart';
import '../util/container_CupertinoSegmentedControl.dart';

class Pantalla_principal extends StatefulWidget {
  const Pantalla_principal({super.key});

  @override
  State<Pantalla_principal> createState() => _Pantalla_principal();
}

class _Pantalla_principal extends State<Pantalla_principal> {
  int indexCupertino = 0;
  int horaActual = DateTime.now().hour;
  String mensaje = '';
  int i = 0;

  Crear_cliente newCliente = Crear_cliente();
  Save_terminado st = Save_terminado();
  List<Pendientes> tasks = [];

  @override
  void initState() {
    super.initState();
    tasks = newCliente.listaPendientes();
  }

  String buenosDTN() {
    if (horaActual > 5 && horaActual <= 11) {
      mensaje = 'Buenos Dias';
    } else if (horaActual >= 11 && horaActual < 20) {
      mensaje = 'Buenas Tardes';
    } else {
      mensaje = 'Buenas Noches';
    }
    return mensaje;
  }

  void actualizar() {
    setState(() {
      tasks = newCliente.listaPendientes();
    });
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
                  hintText: 'Buscar...',
                  hintStyle: TextStyle(color: Theme.of(context).primaryColor),
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.circular(10)),
                ),
                onChanged: (value) {
                  setState(() {
                    tasks = newCliente.searchPendientes(value);
                  });
                },
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.only(bottom: 1),
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(color: Colors.white38, width: 0.5),
                ),
              ),
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
            SizedBox(
              height: 20,
            ),
            newCliente.existeTasks() == false
                ? Expanded(
                    child: Center(
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.assignment_outlined,
                                color: Colors.white38, size: 150),
                            Text(
                              'Sin Pendientes',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 25),
                            ),
                            Text(
                              'Presiona agregar para realizar servicio',
                              style: TextStyle(color: Colors.white38),
                            ),
                            SizedBox(height: 20),
                          ],
                        ),
                      ),
                    ),
                  )
                : Expanded(
                    child: tasks.isEmpty
                        ? Center(
                            child: SingleChildScrollView(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.assignment_outlined,
                                      color: Colors.white38, size: 150),
                                  Text(
                                    'No existe Pendiente',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 25),
                                  ),
                                  Text(
                                    'Presiona agregar para realizar servicio',
                                    style: TextStyle(color: Colors.white38),
                                  ),
                                  SizedBox(height: 20),
                                ],
                              ),
                            ),
                          )
                        : RefreshIndicator(
                            child: ListView(
                              children: tasks
                                  .map(
                                    (e) => ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                          elevation: 0,
                                          padding: EdgeInsets.only(
                                              left: 15,
                                              right: 15,
                                              bottom: 5,
                                              top: 5)),
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => Pantalla_servicio(
                                                noOrden: e.noOrden,
                                                nombre: e.nombre,
                                                telefono: e.telefono,
                                                vehiculo:
                                                    '${e.marca} ${e.modelo} ${e.year}',
                                                placas: e.placas,
                                                vin: e.vin,
                                                color: e.color),
                                          ),
                                        ).whenComplete(() {
                                          setState(() {
                                            st.delete(e.noOrden);
                                          });
                                          actualizar();
                                        });
                                      },
                                      child: Container_tasks(
                                          noOrden: e.noOrden,
                                          nombre: e.nombre,
                                          telefono: e.telefono,
                                          vehiculo:
                                              '${e.marca} ${e.modelo} ${e.year}',
                                          vin: e.vin),
                                    ),
                                  )
                                  .toList(),
                            ),
                            onRefresh: () async {
                              actualizar();
                            },
                          ),
                  ),
          ],
        ),
      ),
    );
  }
}
