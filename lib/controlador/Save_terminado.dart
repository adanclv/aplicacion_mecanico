import 'package:aplicacion_mecanico/modelo/Condicion_motor.dart';
import 'package:aplicacion_mecanico/modelo/Sistema_enfriamiento.dart';
import 'package:aplicacion_mecanico/modelo/Suspension.dart';
import 'package:aplicacion_mecanico/modelo/Terminado.dart';
import 'package:hive/hive.dart';

import '../modelo/Pendientes.dart';
import '../modelo/final.dart';

class Save_terminado {
  void addTerminado(
      String noOrden,
      String nombre,
      String vin,
      int afinacion,
      int frenos,
      int suspension,
      int hidraulica,
      List<Finals> lista,
      String fechaT,
      double total,
      String vehiculo) async {
    var box = Hive.box<Terminado>('terminadosBox');

    print('aveer ${lista.toList()}');
    box.add(Terminado(
        noOrden: noOrden,
        nombre: nombre,
        vin: vin,
        afinacion: afinacion,
        frenos: frenos,
        suspension: suspension,
        hidraulica: hidraulica,
        lista: lista,
        fechaT: fechaT,
        total: total,
        vehiculo: vehiculo));
    print('terminadosss ${box.values}');
  }

  void imprimir() {
    var box = Hive.box<Terminado>('terminadosBox');
    print('${box.values.toList()}');
  }

  List<String> list_servicios(String noOrden) {
    List<String> lista_servicios = [];
    var box = Hive.box('pendientesBox');

    for (Pendientes pendientes in box.values) {
      if (pendientes.noOrden == noOrden) {
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
    print('aha $lista_servicios');
    return lista_servicios;
  }

  List<String> suspensionC(String noOrden) {
    List<String> info = [];
    var box = Hive.box('suspensionBox');

    for (Suspension suspension in box.values) {
      if (suspension.noOrden == noOrden) {
        var keys = suspension
            .toMap()
            .keys
            .where((key) => suspension.toMap()[key] == 'cambio');
        info.addAll(keys);
      }
    }
    print('Holas $info');
    return info;
  }

  List<String> partesCambioS(String noOrden) {
    List<String> info = suspensionC(noOrden);
    List<String> info2 = [];
    for (int i = 0; i < info.length; i++) {
      switch (info[i]) {
        case 'lTerminalInt':
          info2.add('Terminal Interior Izq');
          break;
        case 'lTerminalExt':
          info2.add('Terminal Exterior Izq');
          break;
        case 'lRotulaInf':
          info2.add('Rotula Inferior Izq');
          break;
        case 'lRotulaSup':
          info2.add('Rotula Superior Izq');
          break;
        case 'lAmortDel':
          info2.add('Amortiguadores Delanteros');
          break;
        case 'lAmortTras':
          info2.add('Amortiguadores Traseros');
          break;
        case 'lHorquilla':
          info2.add('Horquillas');
          break;
        case 'lHules':
          info2.add('Hules de la Barra Est');
          break;
        case 'lTornillos':
          info2.add('Tornillos de la Barra Est');
          break;
        case 'rTerminalInt':
          info2.add('Terminal Interior Der');
          break;
        case 'rTerminalExt':
          info2.add('Terminal Exterior Der');
          break;
        case 'rRotulaInf':
          info2.add('Rotula Inferior Der');
          break;
        case 'rRotulaSup':
          info2.add('Rotula Superior Der');
          break;
        case 'fGomas':
          info2.add('Gomas Amortiguadores Del');
          break;
        case 'fBujes':
          info2.add('Bujes de Horquilla Del');
          break;
        case 'bGomas':
          info2.add('Gomas Amortiguadoras Tras');
          break;
        case 'bBujes':
          info2.add('Bujes de Horquilla Tras');
          break;
      }
    }
    print(info2);
    return info2;
  }

  List<String> motorC(String noOrden) {
    List<String> info = [];
    var box = Hive.box('motorBox');

    for (Condicion_motor motor in box.values) {
      if (motor.noOrden == noOrden) {
        var keys = motor
            .toMap()
            .keys
            .where((element) => motor.toMap()[element] == 'cambio');
        info.addAll(keys);
      }
    }
    print(info);
    return info;
  }

  List<String> partesCambioM(String noOrden) {
    List<String> info = motorC(noOrden);
    List<String> info2 = [];
    for (int i = 0; i < info.length; i++) {
      switch (info[i]) {
        case 'poleaTen':
          info2.add('Polea Tensora');
          break;
        case 'poleaLo':
          info2.add('Polea Loca');
          break;
        case 'fanClutch':
          info2.add('FanClutch');
          break;
        case 'bRetenC':
          info2.add('Reten Cigueñal Trasero');
          break;
        case 'fRetenC':
          info2.add('Reten Cigueñal Delantero');
          break;
        case 'retenArbolE':
          info2.add('Reten Arbol Levas E');
          break;
        case 'retenArbolA':
          info2.add('Reten Arbol Levas A');
          break;
      }
    }
    print(info2);
    return info2;
  }

  List<String> enfriamientoC(String noOrden) {
    List<String> info = [];
    var box = Hive.box('enfriamientoBox');

    for (Sistema_enfriamiento enfria in box.values) {
      if (enfria.noOrden == noOrden) {
        var keys = enfria
            .toMap()
            .keys
            .where((element) => enfria.toMap()[element] == 'si');
        info.addAll(keys);
      }
    }
    print(info);
    return info;
  }

  List<String> partesCambioE(String noOrden) {
    List<String> info = enfriamientoC(noOrden);
    List<String> info2 = [];
    for (int i = 0; i < info.length; i++) {
      switch (info[i]) {
        case 'radiador':
          info2.add('Radiador Tapado');
          break;
        case 'acongelante':
          info2.add('Anticongelante');
          break;
        case 'agua':
          info2.add('Agua');
          break;
        case 'fugaBomba':
          info2.add('Fuga Bomba de Agua');
          break;
        case 'termos':
          info2.add('Termostato');
          break;
        case 'manguera':
          info2.add('Mangueras Rotas');
          break;
        case 'tapon':
          info2.add('Fuga del Tapon');
          break;
        case 'abrazadera':
          info2.add('Abrazaderas Rotas');
          break;
        case 'deposito':
          info2.add('Deposito Roto');
          break;
      }
    }
    print(info2);
    return info2;
  }

  List<int> serviciosLista(String noOrden) {
    List<int> info = [];
    var box = Hive.box('pendientesBox');

    for (Pendientes task in box.values) {
      if (task.noOrden == noOrden) {
        info = [task.afinacion, task.frenos, task.suspension, task.hidraulica];
        break;
      }
    }
    return info;
  }

  bool terminar(String noOrden) {
    bool existe = false;
    var box = Hive.box<Terminado>('terminadosBox');
    for (Terminado finish in box.values) {
      if (finish.noOrden == noOrden) {
        existe = true;
        print(existe);
        break;
      }
    }
    return existe;
  }

  void delete(String noOrden) {
    var box = Hive.box('pendientesBox');
    int keyManual = -1;

    if (terminar(noOrden)) {
      for (Pendientes task in box.values) {
        keyManual++;
        if (task.noOrden == noOrden) {
          print('${task.noOrden}  ${task.nombre}');
          box.deleteAt(keyManual);

          break;
        }
      }
    } else {
      print('no hay ap');
    }
  }
}
