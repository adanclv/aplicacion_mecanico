import 'package:aplicacion_mecanico/modelo/Afinacion.dart';
import 'package:aplicacion_mecanico/modelo/Citas.dart';
import 'package:aplicacion_mecanico/modelo/Clientes.dart';
import 'package:aplicacion_mecanico/modelo/Condicion_motor.dart';
import 'package:aplicacion_mecanico/modelo/Direccion_Hidraulica.dart';
import 'package:aplicacion_mecanico/modelo/Frenos.dart';
import 'package:aplicacion_mecanico/modelo/Pendientes.dart';
import 'package:aplicacion_mecanico/modelo/Sistema_enfriamiento.dart';
import 'package:aplicacion_mecanico/modelo/Suspension.dart';
import 'package:aplicacion_mecanico/modelo/Terminado.dart';
import 'package:aplicacion_mecanico/modelo/Vehiculos.dart';
import 'package:aplicacion_mecanico/util/mostrarModalBottomSheet.dart';
import 'package:aplicacion_mecanico/vistas/Pantalla_citas.dart';
import 'package:aplicacion_mecanico/vistas/Pantalla_clientes.dart';
import 'package:aplicacion_mecanico/vistas/Pantalla_historial.dart';
import 'package:aplicacion_mecanico/vistas/Pantalla_principal.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'modelo/final.dart';

void main() async {
  await Hive.initFlutter();

  Hive.registerAdapter(ClienteAdapter());
  Hive.registerAdapter(VehiculoAdapter());
  Hive.registerAdapter(PendientesAdapter());
  Hive.registerAdapter(SuspensionAdapter());
  Hive.registerAdapter(AfinacionAdapter());
  Hive.registerAdapter(FrenosAdapter());
  Hive.registerAdapter(Direccion_HidraulicaAdapter());
  Hive.registerAdapter(Condicion_motorAdapter());
  Hive.registerAdapter(Sistema_enfriamientoAdapter());
  Hive.registerAdapter<Terminado>(TerminadoAdapter());
  Hive.registerAdapter(CitasAdapter());
  Hive.registerAdapter(FinalsAdapter());

  var box1 = await Hive.openBox('clientesBox');
  var box2 = await Hive.openBox('vehiculosBox');
  var box3 = await Hive.openBox('pendientesBox');
  var box4 = await Hive.openBox('suspensionBox');
  var box5 = await Hive.openBox('afinacionBox');
  var box6 = await Hive.openBox('frenosBox');
  var box7 = await Hive.openBox('hidraulicaBox');
  var box8 = await Hive.openBox('motorBox');
  var box9 = await Hive.openBox('enfriamientoBox');
  var box10 = await Hive.openBox<Terminado>('terminadosBox');
  var box11 = await Hive.openBox('citasBox');

  // await Hive.deleteBoxFromDisk('terminadosBox');
  // await Hive.deleteBoxFromDisk('prueba');
//Borrar todos los datos
  // box1.clear();
  // box2.clear();
  // box3.clear();
  // box4.clear();
  // box5.clear();
  // box6.clear();
  // box7.clear();
  // box8.clear();
  // box9.clear();
  // box10.clear();
  // box11.clear();

  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    MaterialColor myColor = MaterialColor(0xFF15202B, {
      50: Color(0xFFE1E2E3),
      100: Color(0xFFB6B8B9),
      200: Color(0xFF8C8F91),
      300: Color(0xFF626669),
      400: Color(0xFF3B3F42),
      500: Color(0xFF15202B),
      600: Color(0xFF121E28),
      700: Color(0xFF0E1A23),
      800: Color(0xFF0A161E),
      900: Color(0xFF060D12),
    });

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: myColor,
        secondaryHeaderColor: Color(0xFFE6EFFF),
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int index = 0;
  int aux = 0;
  List<Widget> pagina = [
    Pantalla_principal(),
    Pantalla_citas(),
    Pantalla_principal(),
    Pantalla_clientes(),
  ];

  void cambiarPagina(int value) {
    setState(() {
      aux = index;
      index = value;
      print(aux);
      if (index == 2) {
        Mostrar_BottomSheet().mostrarBottomSheet(context);
        index = aux;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0,
        backgroundColor: Colors.transparent,
        systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: Colors.transparent,
            statusBarIconBrightness: Brightness.light,
            systemNavigationBarColor: Color.fromARGB(255, 19, 29, 39)),
      ),
      backgroundColor: const Color(0xFF15202B),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: pagina[index],
            ),
            Container(
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(color: Colors.white24, width: 0.5),
                ),
              ),
              child: BottomNavigationBar(
                unselectedItemColor: Colors.white54,
                selectedFontSize: 12,
                unselectedFontSize: 10,
                showUnselectedLabels: true,
                iconSize: 32,
                currentIndex: index,
                onTap: (value) {
                  cambiarPagina(value);
                },
                items: [
                  BottomNavigationBarItem(
                      icon: Icon(Icons.home_outlined),
                      activeIcon: Icon(Icons.home_rounded),
                      label: 'Principal',
                      backgroundColor: Color.fromARGB(255, 19, 29, 39)),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.assignment_outlined),
                      activeIcon: Icon(Icons.assignment_add),
                      label: 'Citas',
                      backgroundColor: Color.fromARGB(255, 19, 29, 39)),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.add_box_outlined),
                      activeIcon: Icon(Icons.add_box_rounded),
                      label: 'Agregar',
                      backgroundColor: Color.fromARGB(255, 19, 29, 39)),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.contact_emergency_outlined),
                      activeIcon: Icon(Icons.contact_emergency_rounded),
                      label: 'Clientes',
                      backgroundColor: Color.fromARGB(255, 19, 29, 39)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
