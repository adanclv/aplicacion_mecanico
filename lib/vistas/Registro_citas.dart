import 'package:aplicacion_mecanico/controlador/Save_citas.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../controlador/Crear_cliente.dart';
import '../util/mostrar_Dialog.dart';
import '../util/text_Info.dart';

class Registro_citas extends StatefulWidget {
  const Registro_citas({super.key});

  @override
  State<Registro_citas> createState() => _Registro_citas();
}

class _Registro_citas extends State<Registro_citas> {
  List<bool> _seleccionados = [false, false, false, false];
  List<int> _servicio = [0, 0, 0, 0];
  TextEditingController nombreController = TextEditingController();
  TextEditingController telefonoController = TextEditingController();
  TextEditingController vehiculoController = TextEditingController();
  TextEditingController fechaController = TextEditingController();
  TextEditingController horaController = TextEditingController();
  String vehiculo = '';

  var name = '';
  Crear_cliente newCliente = Crear_cliente();
  Save_citas sc = Save_citas();

  void cbServicio(int i, value) {
    setState(() {
      _seleccionados[i] = value;
    });
  }

  void servicioSeleccionado() {
    for (int i = 0; i < 4; i++) {
      if (_seleccionados[i] == true) {
        setState(() {
          _servicio[i] = 1;
        });
      }
    }
  }

  void search(BuildContext context) async {
    name = await showDialog(
      context: context,
      builder: (context) {
        return Mostrar_dialog(nombre: nombreController.text);
      },
    );
    if (name == 'No existe') {
      nombreController.text = name;
    } else {
      searchCliente(name);
      searchVehiculo(name);
    }
  }

  void searchCliente(String nombre) {
    List<String> info = newCliente.selecCliente(nombre);
    setState(() {
      nombreController.text = info[0];
      telefonoController.text = info[1];
    });
  }

  void searchVehiculo(String nombre) {
    List<String> info = newCliente.selecVehiculo(nombre);
    vehiculo = '${info[0]} ${info[1]} ${info[2]}';
    vehiculoController.text = vehiculo;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shape: Border(bottom: BorderSide(color: Colors.white38, width: 0.2)),
        title:
            Text_info(cadena: 'Agendar Cita', opcion: 1, colores: Colors.white),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon:
                  Icon(Icons.arrow_back_rounded, size: 25, color: Colors.white),
            ),
          ),
        ],
        toolbarHeight: 80,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: Colors.transparent,
            systemNavigationBarColor: Color.fromARGB(255, 19, 29, 39)),
      ),
      backgroundColor: Theme.of(context).primaryColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text_info(
                  cadena: '1.  Informacion del Cliente',
                  opcion: 0,
                  colores: Colors.white),
              SizedBox(height: 15),
              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(left: 25),
                      child: TextField(
                        controller: nombreController,
                        cursorColor: Colors.white,
                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(color: Colors.white)),
                          hintText: 'Cliente',
                          hintStyle: TextStyle(color: Colors.white38),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 20, left: 5),
                    child: IconButton(
                      onPressed: () {
                        search(context);
                      },
                      icon: Icon(
                        Icons.search_rounded,
                        color: Colors.white,
                        size: 35,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Padding(
                padding: EdgeInsets.only(left: 25, right: 25),
                child: TextField(
                  readOnly: true,
                  controller: telefonoController,
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.white)),
                    hintText: 'Telefono',
                    hintStyle: TextStyle(color: Colors.white38),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.white),
                    ),
                  ),
                ),
              ),
              Text_info(
                  cadena: '2.  Informacion del Vehiculo',
                  opcion: 0,
                  colores: Colors.white),
              SizedBox(height: 15),
              Padding(
                padding: EdgeInsets.only(left: 25, right: 25),
                child: TextField(
                  readOnly: true,
                  controller: vehiculoController,
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.white)),
                    hintText: 'Vehiculo',
                    hintStyle: TextStyle(color: Colors.white38),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.white),
                    ),
                  ),
                ),
              ),
              Text_info(
                  cadena: '3.  Agregar un Servicio',
                  opcion: 0,
                  colores: Colors.white),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 25),
                    child: Row(
                      children: [
                        Checkbox(
                            fillColor: MaterialStatePropertyAll(
                                Theme.of(context).secondaryHeaderColor),
                            checkColor: Theme.of(context).primaryColor,
                            value: _seleccionados[0],
                            onChanged: (bool? value) {
                              cbServicio(0, value);
                            }),
                        Text('Afinacion',
                            style:
                                TextStyle(color: Colors.white, fontSize: 18)),
                      ],
                    ),
                  ),
                  Container(
                    width: 230,
                    padding: EdgeInsets.only(right: 25),
                    child: Row(
                      children: [
                        Checkbox(
                            fillColor: MaterialStatePropertyAll(
                                Theme.of(context).secondaryHeaderColor),
                            checkColor: Theme.of(context).primaryColor,
                            value: _seleccionados[1],
                            onChanged: (bool? value) {
                              cbServicio(1, value);
                            }),
                        Text('Direccion Hidraulica',
                            style:
                                TextStyle(color: Colors.white, fontSize: 18)),
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 25),
                    child: Row(
                      children: [
                        Checkbox(
                            fillColor: MaterialStatePropertyAll(
                                Theme.of(context).secondaryHeaderColor),
                            checkColor: Theme.of(context).primaryColor,
                            value: _seleccionados[2],
                            onChanged: (bool? value) {
                              cbServicio(2, value);
                            }),
                        Text('Frenos',
                            style:
                                TextStyle(color: Colors.white, fontSize: 18)),
                      ],
                    ),
                  ),
                  Container(
                    width: 230,
                    padding: EdgeInsets.only(right: 20),
                    child: Row(
                      children: [
                        Checkbox(
                            fillColor: MaterialStatePropertyAll(
                                Theme.of(context).secondaryHeaderColor),
                            checkColor: Theme.of(context).primaryColor,
                            value: _seleccionados[3],
                            onChanged: (bool? value) {
                              cbServicio(3, value);
                              print(_seleccionados.toString());
                            }),
                        Text('Suspension',
                            style:
                                TextStyle(color: Colors.white, fontSize: 18)),
                      ],
                    ),
                  ),
                ],
              ),
              Text_info(
                  cadena: '4.  Fecha y Hora', opcion: 0, colores: Colors.white),
              SizedBox(height: 15),
              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(left: 25),
                      child: TextField(
                        enableInteractiveSelection: false,
                        readOnly: true,
                        controller: fechaController,
                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(color: Colors.white)),
                          hintText: 'Fecha',
                          hintStyle: TextStyle(color: Colors.white38),
                          suffixIcon: IconButton(
                              onPressed: () {
                                showDatePicker(
                                  context: context,
                                  initialDate: DateTime.now(),
                                  firstDate: DateTime(2021),
                                  lastDate: DateTime(2100),
                                ).then((selectedDate) {
                                  if (selectedDate != null)
                                    fechaController.text =
                                        '${selectedDate.day.toString().padLeft(2, '0')}-${selectedDate.month.toString().padLeft(2, '0')}-${selectedDate.year.toString()}';
                                });
                              },
                              icon: Icon(
                                Icons.calendar_month_sharp,
                                color: Colors.white,
                              )),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(left: 25, right: 20),
                      child: TextField(
                        enableInteractiveSelection: false,
                        readOnly: true,
                        controller: horaController,
                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(color: Colors.white)),
                          hintText: 'Hora',
                          hintStyle: TextStyle(color: Colors.white38),
                          suffixIcon: IconButton(
                              onPressed: () {
                                showTimePicker(
                                  context: context,
                                  initialTime: TimeOfDay.now(),
                                ).then((selectedTime) {
                                  if (selectedTime != null)
                                    horaController.text =
                                        selectedTime.format(context).toString();
                                });
                              },
                              icon: Icon(
                                Icons.watch_later_rounded,
                                color: Colors.white,
                              )),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 25),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          elevation: 5,
                          padding: EdgeInsets.symmetric(
                              horizontal: 35, vertical: 15),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15)),
                          backgroundColor: Color(0xFF95A6DC)),
                      onPressed: () {
                        servicioSeleccionado();
                        sc.addCita(
                            nombreController.text,
                            telefonoController.text,
                            vehiculo,
                            fechaController.text,
                            horaController.text,
                            _servicio[0],
                            _servicio[2],
                            _servicio[3],
                            _servicio[1]);
                        Navigator.pop(context);
                      },
                      child: Text(
                        'Guardar',
                        style: TextStyle(
                            fontSize: 16,
                            color: Theme.of(context).primaryColor),
                      ),
                    ),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        elevation: 5,
                        padding:
                            EdgeInsets.symmetric(horizontal: 35, vertical: 15),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)),
                        backgroundColor: Color(0xFF95A6DC)),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text(
                      'Cancelar',
                      style: TextStyle(
                          fontSize: 16, color: Theme.of(context).primaryColor),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
