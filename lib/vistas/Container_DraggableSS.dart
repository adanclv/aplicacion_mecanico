import 'package:aplicacion_mecanico/controlador/Crear_cliente.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Container_DraggableSS extends StatefulWidget {
  final ScrollController scroll;
  final String nombre;
  final String noOrden;

  Container_DraggableSS(
      {super.key,
      required this.scroll,
      required this.nombre,
      required this.noOrden});

  @override
  State<Container_DraggableSS> createState() => _Container_DraggableSS();
}

Crear_cliente newCliente = Crear_cliente();

class _Container_DraggableSS extends State<Container_DraggableSS> {
  List<Widget> paginas = [];
  List<String> lista_servicios = [];

  @override
  void initState() {
    super.initState();
    lista_servicios = newCliente.list_servicios(widget.nombre, false);
    paginas = newCliente.list_paginas(lista_servicios, widget.noOrden);
  }

  int indexCupertino = 0;

  @override
  Widget build(BuildContext context) {
    final mapa = newCliente.mapa_servicios(lista_servicios, indexCupertino);

    return SingleChildScrollView(
      controller: widget.scroll,
      child: Container(
        height: 765,
        decoration: BoxDecoration(
          color: Theme.of(context).primaryColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40),
            topRight: Radius.circular(40),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 5),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  ),
                ),
                child: CupertinoSegmentedControl<int>(
                  borderColor: Colors.transparent,
                  selectedColor: Colors.transparent,
                  unselectedColor: Colors.transparent,
                  children: mapa,
                  groupValue: indexCupertino,
                  onValueChanged: (value) {
                    setState(() {
                      indexCupertino = value;
                      print('$indexCupertino');
                    });
                  },
                ),
              ),
            ),
            Expanded(child: paginas[indexCupertino]),
          ],
        ),
      ),
    );
  }
}
