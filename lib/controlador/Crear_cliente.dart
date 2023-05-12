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

import '../modelo/Terminado.dart';
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
  }

  Map<int, Widget> mapa_servicios(List<String> lista, int index) {
    Map<int, Widget> servicios = {};

    for (int i = 0; i < lista.length; i++) {
      if (lista[i] == 'Afinacion' || lista[i] == 'Afinacion (Por rellenar)') {
        servicios[i] = Container_CupertinoSegmentedControl2(
            textN: 'Afinacion', indexN: index, i: i);
      } else if (lista[i] == 'Frenos' || lista[i] == 'Frenos (Por rellenar)') {
        servicios[i] = Container_CupertinoSegmentedControl2(
            textN: 'Frenos', indexN: index, i: i);
      } else if (lista[i] == 'Suspension' ||
          lista[i] == 'Suspension (Por rellenar)') {
        servicios[i] = Container_CupertinoSegmentedControl2(
            textN: 'Suspension', indexN: index, i: i);
      } else if (lista[i] == 'Direccion Hidraulica' ||
          lista[i] == 'Direccion Hidraulica (Por rellenar)') {
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

  List<Widget> list_paginas(List<String> lista, String noOrden) {
    List<Widget> lista_servicios = [];

    for (int i = 0; i < lista.length; i++) {
      if (lista[i] == 'Afinacion' || lista[i] == 'Afinacion (Por rellenar)') {
        lista_servicios.add(Servicio_afinacion(noOrden: noOrden));
      } else if (lista[i] == 'Frenos' || lista[i] == 'Frenos (Por rellenar)') {
        lista_servicios.add(Servicio_frenos(noOrden: noOrden));
      } else if (lista[i] == 'Suspension' ||
          lista[i] == 'Suspension (Por rellenar)') {
        lista_servicios.add(Servicio_suspension(noOrden: noOrden));
      } else if (lista[i] == 'Direccion Hidraulica' ||
          lista[i] == 'Direccion Hidraulica (Por rellenar)') {
        lista_servicios.add(Servicio_dir_hidraulica(noOrden: noOrden));
      }
    }
    lista_servicios.add(Condiciones_del_motor(noOrden: noOrden));
    lista_servicios.add(Condicion_sistema_enfriamiento(noOrden: noOrden));
    return lista_servicios;
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

  List<String> selecCliente(String nombre) {
    List<String> info = [];
    var box = Hive.box('clientesBox');

    for (Cliente cliente in box.values) {
      if (cliente.nombre == nombre) {
        info = [
          cliente.nombre,
          cliente.telefono,
          cliente.calle,
          cliente.numero,
          cliente.colonia,
          cliente.cp,
        ];
        break;
      }
    }
    return info;
  }

  List<String> selecVehiculo(String nombre) {
    List<String> info = [];
    var box = Hive.box('vehiculosBox');

    for (Vehiculo vehiculo in box.values) {
      if (vehiculo.nombre == nombre) {
        info = [
          vehiculo.marca,
          vehiculo.modelo,
          vehiculo.year,
          vehiculo.motor,
          vehiculo.color,
          vehiculo.vin,
          vehiculo.kms,
          vehiculo.placas,
        ];
        break;
      }
    }
    return info;
  }

  List<Cliente> searchClientes(String nombre) {
    List<Cliente> info = [];
    var box = Hive.box('clientesBox');

    for (Cliente cliente in box.values) {
      if (cliente.nombre.contains(nombre)) {
        info.add(cliente);
      }
    }
    return info;
  }

  List<Cliente> listaClientes() {
    List<Cliente> info = [];
    var box = Hive.box('clientesBox');

    for (Cliente cliente in box.values) {
      info.add(cliente);
    }
    return info;
  }

  List<Pendientes> searchPendientes(String noOrden) {
    List<Pendientes> info = [];
    var box = Hive.box('pendientesBox');

    for (Pendientes task in box.values) {
      if (task.noOrden.contains(noOrden)) {
        info.add(task);
      }
    }
    return info;
  }

  List<Terminado> listahistorial(String nombre) {
    List<Terminado> info = [];
    var box = Hive.box<Terminado>('terminadosBox');

    for (Terminado terminar in box.values) {
      if (terminar.nombre == nombre) {
        info.add(terminar);
      }
    }

    return info;
  }

  List<Pendientes> listaPendientes() {
    List<Pendientes> info = [];
    var box = Hive.box('pendientesBox');

    for (Pendientes task in box.values) {
      info.add(task);
    }
    return info;
  }

  bool existeTer(String nombre) {
    bool existe = false;
    var box = Hive.box<Terminado>('terminadosBox');

    for (Terminado terminar in box.values) {
      if (terminar.nombre == nombre) {
        existe = true;
        break;
      }
    }
    print('holas');
    return existe;
  }

  List<String> list_servicios(String nombre, String noOrden) {
    List<String> lista_servicios = [];
    var box = Hive.box<Terminado>('terminadosBox');

    for (Terminado terminado in box.values) {
      if (terminado.nombre == nombre && terminado.noOrden == noOrden) {
        if (terminado.afinacion == 1) {
          lista_servicios.add('Afinacion');
        }
        if (terminado.frenos == 1) {
          lista_servicios.add('Frenos');
        }
        if (terminado.suspension == 1) {
          lista_servicios.add('Suspension');
        }
        if (terminado.hidraulica == 1) {
          lista_servicios.add('Direccion Hidraulica');
        }
      }
    }
    return lista_servicios;
  }

  List<Vehiculo> vehiculos(String nombre) {
    List<Vehiculo> carro = [];
    var box = Hive.box('vehiculosBox');

    for (Vehiculo carros in box.values) {
      if (carros.nombre == nombre) {
        carro.add(carros);
      }
    }
    print(carro.toList());
    return carro;
  }

  List<Terminado> lastServicio(String nombre) {
    List<Terminado> last = [];
    var box = Hive.box<Terminado>('terminadosBox');

    for (Terminado terminado in box.values) {
      if (terminado.nombre == nombre) {
        last.add(terminado);
      }
    }
    return last;
  }
}
