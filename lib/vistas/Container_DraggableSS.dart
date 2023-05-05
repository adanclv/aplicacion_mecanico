import 'package:aplicacion_mecanico/vistas/Condiciones_del_motor.dart';
import 'package:aplicacion_mecanico/vistas/Registro_citas.dart';
import 'package:aplicacion_mecanico/vistas/Registro_clientes.dart';
import 'package:aplicacion_mecanico/vistas/Servicio_afinacion.dart';
import 'package:aplicacion_mecanico/vistas/Servicio_suspension.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../util/container_CupertinoSegmentedControl2.dart';

class Container_DraggableSS extends StatefulWidget {
  final ScrollController scroll;

  Container_DraggableSS({super.key, required this.scroll});

  @override
  State<Container_DraggableSS> createState() => _Container_DraggableSS();
}

class _Container_DraggableSS extends State<Container_DraggableSS> {
  int indexCupertino = 0;
  List<Widget> paginas = [
    Servicio_suspension(),
    Servicio_afinacion(),
    Condiciones_del_motor(),
    Condiciones_del_motor(),
  ];

  @override
  Widget build(BuildContext context) {
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
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Container(
                decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  ),
                ),
                padding: EdgeInsets.only(top: 10, bottom: 1),
                child: CupertinoSegmentedControl<int>(
                  unselectedColor: Color(0xFF15202B),
                  //selectedColor: Colors.white,
                  children: {
                    0: Container_CupertinoSegmentedControl2(
                        textN: 'Suspension', indexN: indexCupertino, i: 0),
                    1: Container_CupertinoSegmentedControl2(
                        textN: 'Afinacion', indexN: indexCupertino, i: 1),
                    2: Container_CupertinoSegmentedControl2(
                        textN: 'Condiciones del Motor',
                        indexN: indexCupertino,
                        i: 2),
                    3: Container_CupertinoSegmentedControl2(
                        textN: 'Condiciones del Motor',
                        indexN: indexCupertino,
                        i: 3),
                  },
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
