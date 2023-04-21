import 'package:flutter/material.dart';

class Pantalla_principal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF15202B),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(25),
              child: Text(
                'Buenas Tardes',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 30),
              child: Text(
                'Task',
                style: TextStyle(
                    color: Colors.white, fontSize: 18, letterSpacing: 2),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 30),
              child: TextField(
                style: TextStyle(color: Colors.black),
                decoration: InputDecoration(
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  fillColor: Color(0xFFE6EFFF),
                  filled: true,
                  label: Text(
                    'Buscar...',
                    style: TextStyle(color: Colors.black),
                  ),
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.circular(10)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
