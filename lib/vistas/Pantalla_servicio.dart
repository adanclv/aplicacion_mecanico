import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../util/text_Info.dart';
import 'Container_DraggableSS.dart';

class Pantalla_servicio extends StatefulWidget {
  const Pantalla_servicio({super.key});

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
        title: Text_info(cadena: 'No. 00000', opcion: 1, colores: Colors.black),
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
                'Adán Clemente',
                style: TextStyle(fontSize: 20),
              ),
            ),
            Positioned(
              top: 30,
              right: 25,
              child: Text(
                '833-444-13-72',
                style: TextStyle(fontSize: 20),
              ),
            ),
            Positioned(
              top: 50,
              right: 65,
              child: Text(
                'Telefono',
                style: TextStyle(fontSize: 12),
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
                'Honda Civic 1972',
                style: TextStyle(fontSize: 20),
              ),
            ),
            Positioned(
              top: 80,
              right: 25,
              child: Text(
                '0000-000',
                style: TextStyle(fontSize: 20),
              ),
            ),
            Positioned(
              top: 100,
              right: 45,
              child: Text(
                'Placas',
                style: TextStyle(fontSize: 12),
              ),
            ),
            Positioned(
              top: 120,
              left: 25,
              child: Text(
                '00000000000000000',
                style: TextStyle(fontSize: 20),
              ),
            ),
            Positioned(
              top: 120,
              right: 25,
              child: Text(
                'Rojo',
                style: TextStyle(fontSize: 20),
              ),
            ),
            Positioned(
              top: 140,
              left: 95,
              child: Text(
                'VIN',
                style: TextStyle(fontSize: 12),
              ),
            ),
            Positioned(
              top: 140,
              right: 30,
              child: Text(
                'Color',
                style: TextStyle(fontSize: 12),
              ),
            ),
            MyWidget(),
          ],
        ),
      ),
    );
  }
}

class MyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      initialChildSize: 0.78,
      minChildSize: 0.78,
      maxChildSize: 0.989,
      builder: (context, scrollController) {
        return Container_DraggableSS(
          scroll: scrollController,
        );
      },
    );
  }
}
