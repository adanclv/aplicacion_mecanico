import 'package:hive/hive.dart';

@HiveType(typeId: 0)
class Pendientes {
  @HiveField(0)
  String noOrden = '';
  @HiveField(1)
  String nombre = '';
  @HiveField(2)
  String telefono = '';
  @HiveField(3)
  String marca = '';
  @HiveField(4)
  String modelo = '';
  @HiveField(5)
  String year = '';
  @HiveField(6)
  String vin = '';
  @HiveField(7)
  String placas = '';
  @HiveField(8)
  String color = '';
  @HiveField(9)
  int afinacion = 0;
  @HiveField(10)
  int frenos = 0;
  @HiveField(11)
  int suspension = 0;
  @HiveField(12)
  int hidraulica = 0;

  Pendientes({
    required this.noOrden,
    required this.nombre,
    required this.telefono,
    required this.marca,
    required this.modelo,
    required this.year,
    required this.vin,
    required this.placas,
    required this.color,
    required this.afinacion,
    required this.frenos,
    required this.suspension,
    required this.hidraulica,
  });

  Map<String, dynamic> toMap() {
    return {
      'noOrden': noOrden,
      'nombre': nombre,
      'telefono': telefono,
      'marca': marca,
      'modelo': modelo,
      'year': year,
      'vin': vin,
      'placas': placas,
      'color': color,
      'afinacion': afinacion,
      'frenos': frenos,
      'suspension': suspension,
      'hidraulica': hidraulica,
    };
  }

  @override
  String toString() {
    return 'Pendientes{noOrden: $noOrden, nombre: $nombre, telefono: $telefono, marca: $marca, modelo: $modelo, year: $year, vin: $vin, placas: $placas, color: $color, afinacion: $afinacion, frenos: $frenos, suspension: $suspension, hidraulica: $hidraulica}';
  }
}

class PendientesAdapter extends TypeAdapter<Pendientes> {
  @override
  Pendientes read(BinaryReader reader) {
    return Pendientes(
      noOrden: reader.read(),
      nombre: reader.read(),
      telefono: reader.read(),
      marca: reader.read(),
      modelo: reader.read(),
      year: reader.read(),
      vin: reader.read(),
      placas: reader.read(),
      color: reader.read(),
      afinacion: reader.read(),
      frenos: reader.read(),
      suspension: reader.read(),
      hidraulica: reader.read(),
    );
  }

  @override
  int get typeId => 2;

  @override
  void write(BinaryWriter writer, Pendientes obj) {
    writer.write(obj.noOrden);
    writer.write(obj.nombre);
    writer.write(obj.telefono);
    writer.write(obj.marca);
    writer.write(obj.modelo);
    writer.write(obj.year);
    writer.write(obj.vin);
    writer.write(obj.placas);
    writer.write(obj.color);
    writer.write(obj.afinacion);
    writer.write(obj.frenos);
    writer.write(obj.suspension);
    writer.write(obj.hidraulica);
  }
}
