import 'package:hive/hive.dart';

@HiveType(typeId: 0)
class Direccion_Hidraulica {
  @HiveField(0)
  String noOrden = '';
  @HiveField(1)
  String fuga = '';
  @HiveField(2)
  String conRuido = '';
  @HiveField(3)
  String altaPresion = '';
  @HiveField(4)
  String retorno = '';
  @HiveField(5)
  String lCremallera = '';
  @HiveField(6)
  String rCremallera = '';
  @HiveField(7)
  String observaciones = '';

  Direccion_Hidraulica({
    required this.noOrden,
    required this.fuga,
    required this.conRuido,
    required this.altaPresion,
    required this.retorno,
    required this.lCremallera,
    required this.rCremallera,
    required this.observaciones,
  });

  Map<String, dynamic> toMap() {
    return {
      'noOrden': noOrden,
      'fuga': fuga,
      'conRuido': conRuido,
      'altaPresion': altaPresion,
      'retorno': retorno,
      'lCremallera': lCremallera,
      'rCremallera': rCremallera,
      'observaciones': observaciones,
    };
  }

  @override
  String toString() {
    return 'Hidraulica{noOrden: $noOrden, fuga: $fuga, conRuido: $conRuido, altaPresion: $altaPresion, retorno: $retorno, lCremallera: $lCremallera, rCremallera: $rCremallera, observaciones: $observaciones}';
  }
}

class Direccion_HidraulicaAdapter extends TypeAdapter<Direccion_Hidraulica> {
  @override
  Direccion_Hidraulica read(BinaryReader reader) {
    return Direccion_Hidraulica(
        noOrden: reader.read(),
        fuga: reader.read(),
        conRuido: reader.read(),
        altaPresion: reader.read(),
        retorno: reader.read(),
        lCremallera: reader.read(),
        rCremallera: reader.read(),
        observaciones: reader.read());
  }

  @override
  int get typeId => 6;

  @override
  void write(BinaryWriter writer, Direccion_Hidraulica obj) {
    writer.write(obj.noOrden);
    writer.write(obj.fuga);
    writer.write(obj.conRuido);
    writer.write(obj.altaPresion);
    writer.write(obj.retorno);
    writer.write(obj.lCremallera);
    writer.write(obj.rCremallera);
    writer.write(obj.observaciones);
  }
}
