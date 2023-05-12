import 'package:aplicacion_mecanico/controlador/Crear_cliente.dart';
import 'package:aplicacion_mecanico/util/container_Clientes.dart';
import 'package:aplicacion_mecanico/vistas/Pantalla_clientesInfo.dart';
import 'package:aplicacion_mecanico/vistas/Registro_clientes.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

import '../modelo/Clientes.dart';

class Pantalla_clientes extends StatefulWidget {
  const Pantalla_clientes({super.key});

  @override
  State<Pantalla_clientes> createState() => _Pantalla_clientes();
}

class _Pantalla_clientes extends State<Pantalla_clientes> {
  var box = Hive.box('clientesBox').values.toList();
  Crear_cliente newCliente = Crear_cliente();
  List<Cliente> clientes = [];
  List<String> servicios = [];

  @override
  void initState() {
    super.initState();
    clientes = newCliente.listaClientes();
  }

  void servicio(String nombre, String noOrden) {
    servicios = newCliente.list_servicios(nombre, noOrden);
  }

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
                    'Clientes',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25, right: 25),
              child: TextField(
                style: TextStyle(color: Colors.black),
                decoration: InputDecoration(
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  fillColor: Color(0xFFE6EFFF),
                  filled: true,
                  hintText: 'Buscar Clientes...',
                  hintStyle: TextStyle(color: Theme.of(context).primaryColor),
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.circular(10)),
                ),
                onChanged: (value) {
                  setState(() {
                    clientes = newCliente.searchClientes(value);
                  });
                },
              ),
            ),
            SizedBox(height: 20),
            newCliente.existeClientes == false
                ? Expanded(
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.people_outline_outlined,
                            color: Colors.white38,
                            size: 150,
                          ),
                          Text(
                            'No hay clientes',
                            style: TextStyle(color: Colors.white, fontSize: 25),
                          ),
                          Text(
                            'Presiona el boton para crear cliente',
                            style: TextStyle(color: Colors.white38),
                          ),
                        ],
                      ),
                    ),
                  )
                : Expanded(
                    child: clientes.isEmpty
                        ? Center(
                            child: SingleChildScrollView(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.people_outline_outlined,
                                    color: Colors.white38,
                                    size: 150,
                                  ),
                                  Text(
                                    'No existe Clientes',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 25),
                                  ),
                                  Text(
                                    'Presiona el boton para crear cliente',
                                    style: TextStyle(color: Colors.white38),
                                  ),
                                ],
                              ),
                            ),
                          )
                        : ListView(
                            children: clientes
                                .map(
                                  (e) => ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        elevation: 0,
                                        padding: EdgeInsets.only(
                                            left: 25,
                                            right: 25,
                                            bottom: 5,
                                            top: 5)),
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              Pantalla_clientesInfo(
                                                  nombre: e.nombre,
                                                  telefono: e.telefono,
                                                  calle: e.calle,
                                                  numero: e.numero,
                                                  colonia: e.colonia,
                                                  cp: e.cp),
                                        ),
                                      );
                                    },
                                    child: Container_clientes(
                                      nombre: e.nombre,
                                      telefono: e.telefono,
                                    ),
                                  ),
                                )
                                .toList(),
                          ),
                  ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.white,
        focusColor: Colors.white,
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Registro_clientes(
                opcion: 1,
                titulo: 'Registro Cliente',
              ),
            ),
          );
        },
        child: Icon(
          Icons.add,
          color: Theme.of(context).primaryColor,
          size: 30,
        ),
      ),
    );
  }
}
