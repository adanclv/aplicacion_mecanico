import 'package:hive/hive.dart';

@HiveType(typeId: 0)
class Frenos {
  @HiveField(0)
  String noOrden = '';
  @HiveField(1)
  String fBalatasPor = '';
  @HiveField(2)
  String fBalatas = '';
  @HiveField(3)
  String fDisco = '';
  @HiveField(4)
  String fRectificacionIzq = '';
  @HiveField(5)
  String fRectificacionDer = '';
  @HiveField(6)
  String fCaliper = '';
  @HiveField(7)
  String fNormalIzq = '';
  @HiveField(8)
  String fNormalDer = '';
  @HiveField(9)
  String fGoteoIzq = '';
  @HiveField(10)
  String fGoteoDer = '';
  @HiveField(11)
  String bBalatasPor = '';
  @HiveField(12)
  String bBalatas = '';
  @HiveField(13)
  String bDisco = '';
  @HiveField(14)
  String bTambor = '';
  @HiveField(15)
  String bRectificacionIzq = '';
  @HiveField(16)
  String bRectificacionDer = '';
  @HiveField(17)
  String bCaliper = '';
  @HiveField(18)
  String bCilindro = '';
  @HiveField(19)
  String bNormalIzq = '';
  @HiveField(20)
  String bNormalDer = '';
  @HiveField(21)
  String bGoteoIzq = '';
  @HiveField(22)
  String bGoteoDer = '';
  @HiveField(23)
  String observaciones = '';

  Frenos({
    required this.noOrden,
    required this.fBalatasPor,
    required this.fBalatas,
    required this.fDisco,
    required this.fRectificacionIzq,
    required this.fRectificacionDer,
    required this.fCaliper,
    required this.fNormalIzq,
    required this.fNormalDer,
    required this.fGoteoIzq,
    required this.fGoteoDer,
    required this.bBalatasPor,
    required this.bBalatas,
    required this.bDisco,
    required this.bTambor,
    required this.bRectificacionIzq,
    required this.bRectificacionDer,
    required this.bCaliper,
    required this.bCilindro,
    required this.bNormalIzq,
    required this.bNormalDer,
    required this.bGoteoIzq,
    required this.bGoteoDer,
    required this.observaciones,
  });

  Map<String, dynamic> toMap() {
    return {
      'noOrden': noOrden,
      'fBalatasPor': fBalatasPor,
      'fBalatas': fBalatas,
      'fDisco': fDisco,
      'fRectificacionIzq': fRectificacionIzq,
      'fRectificacionDer': fRectificacionDer,
      'fCaliper': fCaliper,
      'fNormalIzq': fNormalIzq,
      'fNormalDer': fNormalDer,
      'fGoteoIzq': fGoteoIzq,
      'fGoteoDer': fGoteoDer,
      'bBalatasPor': bBalatasPor,
      'bBalatas': bBalatas,
      'bDisco': bDisco,
      'bTambor': bTambor,
      'bRectificacionIzq': bRectificacionIzq,
      'bRectificacionDer': bRectificacionDer,
      'bCaliper': bCaliper,
      'bCilindro': bCilindro,
      'bNormalIzq': bNormalIzq,
      'bNormalDer': bNormalDer,
      'bGoteoIzq': bGoteoIzq,
      'bGoteoDer': bGoteoDer,
      'observaciones': observaciones,
    };
  }

  @override
  String toString() {
    return 'Frenos{noOrden: $noOrden, fBalatasPor: $fBalatasPor, fBalatas: $fBalatas, fDisco: $fDisco, fRectificacionIzq: $fRectificacionIzq, fRectificacionDer: $fRectificacionDer, fCaliper: $fCaliper, fNormalIzq: $fNormalIzq, fNormalDer: $fNormalDer, fGoteoIzq: $fGoteoIzq, fGoteoDer: $fGoteoDer, bBalatasPor: $bBalatasPor, bBalatas: $bBalatas, bDisco: $bDisco, bTambor: $bTambor, bRectificacionIzq: $bRectificacionIzq, bRectificacionDer: $bRectificacionDer, bCaliper: $bCaliper, bCilindro: $bCilindro, bNormalIzq: $bNormalIzq, bNormalDer: $bNormalDer, bGoteoIzq: $bGoteoIzq, bGoteoDer: $bGoteoDer, observaciones: $observaciones}';
  }
}

class FrenosAdapter extends TypeAdapter<Frenos> {
  @override
  Frenos read(BinaryReader reader) {
    return Frenos(
        noOrden: reader.read(),
        fBalatasPor: reader.read(),
        fBalatas: reader.read(),
        fDisco: reader.read(),
        fRectificacionIzq: reader.read(),
        fRectificacionDer: reader.read(),
        fCaliper: reader.read(),
        fNormalIzq: reader.read(),
        fNormalDer: reader.read(),
        fGoteoIzq: reader.read(),
        fGoteoDer: reader.read(),
        bBalatasPor: reader.read(),
        bBalatas: reader.read(),
        bDisco: reader.read(),
        bTambor: reader.read(),
        bRectificacionIzq: reader.read(),
        bRectificacionDer: reader.read(),
        bCaliper: reader.read(),
        bCilindro: reader.read(),
        bNormalIzq: reader.read(),
        bNormalDer: reader.read(),
        bGoteoIzq: reader.read(),
        bGoteoDer: reader.read(),
        observaciones: reader.read());
  }

  @override
  int get typeId => 5;

  @override
  void write(BinaryWriter writer, Frenos obj) {
    writer.write(obj.noOrden);
    writer.write(obj.fBalatasPor);
    writer.write(obj.fBalatas);
    writer.write(obj.fDisco);
    writer.write(obj.fRectificacionIzq);
    writer.write(obj.fRectificacionDer);
    writer.write(obj.fCaliper);
    writer.write(obj.fNormalIzq);
    writer.write(obj.fNormalDer);
    writer.write(obj.fGoteoIzq);
    writer.write(obj.fGoteoDer);
    writer.write(obj.bBalatasPor);
    writer.write(obj.bBalatas);
    writer.write(obj.bDisco);
    writer.write(obj.bTambor);
    writer.write(obj.bRectificacionIzq);
    writer.write(obj.bRectificacionDer);
    writer.write(obj.bCaliper);
    writer.write(obj.bCilindro);
    writer.write(obj.bNormalIzq);
    writer.write(obj.bNormalDer);
    writer.write(obj.bGoteoIzq);
    writer.write(obj.bGoteoDer);
    writer.write(obj.observaciones);
  }
}
