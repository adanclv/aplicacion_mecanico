import 'package:aplicacion_mecanico/modelo/Clientes.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

class Mostrar_dialog extends StatefulWidget {
  final String nombre;
  const Mostrar_dialog({super.key, required this.nombre});

  @override
  State<Mostrar_dialog> createState() => _Mostrar_dialog();
}

class _Mostrar_dialog extends State<Mostrar_dialog> {
  List<String> clientesN = [];
  String nombreSelec = '';

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Ccontains();
  }

  void _seleccionado(value) {
    setState(() {
      nombreSelec = value;
    });
  }

  void Ccontains() {
    var box = Hive.box('clientesBox');

    for (Cliente clientes in box.values) {
      if (clientes.nombre.contains('Adan')) {
        setState(() {
          clientesN.add(clientes.nombre);
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return SimpleDialog(
      backgroundColor: Theme.of(context).primaryColor,
      children: [
        Container(
          height: 200,
          width: 200,
          child: ListView(
            children: clientesN
                .map(
                  (e) => Padding(
                    padding: EdgeInsets.only(left: 10, right: 10, bottom: 5),
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border(
                          top: BorderSide(color: Colors.white),
                          bottom: BorderSide(color: Colors.white),
                        ),
                      ),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(elevation: 0),
                        onPressed: () {
                          _seleccionado(e);
                          print(nombreSelec);
                        },
                        child: Text(e),
                      ),
                    ),
                  ),
                )
                .toList(),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(elevation: 0),
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text(
                'Cancelar',
                style: TextStyle(fontSize: 15, color: Colors.white),
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(elevation: 0),
              onPressed: () {
                Ccontains();
                print(clientesN.toString());
              },
              child: Text(
                'Aceptar',
                style: TextStyle(fontSize: 15, color: Colors.white),
              ),
            ),
            SizedBox(width: 10),
          ],
        ),
      ],
    );
  }
}
