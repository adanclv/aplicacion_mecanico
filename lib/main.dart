import 'package:aplicacion_mecanico/util/botton_add_icon.dart';
import 'package:aplicacion_mecanico/vistas/Pantalla_principal.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.indigo),
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
                  print('funciona');
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
        //pagina = Pantalla_citas();
        break;
      case 2:
        if (aux == 0) {
          pagina = Pantalla_principal();
        } else if (aux == 1) {
          //pagina = ;
        } else if (aux == 3) {
          //pagina = ;
        } else if (aux == 4) {
          //pagina = ;
        }
        break;
      case 3:
        //pagina = Pantalla_clientes();
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
            BottomNavigationBar(
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
            )
          ],
        ),
      ),
    );
  }
}
