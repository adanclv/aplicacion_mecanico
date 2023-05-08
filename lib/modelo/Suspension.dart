import 'package:hive/hive.dart';

@HiveType(typeId: 0)
class Suspension {
  @HiveField(0)
  String noOrden = '';
  @HiveField(1)
  String lTerminalInt = '';
  @HiveField(2)
  String lTerminalExt = '';
  @HiveField(3)
  String lRotulaInf = '';
  @HiveField(4)
  String lRotulaSup = '';
  @HiveField(5)
  String lAmortDel = '';
  @HiveField(6)
  String lAmortTras = '';
  @HiveField(7)
  String lHorquilla = '';
  @HiveField(8)
  String lHules = '';
  @HiveField(9)
  String lTornillos = '';
  @HiveField(10)
  String rTerminalInt = '';
  @HiveField(11)
  String rTerminalExt = '';
  @HiveField(12)
  String rRotulaInf = '';
  @HiveField(13)
  String rRotulaSup = '';
  @HiveField(14)
  String fGomas = '';
  @HiveField(15)
  String fBujes = '';
  @HiveField(16)
  String bGomas = '';
  @HiveField(17)
  String bBujes = '';
  @HiveField(18)
  String observaciones = '';

  Suspension({
    required this.noOrden,
    required this.lTerminalInt,
    required this.lTerminalExt,
    required this.lRotulaInf,
    required this.lRotulaSup,
    required this.lAmortDel,
    required this.lAmortTras,
    required this.lHorquilla,
    required this.lHules,
    required this.lTornillos,
    required this.rTerminalInt,
    required this.rTerminalExt,
    required this.rRotulaInf,
    required this.rRotulaSup,
    required this.fGomas,
    required this.fBujes,
    required this.bGomas,
    required this.bBujes,
    required this.observaciones,
  });

  Map<String, dynamic> toMap() {
    return {
      'noOrden': noOrden,
      'lTerminalInt': lTerminalInt,
      'lTerminalExt': lTerminalExt,
      'lRotulaInf': lRotulaInf,
      'lRotulaSup': lRotulaSup,
      'lAmortDel': lAmortDel,
      'lAmortTras': lAmortTras,
      'lHorquilla': lHorquilla,
      'lHules': lHules,
      'lTornillos': lTornillos,
      'rTerminalInt': rTerminalInt,
      'rTerminalExt': rTerminalExt,
      'rRotulaInf': rRotulaInf,
      'rRotulaSup': rRotulaSup,
      'fGomas': fGomas,
      'fBujes': fBujes,
      'bGomas': bGomas,
      'bBujes': bBujes,
      'observaciones': observaciones,
    };
  }

  @override
  String toString() {
    return 'Suspension{noOrden: $noOrden, lTerminalInt: $lTerminalInt, lTerminalExt: $lTerminalExt, lRotulaInf: $lRotulaInf, lRotulaSup: $lRotulaSup, lAmortDel: $lAmortDel, lAmortTras: $lAmortTras, lHorquilla: $lHorquilla, lHules: $lHules, lTornillos: $lTornillos, rTerminalInt: $rTerminalInt, rTerminalExt: $rTerminalExt, rRotulaInf: $rRotulaInf, rRotulaSup: $rRotulaSup, fGomas: $fGomas, fBujes: $fBujes, bGomas: $bGomas, bBujes: $bBujes, observaciones: $observaciones}';
  }
}

class SuspensionAdapter extends TypeAdapter<Suspension> {
  @override
  Suspension read(BinaryReader reader) {
    return Suspension(
        noOrden: reader.read(),
        lTerminalInt: reader.read(),
        lTerminalExt: reader.read(),
        lRotulaInf: reader.read(),
        lRotulaSup: reader.read(),
        lAmortDel: reader.read(),
        lAmortTras: reader.read(),
        lHorquilla: reader.read(),
        lHules: reader.read(),
        lTornillos: reader.read(),
        rTerminalInt: reader.read(),
        rTerminalExt: reader.read(),
        rRotulaInf: reader.read(),
        rRotulaSup: reader.read(),
        fGomas: reader.read(),
        fBujes: reader.read(),
        bGomas: reader.read(),
        bBujes: reader.read(),
        observaciones: reader.read());
  }

  @override
  int get typeId => 3;

  @override
  void write(BinaryWriter writer, Suspension obj) {
    writer.write(obj.noOrden);
    writer.write(obj.lTerminalInt);
    writer.write(obj.lTerminalExt);
    writer.write(obj.lRotulaInf);
    writer.write(obj.lRotulaSup);
    writer.write(obj.lAmortDel);
    writer.write(obj.lAmortTras);
    writer.write(obj.lHorquilla);
    writer.write(obj.lHules);
    writer.write(obj.lTornillos);
    writer.write(obj.rTerminalInt);
    writer.write(obj.rTerminalExt);
    writer.write(obj.rRotulaInf);
    writer.write(obj.rRotulaSup);
    writer.write(obj.fGomas);
    writer.write(obj.fBujes);
    writer.write(obj.bGomas);
    writer.write(obj.bBujes);
    writer.write(obj.observaciones);
  }
}
