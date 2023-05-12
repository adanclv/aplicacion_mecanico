import 'package:aplicacion_mecanico/controlador/Crear_cliente.dart';
import 'package:aplicacion_mecanico/modelo/Afinacion.dart';
import 'package:aplicacion_mecanico/modelo/Condicion_motor.dart';
import 'package:aplicacion_mecanico/modelo/Direccion_Hidraulica.dart';
import 'package:aplicacion_mecanico/modelo/Frenos.dart';
import 'package:aplicacion_mecanico/modelo/Sistema_enfriamiento.dart';
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

  //Frenos
  void addFrenos(
    String noOrden,
    String fBalatasPor,
    String fBalatas,
    String fDisco,
    String fRectificacionIzq,
    String fRectificacionDer,
    String fCaliper,
    String fNormalIzq,
    String fNormalDer,
    String fGoteoIzq,
    String fGoteoDer,
    String bBalatasPor,
    String bBalatas,
    String bDisco,
    String bTambor,
    String bRectificacionIzq,
    String bRectificacionDer,
    String bCaliper,
    String bCilindro,
    String bNormalIzq,
    String bNormalDer,
    String bGoteoIzq,
    String bGoteoDer,
    String observaciones,
  ) {
    var box = Hive.box('frenosBox');
    box.add(Frenos(
        noOrden: noOrden,
        fBalatasPor: fBalatasPor,
        fBalatas: fBalatas,
        fDisco: fDisco,
        fRectificacionIzq: fRectificacionIzq,
        fRectificacionDer: fRectificacionDer,
        fCaliper: fCaliper,
        fNormalIzq: fNormalIzq,
        fNormalDer: fNormalDer,
        fGoteoIzq: fGoteoIzq,
        fGoteoDer: fGoteoDer,
        bBalatasPor: bBalatasPor,
        bBalatas: bBalatas,
        bDisco: bDisco,
        bTambor: bTambor,
        bRectificacionIzq: bRectificacionIzq,
        bRectificacionDer: bRectificacionDer,
        bCaliper: bCaliper,
        bCilindro: bCilindro,
        bNormalIzq: bNormalIzq,
        bNormalDer: bNormalDer,
        bGoteoIzq: bGoteoIzq,
        bGoteoDer: bGoteoDer,
        observaciones: observaciones));
  }

  List<String> infoFrenos(String noOrden) {
    List<String> _seleccionado = [];
    var box = Hive.box('frenosBox');
    for (Frenos frenos in box.values) {
      if (frenos.noOrden == noOrden) {
        _seleccionado = [
          frenos.fBalatasPor,
          frenos.fBalatas,
          frenos.fDisco,
          frenos.fRectificacionIzq,
          frenos.fRectificacionDer,
          frenos.fCaliper,
          frenos.fNormalIzq,
          frenos.fNormalDer,
          frenos.fGoteoIzq,
          frenos.fGoteoDer,
          frenos.bBalatasPor,
          frenos.bBalatas,
          frenos.bDisco,
          frenos.bTambor,
          frenos.bRectificacionIzq,
          frenos.bRectificacionDer,
          frenos.bCaliper,
          frenos.bCilindro,
          frenos.bNormalIzq,
          frenos.bNormalDer,
          frenos.bGoteoIzq,
          frenos.bGoteoDer,
          frenos.observaciones,
        ];
        break;
      }
    }
    return _seleccionado;
  }

  bool existeFrenos(String noOrden) {
    bool existe = false;
    var box = Hive.box('frenosBox');

    for (Frenos frenos in box.values) {
      if (frenos.noOrden == noOrden) {
        existe = true;
        break;
      }
    }
    return existe;
  }

  //Direccion Hidraulica
  void addHidraulica(
    String noOrden,
    String fuga,
    String conRuido,
    String altaPresion,
    String retorno,
    String lCremallera,
    String rCremallera,
    String observaciones,
  ) {
    var box = Hive.box('hidraulicaBox');
    box.add(Direccion_Hidraulica(
        noOrden: noOrden,
        fuga: fuga,
        conRuido: conRuido,
        altaPresion: altaPresion,
        retorno: retorno,
        lCremallera: lCremallera,
        rCremallera: rCremallera,
        observaciones: observaciones));
  }

  List<String> infoHidraulica(String noOrden) {
    List<String> _seleccionado = [];
    var box = Hive.box('hidraulicaBox');

    for (Direccion_Hidraulica hidra in box.values) {
      if (hidra.noOrden == noOrden) {
        _seleccionado = [
          hidra.fuga,
          hidra.conRuido,
          hidra.altaPresion,
          hidra.retorno,
          hidra.lCremallera,
          hidra.rCremallera,
          hidra.observaciones,
        ];
        break;
      }
    }
    return _seleccionado;
  }

  bool existeHidraulica(String noOrden) {
    bool existe = false;
    var box = Hive.box('hidraulicaBox');

    for (Direccion_Hidraulica hidra in box.values) {
      if (hidra.noOrden == noOrden) {
        existe = true;
        break;
      }
    }
    return existe;
  }

  //Condicion del Motor
  void addMotor(
    String noOrden,
    String bandaAlter,
    String poleaTen,
    String poleaLo,
    String bombaAgua,
    String fanClutch,
    String bombaAceite,
    String tapaPunt,
    String tapaCarter,
    String monoBlock,
    String cadenaTime,
    String bRetenC,
    String bRetenCG,
    String fRetenC,
    String fRetenCG,
    String retenArbolE,
    String retenArbolEG,
    String retenArbolA,
    String retenArbolAG,
    String observaciones,
  ) {
    var box = Hive.box('motorBox');
    box.add(Condicion_motor(
        noOrden: noOrden,
        bandaAlter: bandaAlter,
        poleaTen: poleaTen,
        poleaLo: poleaLo,
        bombaAgua: bombaAgua,
        fanClutch: fanClutch,
        bombaAceite: bombaAceite,
        tapaPunt: tapaPunt,
        tapaCarter: tapaCarter,
        monoBlock: monoBlock,
        cadenaTime: cadenaTime,
        bRetenC: bRetenC,
        bRetenCG: bRetenCG,
        fRetenC: fRetenC,
        fRetenCG: fRetenCG,
        retenArbolE: retenArbolE,
        retenArbolEG: retenArbolEG,
        retenArbolA: retenArbolA,
        retenArbolAG: retenArbolAG,
        observaciones: observaciones));
  }

  List<String> infoMotor(String noOrden) {
    List<String> _seleccionado = [];
    var box = Hive.box('motorBox');

    for (Condicion_motor motor in box.values) {
      if (motor.noOrden == noOrden) {
        _seleccionado = [
          motor.bandaAlter,
          motor.poleaTen,
          motor.poleaLo,
          motor.bombaAgua,
          motor.fanClutch,
          motor.bombaAceite,
          motor.tapaPunt,
          motor.tapaCarter,
          motor.monoBlock,
          motor.cadenaTime,
          motor.bRetenC,
          motor.bRetenCG,
          motor.fRetenC,
          motor.fRetenCG,
          motor.retenArbolE,
          motor.retenArbolEG,
          motor.retenArbolA,
          motor.retenArbolAG,
          motor.observaciones
        ];
        break;
      }
    }
    return _seleccionado;
  }

  bool existeMotor(String noOrden) {
    bool existe = false;
    var box = Hive.box('motorBox');

    for (Condicion_motor motor in box.values) {
      if (motor.noOrden == noOrden) {
        existe = true;
        break;
      }
    }
    return existe;
  }

  //Condiciones Sistema de Enfriamiento
  void addEnfriamiento(
    String noOrden,
    String radiador,
    String acongelante,
    String agua,
    String fugaBomba,
    String termos,
    String manguera,
    String tapon,
    String abrazadera,
    String deposito,
    String observaciones,
  ) {
    var box = Hive.box('enfriamientoBox');
    box.add(Sistema_enfriamiento(
        noOrden: noOrden,
        radiador: radiador,
        acongelante: acongelante,
        agua: agua,
        fugaBomba: fugaBomba,
        termos: termos,
        manguera: manguera,
        tapon: tapon,
        abrazadera: abrazadera,
        deposito: deposito,
        observaciones: observaciones));
  }

  List<String> infoEnfriamiento(String noOrden) {
    List<String> _seleccionado = [];
    var box = Hive.box('enfriamientoBox');

    for (Sistema_enfriamiento enfria in box.values) {
      if (enfria.noOrden == noOrden) {
        _seleccionado = [
          enfria.radiador,
          enfria.acongelante,
          enfria.agua,
          enfria.fugaBomba,
          enfria.termos,
          enfria.manguera,
          enfria.tapon,
          enfria.abrazadera,
          enfria.deposito,
          enfria.observaciones
        ];
        break;
      }
    }
    return _seleccionado;
  }

  bool existeEnfriamiento(String noOrden) {
    bool existe = false;
    var box = Hive.box('enfriamientoBox');

    for (Sistema_enfriamiento enfria in box.values) {
      if (enfria.noOrden == noOrden) {
        existe = true;
        break;
      }
    }
    return existe;
  }

  //Servicio general
  List<String> list_servicios(String nombre, String noOrden) {
    List<String> lista_servicios = [];
    var box = Hive.box('pendientesBox');

    for (Pendientes pendientes in box.values) {
      if (pendientes.nombre == nombre && pendientes.noOrden == noOrden) {
        if (pendientes.afinacion == 1) {
          if (existeAfinacion(pendientes.noOrden) == true) {
            lista_servicios.add('Afinacion');
          } else {
            lista_servicios.add('Afinacion (Por rellenar)');
          }
        }
        if (pendientes.frenos == 1) {
          if (existeFrenos(pendientes.noOrden) == true) {
            lista_servicios.add('Frenos');
          } else {
            lista_servicios.add('Frenos (Por rellenar)');
          }
        }
        if (pendientes.suspension == 1) {
          if (existeSuspension(pendientes.noOrden) == true) {
            lista_servicios.add('Suspension');
          } else {
            lista_servicios.add('Suspension (Por rellenar)');
          }
        }
        if (pendientes.hidraulica == 1) {
          if (existeHidraulica(pendientes.noOrden) == true) {
            lista_servicios.add('Direccion Hidraulica');
          } else {
            lista_servicios.add('Direccion Hidraulica (Por rellenar)');
          }
        }
      }
    }
    return lista_servicios;
  }
}
