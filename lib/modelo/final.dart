import 'package:hive/hive.dart';

class Finals {
  String dato = '';
  String precio = '';

  Finals({required this.dato, required this.precio});

  @override
  String toString() {
    return 'Final{dato: $dato, precio: $precio}';
  }
}

@HiveType(typeId: 1)
class FinalsAdapter extends TypeAdapter<Finals> {
  @override
  Finals read(BinaryReader reader) {
    return Finals(
      dato: reader.read(), precio: reader.read(),
      // leer los campos de Finals del BinaryReader
    );
  }

  @override
  void write(BinaryWriter writer, Finals obj) {
    writer.write(obj.dato);
    writer.write(obj.precio);
    // escribir los campos de Finals en el BinaryWriter
  }

  @override
  int get typeId => 11;
}
