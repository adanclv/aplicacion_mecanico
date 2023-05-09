import 'package:hive/hive.dart';

@HiveType(typeId: 0)
class Condicion_motor {
  @HiveField(0)
  String noOrden = '';
  @HiveField(1)
  String bandaAlter = '';
  @HiveField(2)
  String poleaTen = '';
  @HiveField(3)
  String poleaLo = '';
  @HiveField(4)
  String bombaAgua = '';
  @HiveField(5)
  String fanClutch = '';
  @HiveField(6)
  String bombaAceite = '';
  @HiveField(7)
  String tapaPunt = '';
  @HiveField(8)
  String tapaCarter = '';
  @HiveField(9)
  String monoBlock = '';
  @HiveField(10)
  String cadenaTime = '';
  @HiveField(11)
  String bRetenC = '';
  @HiveField(12)
  String bRetenCG = '';
  @HiveField(13)
  String fRetenC = '';
  @HiveField(14)
  String fRetenCG = '';
  @HiveField(15)
  String retenArbolE = '';
  @HiveField(16)
  String retenArbolEG = '';
  @HiveField(17)
  String retenArbolA = '';
  @HiveField(18)
  String retenArbolAG = '';
  @HiveField(19)
  String observaciones = '';

  Condicion_motor({
    required this.noOrden,
    required this.bandaAlter,
    required this.poleaTen,
    required this.poleaLo,
    required this.bombaAgua,
    required this.fanClutch,
    required this.bombaAceite,
    required this.tapaPunt,
    required this.tapaCarter,
    required this.monoBlock,
    required this.cadenaTime,
    required this.bRetenC,
    required this.bRetenCG,
    required this.fRetenC,
    required this.fRetenCG,
    required this.retenArbolE,
    required this.retenArbolEG,
    required this.retenArbolA,
    required this.retenArbolAG,
    required this.observaciones,
  });

  Map<String, dynamic> toMap() {
    return {
      'noOrden': noOrden,
      'bandaAlter': bandaAlter,
      'poleaTen': poleaTen,
      'poleaLo': poleaLo,
      'bombaAgua': bombaAgua,
      'fanClutch': fanClutch,
      'bombaAceite': bombaAceite,
      'tapaPunt': tapaPunt,
      'tapaCarter': tapaCarter,
      'monoBlock': monoBlock,
      'cadenaTime': cadenaTime,
      'bRetenC': bRetenC,
      'bRetenCG': bRetenCG,
      'fRetenC': fRetenC,
      'fRetenCG': fRetenCG,
      'retenArbolE': retenArbolE,
      'retenArbolEG': retenArbolEG,
      'retenArbolA': retenArbolA,
      'retenArbolAG': retenArbolAG,
      'observaciones': observaciones,
    };
  }

  @override
  String toString() {
    return 'Motor{noOrden: $noOrden, bandaAlter: $bandaAlter, poleaTen: $poleaTen, poleaLo: $poleaLo, bombaAgua: $bombaAgua, fanClutch: $fanClutch, bombaAceite: $bombaAceite, tapaPunt: $tapaPunt, tapaCarter: $tapaCarter, monoBlock: $monoBlock, cadenaTime: $cadenaTime, bRetenC: $bRetenC, bRetenCG: $bRetenCG, fRetenC: $fRetenC, fRetenCG: $fRetenCG, retenArbolE: $retenArbolE, retenArbolEG: $retenArbolEG, retenArbolA: $retenArbolA, retenArbolAG: $retenArbolAG, observaciones: $observaciones}';
  }
}

class Condicion_motorAdapter extends TypeAdapter<Condicion_motor> {
  @override
  Condicion_motor read(BinaryReader reader) {
    return Condicion_motor(
        noOrden: reader.read(),
        bandaAlter: reader.read(),
        poleaTen: reader.read(),
        poleaLo: reader.read(),
        bombaAgua: reader.read(),
        fanClutch: reader.read(),
        bombaAceite: reader.read(),
        tapaPunt: reader.read(),
        tapaCarter: reader.read(),
        monoBlock: reader.read(),
        cadenaTime: reader.read(),
        bRetenC: reader.read(),
        bRetenCG: reader.read(),
        fRetenC: reader.read(),
        fRetenCG: reader.read(),
        retenArbolE: reader.read(),
        retenArbolEG: reader.read(),
        retenArbolA: reader.read(),
        retenArbolAG: reader.read(),
        observaciones: reader.read());
  }

  @override
  int get typeId => 7;

  @override
  void write(BinaryWriter writer, Condicion_motor obj) {
    writer.write(obj.noOrden);
    writer.write(obj.bandaAlter);
    writer.write(obj.poleaTen);
    writer.write(obj.poleaLo);
    writer.write(obj.bombaAgua);
    writer.write(obj.fanClutch);
    writer.write(obj.bombaAceite);
    writer.write(obj.tapaPunt);
    writer.write(obj.tapaCarter);
    writer.write(obj.monoBlock);
    writer.write(obj.cadenaTime);
    writer.write(obj.bRetenC);
    writer.write(obj.bRetenCG);
    writer.write(obj.fRetenC);
    writer.write(obj.fRetenCG);
    writer.write(obj.retenArbolE);
    writer.write(obj.retenArbolEG);
    writer.write(obj.retenArbolA);
    writer.write(obj.retenArbolAG);
    writer.write(obj.observaciones);
  }
}
