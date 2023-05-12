import 'package:flutter/material.dart';

import '../modelo/Terminado.dart';

class Container_lastServicio extends StatelessWidget {
  final String noOrden;
  final String vehiculo;
  final String vin;
  const Container_lastServicio({
    super.key,
    required this.noOrden,
    required this.vehiculo,
    required this.vin,
  });

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
              'No. $noOrden',
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
                  ' Servicio de Suspension(completado)',
                  style: TextStyle(fontSize: 17, color: Colors.blue),
                ),
              ),
            ],
          ),
          SizedBox(height: 5),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 8, bottom: 6),
                child: Text(
                  '$vehiculo',
                  style: TextStyle(fontSize: 17, color: Colors.black),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 5, bottom: 6, right: 5),
                child: Text(
                  vin.length > 8
                      ? 'VIN: ${vin.substring(vin.length - 6)}'
                      : 'VIN: ${vin.substring(vin.length - 6)}',
                  style: TextStyle(fontSize: 17, color: Colors.black),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
