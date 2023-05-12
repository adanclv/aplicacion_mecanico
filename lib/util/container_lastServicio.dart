import 'package:flutter/material.dart';

class Container_lastServicio extends StatelessWidget {
  const Container_lastServicio({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Theme.of(context).secondaryHeaderColor,
          borderRadius: BorderRadius.circular(10)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 5, top: 8),
            child: Text(
              'No. 00001',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                  color: Colors.black),
            ),
          ),
          SizedBox(height: 3),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 5),
                child: Text(
                  ' Servicio de Frenos(completado)',
                  style: TextStyle(fontSize: 17, color: Colors.blue),
                ),
              ),
            ],
          ),
          SizedBox(height: 5),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 8, bottom: 6),
                child: Text(
                  'Vehiculo: Bugatti Veyron,',
                  style: TextStyle(fontSize: 17, color: Colors.black),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 5, bottom: 6),
                child: Text(
                  'FKH-M24-KL9',
                  style: TextStyle(fontSize: 17, color: Colors.black),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
