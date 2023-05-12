import 'package:aplicacion_mecanico/modelo/Citas.dart';
import 'package:hive/hive.dart';

class Save_citas {
  void addCita(String nombre, String telefono, String vehiculo, String fecha,
      String hora, int afinacion, int frenos, int suspension, int hidraulica) {
    var box = Hive.box('citasbox');

    box.add(Citas(
        nombre: nombre,
        telefono: telefono,
        vehiculo: vehiculo,
        fecha: fecha,
        hora: hora,
        afinacion: afinacion,
        frenos: frenos,
        suspension: suspension,
        hidraulica: hidraulica));
  }

  bool existeCitas() {
    var box = Hive.box('citasBox');
    return box.isNotEmpty;
  }

  List<Citas> listaCitas() {
    List<Citas> info = [];
    var box = Hive.box('citasBox');

    for (Citas cita in box.values) {
      info.add(cita);
    }
    return info;
  }

  void a() {
    var box = Hive.box('citasBox');
    print(box.values);
  }

  List<String> list_servicios(String nombre) {
    List<String> lista_servicios = [];
    var box = Hive.box('citasBox');

    for (Citas cita in box.values) {
      if (cita.nombre == nombre) {
        if (cita.afinacion == 1) {
          lista_servicios.add('Afinacion');
        }
        if (cita.frenos == 1) {
          lista_servicios.add('Frenos');
        }
        if (cita.suspension == 1) {
          lista_servicios.add('Suspension');
        }
        if (cita.hidraulica == 1) {
          lista_servicios.add('Direccion Hidraulica');
        }
      }
    }
    print('ahas $lista_servicios');
    a();
    return lista_servicios;
  }
}
