import 'package:hive/hive.dart';

@HiveType(typeId: 0)
class Cliente {
  @HiveField(0)
  String nombre = '';
  @HiveField(1)
  String telefono = '';
  @HiveField(2)
  String calle = '';
  @HiveField(3)
  String numero = '';
  @HiveField(4)
  String colonia = '';
  @HiveField(5)
  String cp = '';

  Cliente({
    required this.nombre,
    required this.telefono,
    required this.calle,
    required this.numero,
    required this.colonia,
    required this.cp,
  });

  Map<String, dynamic> toMap() {
    return {
      'nombre': nombre,
      'telefono': telefono,
      'calle': calle,
      'numero': numero,
      'colonia': colonia,
      'cp': cp,
    };
  }

  @override
  String toString() {
    return 'Cliente{nombre: $nombre, telefono: $telefono, calle: $calle, numero: $numero, colonia: $colonia, cp: $cp}';
  }
}

class ClienteAdapter extends TypeAdapter<Cliente> {
  @override
  Cliente read(BinaryReader reader) {
    return Cliente(
      nombre: reader.read(),
      telefono: reader.read(),
      calle: reader.read(),
      numero: reader.read(),
      colonia: reader.read(),
      cp: reader.read(),
    );
  }

  @override
  int get typeId => 0;

  @override
  void write(BinaryWriter writer, Cliente obj) {
    writer.write(obj.nombre);
    writer.write(obj.telefono);
    writer.write(obj.calle);
    writer.write(obj.numero);
    writer.write(obj.colonia);
    writer.write(obj.cp);
  }
}
