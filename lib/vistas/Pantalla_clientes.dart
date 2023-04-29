import 'package:aplicacion_mecanico/vistas/Registro_clientes.dart';
import 'package:flutter/material.dart';

class Pantalla_clientes extends StatefulWidget {
  const Pantalla_clientes({super.key});

  @override
  State<Pantalla_clientes> createState() => _Pantalla_clientes();
}

class _Pantalla_clientes extends State<Pantalla_clientes> {
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
              padding: const EdgeInsets.only(left: 30, right: 30),
              child: TextField(
                style: TextStyle(color: Colors.black),
                decoration: InputDecoration(
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  fillColor: Color(0xFFE6EFFF),
                  filled: true,
                  label: Text(
                    'Buscar clientes...',
                    style: TextStyle(color: Colors.black),
                  ),
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.circular(10)),
                ),
              ),
            ),
            Expanded(
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
                      builder: (context) => Registro_clientes(),
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
