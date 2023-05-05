import 'package:aplicacion_mecanico/modelo/Clientes.dart';
import 'package:aplicacion_mecanico/modelo/Pendientes.dart';
import 'package:aplicacion_mecanico/modelo/Vehiculos.dart';
import 'package:hive/hive.dart';

class Crear_cliente {
  void addCliente(String nombre, String telefono, String calle, String numero,
      String colonia, String cp) {
    var box = Hive.box('clientesBox');
    box.add(
      Cliente(
        nombre: nombre,
        telefono: telefono,
        calle: calle,
        numero: numero,
        colonia: colonia,
        cp: cp,
      ),
    );
    print(box.values.toList());
  }

  void addVehiculo(String marca, String modelo, String year, String motor,
      String color, String vin, String kms, String placas, String nombre) {
    var box = Hive.box('vehiculosBox');
    box.add(
      Vehiculo(
        marca: marca,
        modelo: modelo,
        year: year,
        motor: motor,
        color: color,
        vin: vin,
        kms: kms,
        placas: placas,
        nombre: nombre,
      ),
    );
    print(box.values.toList());
  }

  void addTask(
    String noOrden,
    String nombre,
    String telefono,
    String marca,
    String modelo,
    String year,
    String vin,
    String placas,
    String color,
    int afinacion,
    int frenos,
    int suspension,
    int hidraulica,
  ) {
    var box = Hive.box('pendientesBox');
    box.add(
      Pendientes(
          noOrden: noOrden,
          nombre: nombre,
          telefono: telefono,
          marca: marca,
          modelo: modelo,
          year: year,
          vin: vin,
          placas: placas,
          color: color,
          afinacion: afinacion,
          frenos: frenos,
          suspension: suspension,
          hidraulica: hidraulica),
    );
    print(box.values.toList());
  }

  List<String> list_servicios(String nombre) {
    List<String> lista_servicios = [''];
    var box = Hive.box('pendientesBox');

    lista_servicios.clear();

    for (Pendientes pendientes in box.values) {
      if (pendientes.nombre == nombre) {
        if (pendientes.afinacion == 1) {
          lista_servicios.add('Afinacion');
        }
        if (pendientes.frenos == 1) {
          lista_servicios.add('Frenos');
        }
        if (pendientes.suspension == 1) {
          lista_servicios.add('Suspension');
        }
        if (pendientes.hidraulica == 1) {
          lista_servicios.add('Direccion Hidraulica');
        }
      }
    }
    return lista_servicios;
  }

  void showClientes() {
    var box = Hive.box('clientesBox');
    print(box.values.toString());
  }

  void showVehiculos() {
    var box = Hive.box('vehiculosBox');
    print(box.values.toString());
  }

  void showPendientes() {
    var box = Hive.box('pendientesBox');
    print(box.values.toString());
  }

  bool existeTasks() {
    var box = Hive.box('pendientesBox');
    bool vacio = box.values.isNotEmpty;
    return vacio;
  }
}
