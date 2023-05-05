import 'package:hive/hive.dart';

@HiveType(typeId: 0)
class Vehiculo {
  @HiveField(0)
  String marca = '';
  @HiveField(1)
  String modelo = '';
  @HiveField(2)
  String year = '';
  @HiveField(3)
  String motor = '';
  @HiveField(4)
  String color = '';
  @HiveField(5)
  String vin = '';
  @HiveField(6)
  String kms = '';
  @HiveField(7)
  String placas = '';
  @HiveField(8)
  String nombre = '';

  Vehiculo(
      {required this.marca,
      required this.modelo,
      required this.year,
      required this.motor,
      required this.color,
      required this.vin,
      required this.kms,
      required this.placas,
      required this.nombre});

  Map<String, dynamic> toMap() {
    return {
      'marca': marca,
      'modelo': modelo,
      'year': year,
      'motor': motor,
      'color': color,
      'vin': vin,
      'kms': kms,
      'placas': placas,
      'nombre': nombre,
    };
  }

  @override
  String toString() {
    return 'Vehiculo{marca: $marca, modelo: $modelo, year: $year, motor: $motor, vin:$vin, kms: $kms, placas: $placas, nombre: $nombre}';
  }
}

class VehiculoAdapter extends TypeAdapter<Vehiculo> {
  @override
  Vehiculo read(BinaryReader reader) {
    return Vehiculo(
        marca: reader.read(),
        modelo: reader.read(),
        year: reader.read(),
        motor: reader.read(),
        color: reader.read(),
        vin: reader.read(),
        kms: reader.read(),
        placas: reader.read(),
        nombre: reader.read());
  }

  @override
  int get typeId => 1;

  @override
  void write(BinaryWriter writer, Vehiculo obj) {
    writer.write(obj.marca);
    writer.write(obj.modelo);
    writer.write(obj.year);
    writer.write(obj.motor);
    writer.write(obj.color);
    writer.write(obj.vin);
    writer.write(obj.kms);
    writer.write(obj.placas);
    writer.write(obj.nombre);
  }
}
