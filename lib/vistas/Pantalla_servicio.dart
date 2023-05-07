import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../util/text_Info.dart';
import 'Container_DraggableSS.dart';

class Pantalla_servicio extends StatefulWidget {
  final String noOrden;
  final String nombre;
  final String telefono;
  final String vehiculo;
  final String placas;
  final String vin;
  final String color;
  Pantalla_servicio(
      {super.key,
      required this.noOrden,
      required this.nombre,
      required this.telefono,
      required this.vehiculo,
      required this.placas,
      required this.vin,
      required this.color});

  @override
  State<Pantalla_servicio> createState() => _Pantalla_servicio();
}

class _Pantalla_servicio extends State<Pantalla_servicio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: 10, top: 10, bottom: 5),
          child: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back_rounded,
              size: 25,
              color: Colors.black,
            ),
          ),
        ),
        shape: Border(bottom: BorderSide(color: Colors.white38, width: 0.2)),
        title: Text(
          'No. ${widget.noOrden}',
          style: TextStyle(color: Colors.black, fontSize: 29),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 10, top: 20, bottom: 20),
            child: TextButton(
              onPressed: () {},
              child: Text(
                'Terminar',
                style: TextStyle(
                    fontSize: 18, letterSpacing: 1, color: Colors.black54),
              ),
            ),
          ),
        ],
        toolbarHeight: 70,
        backgroundColor: Theme.of(context).secondaryHeaderColor,
        systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: Colors.transparent,
            statusBarIconBrightness: Brightness.dark,
            systemNavigationBarColor: Color.fromARGB(255, 19, 29, 39)),
      ),
      backgroundColor: Theme.of(context).secondaryHeaderColor,
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              top: 15,
              left: 25,
              child: Text(
                'Cliente:',
                style: TextStyle(fontSize: 16),
              ),
            ),
            Positioned(
              top: 30,
              left: 25,
              child: Text(
                widget.nombre,
                style: TextStyle(fontSize: 20),
              ),
            ),
            Positioned(
              top: 30,
              right: 25,
              child: Column(
                children: [
                  Text(
                    widget.telefono,
                    style: TextStyle(fontSize: 20),
                  ),
                  Text(
                    'Telefono',
                    style: TextStyle(fontSize: 12),
                  ),
                ],
              ),
            ),
            Positioned(
              top: 65,
              left: 25,
              child: Text(
                'Vehiculo:',
                style: TextStyle(fontSize: 16),
              ),
            ),
            Positioned(
              top: 80,
              left: 25,
              child: Text(
                widget.vehiculo,
                style: TextStyle(fontSize: 20),
              ),
            ),
            Positioned(
              top: 80,
              right: 25,
              child: Column(
                children: [
                  Text(
                    widget.placas,
                    style: TextStyle(fontSize: 20),
                  ),
                  Text(
                    'Placas',
                    style: TextStyle(fontSize: 12),
                  ),
                ],
              ),
            ),
            Positioned(
              top: 120,
              left: 25,
              child: Column(
                children: [
                  Text(
                    widget.vin,
                    style: TextStyle(fontSize: 20),
                  ),
                  Text(
                    'VIN',
                    style: TextStyle(fontSize: 12),
                  ),
                ],
              ),
            ),
            Positioned(
                top: 120,
                right: 30,
                child: Column(
                  children: [
                    Text(
                      widget.color,
                      style: TextStyle(fontSize: 20),
                    ),
                    Text(
                      'Color',
                      style: TextStyle(fontSize: 12),
                    ),
                  ],
                )),
            MyWidget(nombre: widget.nombre),
          ],
        ),
      ),
    );
  }
}

class MyWidget extends StatelessWidget {
  final String nombre;

  const MyWidget({super.key, required this.nombre});
  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      initialChildSize: 0.78,
      minChildSize: 0.78,
      maxChildSize: 0.989,
      builder: (context, scrollController) {
        return Container_DraggableSS(
          scroll: scrollController,
          nombre: nombre,
        );
      },
    );
  }
}
