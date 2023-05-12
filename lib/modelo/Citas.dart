import 'package:hive/hive.dart';

@HiveType(typeId: 0)
class Citas {
  @HiveField(0)
  String nombre = '';
  @HiveField(1)
  String telefono = '';
  @HiveField(2)
  String vehiculo = '';
  @HiveField(3)
  String fecha = '';
  @HiveField(4)
  String hora = '';
  @HiveField(5)
  int afinacion = 0;
  @HiveField(6)
  int frenos = 0;
  @HiveField(7)
  int suspension = 0;
  @HiveField(8)
  int hidraulica = 0;

  Citas({
    required this.nombre,
    required this.telefono,
    required this.vehiculo,
    required this.fecha,
    required this.hora,
    required this.afinacion,
    required this.frenos,
    required this.suspension,
    required this.hidraulica,
  });

  Map<String, dynamic> toMap() {
    return {
      'nombre': nombre,
      'telefono': telefono,
      'vehiculo': vehiculo,
      'fecha': fecha,
      'hora': hora,
      'afinacion': afinacion,
      'frenos': frenos,
      'suspension': suspension,
      'hidraulica': hidraulica,
    };
  }

  @override
  String toString() {
    return 'Citas{nombre: $nombre, telefono: $telefono, vehiculo: $vehiculo, fecha: $fecha, hora: $hora, afinacion: $afinacion, frenos: $frenos, suspension: $suspension, hidraulica: $hidraulica}';
  }
}

class CitasAdapter extends TypeAdapter<Citas> {
  @override
  Citas read(BinaryReader reader) {
    return Citas(
        nombre: reader.read(),
        telefono: reader.read(),
        vehiculo: reader.read(),
        fecha: reader.read(),
        hora: reader.read(),
        afinacion: reader.read(),
        frenos: reader.read(),
        suspension: reader.read(),
        hidraulica: reader.read());
  }

  @override
  int get typeId => 10;

  @override
  void write(BinaryWriter writer, Citas obj) {
    writer.write(obj.nombre);
    writer.write(obj.telefono);
    writer.write(obj.vehiculo);
    writer.write(obj.fecha);
    writer.write(obj.hora);
    writer.write(obj.afinacion);
    writer.write(obj.frenos);
    writer.write(obj.suspension);
    writer.write(obj.hidraulica);
  }
}
