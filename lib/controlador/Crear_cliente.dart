import 'package:aplicacion_mecanico/modelo/Clientes.dart';
import 'package:aplicacion_mecanico/modelo/Pendientes.dart';
import 'package:aplicacion_mecanico/modelo/Vehiculos.dart';
import 'package:aplicacion_mecanico/vistas/Condicion_sistema_enfriamiento.dart';
import 'package:aplicacion_mecanico/vistas/Condiciones_del_motor.dart';
import 'package:aplicacion_mecanico/vistas/Servicio_afinacion.dart';
import 'package:aplicacion_mecanico/vistas/Servicio_dir_hidraulica.dart';
import 'package:aplicacion_mecanico/vistas/Servicio_frenos.dart';
import 'package:aplicacion_mecanico/vistas/Servicio_suspension.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

import '../util/container_CupertinoSegmentedControl2.dart';

class Crear_cliente {
  void addCliente(String nombre, String telefono, String calle, String numero,
      String colonia, String cp) {
    var box = Hive.box('clientesBox');
    box.add(
      Cliente(
        nombre: nombre,
        telefono: telefono,
        calle: calle,
        numero: numero,
        colonia: colonia,
        cp: cp,
      ),
    );
    print(box.values.toList());
  }

  void addVehiculo(String marca, String modelo, String year, String motor,
      String color, String vin, String kms, String placas, String nombre) {
    var box = Hive.box('vehiculosBox');
    box.add(
      Vehiculo(
        marca: marca,
        modelo: modelo,
        year: year,
        motor: motor,
        color: color,
        vin: vin,
        kms: kms,
        placas: placas,
        nombre: nombre,
      ),
    );
    print(box.values.toList());
  }

  void addTask(
    String noOrden,
    String nombre,
    String telefono,
    String marca,
    String modelo,
    String year,
    String vin,
    String placas,
    String color,
    int afinacion,
    int frenos,
    int suspension,
    int hidraulica,
  ) {
    var box = Hive.box('pendientesBox');
    box.add(
      Pendientes(
          noOrden: noOrden,
          nombre: nombre,
          telefono: telefono,
          marca: marca,
          modelo: modelo,
          year: year,
          vin: vin,
          placas: placas,
          color: color,
          afinacion: afinacion,
          frenos: frenos,
          suspension: suspension,
          hidraulica: hidraulica),
    );
    print(box.values.toList());
  }

  List<String> list_servicios(String nombre) {
    List<String> lista_servicios = [''];
    var box = Hive.box('pendientesBox');

    lista_servicios.clear();

    for (Pendientes pendientes in box.values) {
      if (pendientes.nombre == nombre) {
        if (pendientes.afinacion == 1) {
          lista_servicios.add('Afinacion');
        }
        if (pendientes.frenos == 1) {
          lista_servicios.add('Frenos');
        }
        if (pendientes.suspension == 1) {
          lista_servicios.add('Suspension');
        }
        if (pendientes.hidraulica == 1) {
          lista_servicios.add('Direccion Hidraulica');
        }
      }
    }
    return lista_servicios;
  }

  Map<int, Widget> mapa_servicios(List<String> lista, int index) {
    Map<int, Widget> servicios = {};

    for (int i = 0; i < lista.length; i++) {
      if (lista[i] == 'Afinacion') {
        servicios[i] = Container_CupertinoSegmentedControl2(
            textN: 'Afinacion', indexN: index, i: i);
      } else if (lista[i] == 'Frenos') {
        servicios[i] = Container_CupertinoSegmentedControl2(
            textN: 'Frenos', indexN: index, i: i);
      } else if (lista[i] == 'Suspension') {
        servicios[i] = Container_CupertinoSegmentedControl2(
            textN: 'Suspension', indexN: index, i: i);
      } else if (lista[i] == 'Direccion Hidraulica') {
        servicios[i] = Container_CupertinoSegmentedControl2(
            textN: 'Direccion Hidraulica', indexN: index, i: i);
      }
    }
    servicios[servicios.length] = Container_CupertinoSegmentedControl2(
        textN: 'Condicion del Motor', indexN: index, i: servicios.length);
    servicios[servicios.length] = Container_CupertinoSegmentedControl2(
        textN: 'Condicion de Enfriamiento', indexN: index, i: servicios.length);
    return servicios;
  }

  List<Widget> list_paginas(List<String> lista) {
    List<Widget> lista_servicios = [];

    for (int i = 0; i < lista.length; i++) {
      if (lista[i] == 'Afinacion') {
        lista_servicios.add(Servicio_afinacion());
      } else if (lista[i] == 'Frenos') {
        lista_servicios.add(Servicio_frenos());
      } else if (lista[i] == 'Suspension') {
        lista_servicios.add(Servicio_suspension());
      } else if (lista[i] == 'Direccion Hidraulica') {
        lista_servicios.add(Servicio_dir_hidraulica());
      }
    }
    lista_servicios.add(Condiciones_del_motor());
    lista_servicios.add(Condicion_sistema_enfriamiento());
    return lista_servicios;
  }

  Vehiculo info(String nombre, String placas) {
    var box = Hive.box('vehiculosBox');
    Vehiculo carro = Vehiculo(
        marca: '',
        modelo: '',
        year: '',
        motor: '',
        color: '',
        vin: '',
        kms: '',
        placas: '',
        nombre: '');

    for (Vehiculo c in box.values) {
      if (c.nombre == nombre && c.placas == placas) {
        carro = c;
        break;
      }
    }
    return carro;
  }

  void showClientes() {
    var box = Hive.box('clientesBox');
    print(box.values.toString());
  }

  void showVehiculos() {
    var box = Hive.box('vehiculosBox');
    print(box.values.toString());
  }

  void showPendientes() {
    var box = Hive.box('pendientesBox');
    print(box.values.toString());
  }

  bool existeTasks() {
    var box = Hive.box('pendientesBox');
    bool vacio = box.values.isNotEmpty;
    return vacio;
  }

  bool existeClientes() {
    var box = Hive.box('clientesBox');
    bool vacio = box.values.isNotEmpty;
    return vacio;
  }
}
