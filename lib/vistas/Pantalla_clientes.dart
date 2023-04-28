import 'package:flutter/material.dart';

class Pantalla_clientes extends StatefulWidget {
  const Pantalla_clientes({super.key});

  @override
  State<Pantalla_clientes> createState() => _Pantalla_clientes();
}

class _Pantalla_clientes extends State<Pantalla_clientes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.all(25),
              child: Text(
                'Clientes',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
