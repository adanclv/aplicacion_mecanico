import 'package:hive/hive.dart';

@HiveType(typeId: 0)
class Afinacion {
  @HiveField(0)
  String noOrden = '';
  @HiveField(1)
  String bujiasCant = '';
  @HiveField(2)
  String bujias = '';
  @HiveField(3)
  String bujiasTipo = '';
  @HiveField(4)
  String fAire = '';
  @HiveField(5)
  String fAceite = '';
  @HiveField(6)
  String fGasolina = '';
  @HiveField(7)
  String aceite = '';
  @HiveField(8)
  String aceiteTipo = '';
  @HiveField(9)
  String carbcln = '';
  @HiveField(10)
  String cables = '';
  @HiveField(11)
  String tapa = '';
  @HiveField(12)
  String pcv = '';
  @HiveField(13)
  String rotor = '';
  @HiveField(14)
  String liqInj = '';
  @HiveField(15)
  String aCongelante = '';
  @HiveField(16)
  String aceiteDirHid = '';
  @HiveField(17)
  String aceiteTraAuto = '';
  @HiveField(18)
  String observaciones = '';

  Afinacion({
    required this.noOrden,
    required this.bujiasCant,
    required this.bujias,
    required this.bujiasTipo,
    required this.fAire,
    required this.fAceite,
    required this.fGasolina,
    required this.aceite,
    required this.aceiteTipo,
    required this.carbcln,
    required this.cables,
    required this.tapa,
    required this.pcv,
    required this.rotor,
    required this.liqInj,
    required this.aCongelante,
    required this.aceiteDirHid,
    required this.aceiteTraAuto,
    required this.observaciones,
  });

  Map<String, dynamic> toMap() {
    return {
      'noOrden': noOrden,
      'bujiasCant': bujiasCant,
      'bujias': bujias,
      'bujiasTipo': bujiasTipo,
      'fAire': fAire,
      'fAceite': fAceite,
      'fGasolina': fGasolina,
      'aceite': aceite,
      'aceiteTipo': aceiteTipo,
      'carbcln': carbcln,
      'cables': cables,
      'tapa': tapa,
      'pcv': pcv,
      'rotor': rotor,
      'liqInj': liqInj,
      'aCongelante': aCongelante,
      'aceiteDirHid': aceiteDirHid,
      'aceiteTraAuto': aceiteTraAuto,
      'observaciones': observaciones,
    };
  }

  @override
  String toString() {
    return 'Afinacion{noOrden: $noOrden, bujiasCant: $bujiasCant, bujias: $bujias, bujiasTipo: $bujiasTipo, fAire: $fAire, fAceite: $fAceite, fGasolina: $fGasolina, aceite: $aceite, aceiteTipo: $aceiteTipo, carbcln: $carbcln, cables: $cables, tapa: $tapa, pcv: $pcv, rotor: $rotor, liqInj: $liqInj, aCongelante: $aCongelante, aceiteDirHid: $aceiteDirHid, aceiteTraAuto: $aceiteTraAuto, observaciones: $observaciones}';
  }
}

class AfinacionAdapter extends TypeAdapter<Afinacion> {
  @override
  Afinacion read(BinaryReader reader) {
    return Afinacion(
        noOrden: reader.read(),
        bujiasCant: reader.read(),
        bujias: reader.read(),
        bujiasTipo: reader.read(),
        fAire: reader.read(),
        fAceite: reader.read(),
        fGasolina: reader.read(),
        aceite: reader.read(),
        aceiteTipo: reader.read(),
        carbcln: reader.read(),
        cables: reader.read(),
        tapa: reader.read(),
        pcv: reader.read(),
        rotor: reader.read(),
        liqInj: reader.read(),
        aCongelante: reader.read(),
        aceiteDirHid: reader.read(),
        aceiteTraAuto: reader.read(),
        observaciones: reader.read());
  }

  @override
  int get typeId => 4;

  @override
  void write(BinaryWriter writer, Afinacion obj) {
    writer.write(obj.noOrden);
    writer.write(obj.bujiasCant);
    writer.write(obj.bujias);
    writer.write(obj.bujiasTipo);
    writer.write(obj.fAire);
    writer.write(obj.fAceite);
    writer.write(obj.fGasolina);
    writer.write(obj.aceite);
    writer.write(obj.aceiteTipo);
    writer.write(obj.carbcln);
    writer.write(obj.cables);
    writer.write(obj.tapa);
    writer.write(obj.pcv);
    writer.write(obj.rotor);
    writer.write(obj.liqInj);
    writer.write(obj.aCongelante);
    writer.write(obj.aceiteDirHid);
    writer.write(obj.aceiteTraAuto);
    writer.write(obj.observaciones);
  }
}
