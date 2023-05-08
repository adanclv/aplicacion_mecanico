import 'package:aplicacion_mecanico/controlador/Crear_cliente.dart';
import 'package:aplicacion_mecanico/modelo/Afinacion.dart';
import 'package:aplicacion_mecanico/modelo/Suspension.dart';
import 'package:hive/hive.dart';

import '../modelo/Pendientes.dart';

class Save_servicio {
  Crear_cliente newCliente = Crear_cliente();

//Servicio Suspension
  void addSuspension(
      String noOrden,
      String lTerminalInt,
      String lTerminalExt,
      String lRotulaInf,
      String lRotulaSup,
      String lAmortDel,
      String lAmortTras,
      String lHorquilla,
      String lHules,
      String lTornillos,
      String rTerminalInt,
      String rTerminalExt,
      String rRotulaInf,
      String rRotulaSup,
      String fGomas,
      String fBujes,
      String bGomas,
      String bBujes,
      String observaciones) {
    var box = Hive.box('suspensionBox');
    box.add(Suspension(
        noOrden: noOrden,
        lTerminalInt: lTerminalInt,
        lTerminalExt: lTerminalExt,
        lRotulaInf: lRotulaInf,
        lRotulaSup: lRotulaSup,
        lAmortDel: lAmortDel,
        lAmortTras: lAmortTras,
        lHorquilla: lHorquilla,
        lHules: lHules,
        lTornillos: lTornillos,
        rTerminalInt: rTerminalInt,
        rTerminalExt: rTerminalExt,
        rRotulaInf: rRotulaInf,
        rRotulaSup: rRotulaSup,
        fGomas: fGomas,
        fBujes: fBujes,
        bGomas: bGomas,
        bBujes: bBujes,
        observaciones: observaciones));
  }

  List<String> infoSuspension(String noOrden) {
    List<String> _seleccionado = [];
    var box = Hive.box('suspensionBox');

    for (Suspension suspension in box.values) {
      if (suspension.noOrden == noOrden) {
        _seleccionado = [
          suspension.lTerminalInt,
          suspension.lTerminalExt,
          suspension.lRotulaInf,
          suspension.lRotulaSup,
          suspension.lAmortDel,
          suspension.lAmortTras,
          suspension.lHorquilla,
          suspension.lHules,
          suspension.lTornillos,
          suspension.rTerminalInt,
          suspension.rTerminalExt,
          suspension.rRotulaInf,
          suspension.rRotulaSup,
          suspension.fGomas,
          suspension.fBujes,
          suspension.bGomas,
          suspension.bBujes,
          suspension.observaciones
        ];
        break;
      }
    }
    return _seleccionado;
  }

  bool existeSuspension(String noOrden) {
    bool existe = false;
    var box = Hive.box('suspensionBox');

    for (Suspension suspension in box.values) {
      if (suspension.noOrden == noOrden) {
        existe = true;
        break;
      }
    }
    return existe;
  }

//Servicio Afinacion
  void addAfinacion(
      String noOrden,
      String bujiasCant,
      String bujias,
      String bujiasTipo,
      String fAire,
      String fAceite,
      String fGasolina,
      String aceite,
      String aceiteTipo,
      String carbcln,
      String cables,
      String tapa,
      String pcv,
      String rotor,
      String liqInj,
      String aCongelante,
      String aceiteDirHid,
      String aceiteTraAuto,
      String observaciones) {
    var box = Hive.box('afinacionBox');
    box.add(Afinacion(
        noOrden: noOrden,
        bujiasCant: bujiasCant,
        bujias: bujias,
        bujiasTipo: bujiasTipo,
        fAire: fAire,
        fAceite: fAceite,
        fGasolina: fGasolina,
        aceite: aceite,
        aceiteTipo: aceiteTipo,
        carbcln: carbcln,
        cables: cables,
        tapa: tapa,
        pcv: pcv,
        rotor: rotor,
        liqInj: liqInj,
        aCongelante: aCongelante,
        aceiteDirHid: aceiteDirHid,
        aceiteTraAuto: aceiteTraAuto,
        observaciones: observaciones));
  }

  List<String> infoAnfinacion(String noOrden) {
    List<String> _seleccionado = [];
    var box = Hive.box('afinacionBox');

    for (Afinacion afinacion in box.values) {
      if (afinacion.noOrden == noOrden) {
        _seleccionado = [
          afinacion.bujiasCant,
          afinacion.bujias,
          afinacion.bujiasTipo,
          afinacion.fAire,
          afinacion.fAceite,
          afinacion.fGasolina,
          afinacion.aceite,
          afinacion.aceiteTipo,
          afinacion.carbcln,
          afinacion.cables,
          afinacion.tapa,
          afinacion.pcv,
          afinacion.rotor,
          afinacion.liqInj,
          afinacion.aCongelante,
          afinacion.aceiteDirHid,
          afinacion.aceiteTraAuto,
          afinacion.observaciones,
        ];
        break;
      }
    }

    return _seleccionado;
  }

  bool existeAfinacion(String noOrden) {
    bool existe = false;
    var box = Hive.box('afinacionBox');

    for (Afinacion afinacion in box.values) {
      if (afinacion.noOrden == noOrden) {
        existe = true;
        break;
      }
    }
    return existe;
  }

  bool existeServicio(List<String> lista, String noOrden) {
    bool existe = false;

    for (int i = 0; i < lista.length; i++) {
      if (lista[i] == 'Afinacion') {
        existe = existeAfinacion(noOrden);
        break;
      } else if (lista[i] == 'Suspension') {
        existe = existeSuspension(noOrden);
        break;
      }
    }
    return existe;
  }

  List<String> list_servicios(String nombre) {
    List<String> lista_servicios = [];
    var box = Hive.box('pendientesBox');

    for (Pendientes pendientes in box.values) {
      if (pendientes.nombre == nombre) {
        if (pendientes.afinacion == 1) {
          if (existeAfinacion(pendientes.noOrden) == true) {
            lista_servicios.add('Afinacion');
          } else {
            lista_servicios.add('Afinacion (Por rellenar)');
          }
        }
        if (pendientes.frenos == 1) {
          // if(existe == true){

          // }else{}
          lista_servicios.add('Frenos');
        }
        if (pendientes.suspension == 1) {
          if (existeSuspension(pendientes.noOrden) == true) {
            lista_servicios.add('Suspension');
          } else {
            lista_servicios.add('Suspension (Por rellenar)');
          }
        }
        if (pendientes.hidraulica == 1) {
          // if(existe == true){

          // }else{}
          lista_servicios.add('Direccion Hidraulica');
        }
      }
    }
    print(lista_servicios);
    return lista_servicios;
  }
}
