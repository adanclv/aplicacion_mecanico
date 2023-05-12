import 'package:aplicacion_mecanico/modelo/final.dart';
import 'package:hive/hive.dart';

@HiveType(typeId: 0)
class Terminado {
  @HiveField(0)
  String noOrden = '';
  @HiveField(1)
  String nombre = '';
  @HiveField(2)
  String vin = '';
  @HiveField(3)
  int afinacion = 0;
  @HiveField(4)
  int frenos = 0;
  @HiveField(5)
  int suspension = 0;
  @HiveField(6)
  int hidraulica = 0;
  @HiveField(7)
  List<Finals> lista;
  @HiveField(8)
  String fechaT = '';
  @HiveField(9)
  double total = 0.0;
  @HiveField(10)
  String vehiculo = '';

  Terminado(
      {required this.noOrden,
      required this.nombre,
      required this.vin,
      required this.afinacion,
      required this.frenos,
      required this.suspension,
      required this.hidraulica,
      required this.lista,
      required this.fechaT,
      required this.total,
      required this.vehiculo});

  get key => null;

  Map<String, dynamic> toMap() {
    return {
      'noOrden': noOrden,
      'nombre': nombre,
      'vin': vin,
      'afinacion': afinacion,
      'frenos': frenos,
      'suspension': suspension,
      'hidraulica': hidraulica,
      'lista': lista,
      'fechaT': fechaT,
      'total': total,
      'vehiculo': vehiculo,
    };
  }

  @override
  String toString() {
    return 'Terminado{noOrden: $noOrden, nombre: $nombre, vin: $vin, afinacion: $afinacion, frenos: $frenos, suspension:$suspension, hidraulica: $hidraulica, lista: $lista, fechaT: $fechaT, total: $total, vehiculo: $vehiculo}';
  }
}

class TerminadoAdapter extends TypeAdapter<Terminado> {
  @override
  Terminado read(BinaryReader reader) {
    return Terminado(
        noOrden: reader.read(),
        nombre: reader.read(),
        vin: reader.read(),
        afinacion: reader.read(),
        frenos: reader.read(),
        suspension: reader.read(),
        hidraulica: reader.read(),
        lista: List<Finals>.from(reader.read()),
        fechaT: reader.read(),
        total: reader.read(),
        vehiculo: reader.read());
  }

  @override
  int get typeId => 9;

  @override
  void write(BinaryWriter writer, Terminado obj) {
    writer.write(obj.noOrden);
    writer.write(obj.nombre);
    writer.write(obj.vin);
    writer.write(obj.afinacion);
    writer.write(obj.frenos);
    writer.write(obj.suspension);
    writer.write(obj.hidraulica);
    writer.write(obj.lista);
    writer.write(obj.fechaT);
    writer.write(obj.total);
    writer.write(obj.vehiculo);
  }
}
