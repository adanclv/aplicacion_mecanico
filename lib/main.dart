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

  @override
  Widget build(BuildContext context) {
    Widget? pagina;
    switch (i) {
      case 0:
        pagina = Pantalla_principal();
        break;
      case 1:
        //pagina = VerCategoria();
        break;
      case 2:
        //pagina = ;
        break;
      case 3:
        //pagina =;
        break;
      case 4:
        //pagina = ;
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
              showUnselectedLabels: true,
              iconSize: 30,
              currentIndex: i,
              onTap: (value) {
                setState(() {
                  i = value;
                  print(i);
                });
              },
              items: [
                BottomNavigationBarItem(
                    icon: Icon(Icons.home_outlined),
                    activeIcon: Icon(Icons.home_rounded),
                    label: 'Principal',
                    backgroundColor: Color(0xFF15202B)),
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

class Pantalla_principal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF15202B),
      body: SafeArea(
          child: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(25),
                child: Text(
                  'Buenas Tardes',
                  style: TextStyle(color: Colors.white, fontSize: 30),
                ),
              )
            ],
          )
        ],
      )),
    );
  }
}
