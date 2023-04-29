import 'package:aplicacion_mecanico/util/botton_add_icon.dart';
import 'package:aplicacion_mecanico/vistas/Pantalla_citas.dart';
import 'package:aplicacion_mecanico/vistas/Pantalla_clientes.dart';
import 'package:aplicacion_mecanico/vistas/Pantalla_principal.dart';
import 'package:aplicacion_mecanico/vistas/Registro_citas.dart';
import 'package:aplicacion_mecanico/vistas/Registro_clientes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
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
          primarySwatch: myColor, secondaryHeaderColor: Color(0xFFE6EFFF)),
      home: //const Registro_citas(),
          const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int i = 0;
  int aux = 0;

  void mostrarBottomSheet() {
    showModalBottomSheet(
      context: context,
      backgroundColor: Color(0xFFE6EFFF),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(20), topLeft: Radius.circular(20)),
      ),
      builder: (BuildContext context) {
        return Container(
          height: 350,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                padding: EdgeInsets.only(right: 15, top: 10, left: 15),
                height: 40,
                child: GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(Icons.close)),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Registro_clientes(),
                    ),
                  ).whenComplete(() => Navigator.pop(context));
                },
                child: BottonAddIcon(
                    iconName: Icons.account_circle_rounded,
                    textName: 'Crear Cliente'),
              ),
              GestureDetector(
                onTap: () {},
                child: BottonAddIcon(
                    iconName: Icons.airport_shuttle_sharp,
                    textName: 'Agregar Vehiculo'),
              ),
              GestureDetector(
                onTap: () {},
                child: BottonAddIcon(
                    iconName: Icons.build_circle, textName: 'Agregar Servicio'),
              )
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    Widget? pagina;
    switch (i) {
      case 0:
        pagina = Pantalla_principal();
        break;
      case 1:
        pagina = Pantalla_citas();
        break;
      case 2:
        break;
      case 3:
        pagina = Pantalla_clientes();
        break;
      case 4:
        //pagina = Pantalla_historial();
        break;
    }

    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0,
        backgroundColor: Colors.transparent,
        systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: Colors.transparent,
            systemNavigationBarColor: Color.fromARGB(255, 19, 29, 39)),
      ),
      backgroundColor: const Color(0xFF15202B),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Container(
                child: pagina,
              ),
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
                currentIndex: i,
                onTap: (value) {
                  setState(() {
                    aux = i;
                    i = value;
                    print(aux);
                    if (i == 2) {
                      mostrarBottomSheet();
                      i = aux;
                    }
                  });
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
                  BottomNavigationBarItem(
                      icon: Icon(Icons.event_repeat_outlined),
                      activeIcon: Icon(Icons.event_repeat_rounded),
                      label: 'Historial',
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
