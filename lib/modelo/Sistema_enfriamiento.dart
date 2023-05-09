import 'package:hive/hive.dart';

@HiveType(typeId: 0)
class Sistema_enfriamiento {
  @HiveField(0)
  String noOrden = '';
  @HiveField(1)
  String radiador = '';
  @HiveField(2)
  String acongelante = '';
  @HiveField(3)
  String agua = '';
  @HiveField(4)
  String fugaBomba = '';
  @HiveField(5)
  String termos = '';
  @HiveField(6)
  String manguera = '';
  @HiveField(7)
  String tapon = '';
  @HiveField(8)
  String abrazadera = '';
  @HiveField(9)
  String deposito = '';
  @HiveField(10)
  String observaciones = '';

  Sistema_enfriamiento({
    required this.noOrden,
    required this.radiador,
    required this.acongelante,
    required this.agua,
    required this.fugaBomba,
    required this.termos,
    required this.manguera,
    required this.tapon,
    required this.abrazadera,
    required this.deposito,
    required this.observaciones,
  });

  Map<String, dynamic> toMap() {
    return {
      'noOrden': noOrden,
      'radiador': radiador,
      'acongelante': acongelante,
      'agua': agua,
      'fugaBomba': fugaBomba,
      'termos': termos,
      'manguera': manguera,
      'tapon': tapon,
      'abrazadera': abrazadera,
      'deposito': deposito,
      'observaciones': observaciones,
    };
  }

  @override
  String toString() {
    return 'Enfriamiento{noOrden: $noOrden, radiador: $radiador, acongelante: $acongelante, agua: $agua, fugaBomba: $fugaBomba, termos: $termos, manguera: $manguera, tapon: $tapon, abrazadera: $abrazadera, deposito: $deposito, observaciones: $observaciones}';
  }
}

class Sistema_enfriamientoAdapter extends TypeAdapter<Sistema_enfriamiento> {
  @override
  Sistema_enfriamiento read(BinaryReader reader) {
    return Sistema_enfriamiento(
        noOrden: reader.read(),
        radiador: reader.read(),
        acongelante: reader.read(),
        agua: reader.read(),
        fugaBomba: reader.read(),
        termos: reader.read(),
        manguera: reader.read(),
        tapon: reader.read(),
        abrazadera: reader.read(),
        deposito: reader.read(),
        observaciones: reader.read());
  }

  @override
  int get typeId => 8;

  @override
  void write(BinaryWriter writer, Sistema_enfriamiento obj) {
    writer.write(obj.noOrden);
    writer.write(obj.radiador);
    writer.write(obj.acongelante);
    writer.write(obj.agua);
    writer.write(obj.fugaBomba);
    writer.write(obj.termos);
    writer.write(obj.manguera);
    writer.write(obj.tapon);
    writer.write(obj.abrazadera);
    writer.write(obj.deposito);
    writer.write(obj.observaciones);
  }
}
