import 'package:aplicacion_mecanico/vistas/Pantalla_principal.dart';
import 'package:flutter/material.dart';

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
          height: 300,
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
              Container(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: Row(
                  children: [
                    Container(
                      width: 60,
                      height: 60,
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color.fromARGB(255, 200, 210, 227)),
                      child: Icon(
                        Icons.account_circle_rounded,
                        size: 30,
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      child: Text(
                        'Crear Cliente',
                        style: TextStyle(fontSize: 20),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: Row(
                  children: [
                    Container(
                      width: 60,
                      height: 60,
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color.fromARGB(255, 200, 210, 227)),
                      child: Icon(
                        Icons.airport_shuttle_sharp,
                        size: 30,
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      child: Text(
                        'Agregar Vehiculo',
                        style: TextStyle(fontSize: 20),
                      ),
                    )
                  ],
                ),
              ),
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
                    backgroundColor: Color(0xFF15202B)),
                BottomNavigationBarItem(
                    icon: Icon(Icons.add_box_outlined),
                    activeIcon: Icon(Icons.add_box_rounded),
                    label: 'Agregar',
                    backgroundColor: Color(0xFF15202B)),
                BottomNavigationBarItem(
                    icon: Icon(Icons.contact_emergency_outlined),
                    activeIcon: Icon(Icons.contact_emergency_rounded),
                    label: 'Clientes',
                    backgroundColor: Color(0xFF15202B)),
                BottomNavigationBarItem(
                    icon: Icon(Icons.event_repeat_outlined),
                    activeIcon: Icon(Icons.event_repeat_rounded),
                    label: 'Historial',
                    backgroundColor: Color(0xFF15202B)),
              ],
            )
          ],
        ),
      ),
    );
  }
}
