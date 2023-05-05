import 'package:aplicacion_mecanico/controlador/Crear_cliente.dart';
import 'package:aplicacion_mecanico/vistas/Pantalla_principal.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../util/text_Info.dart';

class Registro_clientes extends StatefulWidget {
  const Registro_clientes({super.key});

  @override
  State<Registro_clientes> createState() => _Registro_clientes();
}

DateTime now = DateTime.now();

class _Registro_clientes extends State<Registro_clientes> {
  Crear_cliente newCliente = Crear_cliente();

  String fecha =
      '${now.day.toString().padLeft(2, '0')}${now.month.toString().padLeft(2, '0')}${now.year}-${now.hour.toString().padLeft(2, '0')}${now.minute.toString().padLeft(2, '0')}';

  List<bool> _seleccionados = [false, false, false, false];
  List<int> _servicio = [0, 0, 0, 0];
  // [afinacion, hidraulica, frenos, suspension]

  int Safinacion = 0;
  int Sfrenos = 0;
  int Shidraulica = 0;
  int Ssupension = 0;

  final TextEditingController nombreController = TextEditingController();
  final TextEditingController telefonoController = TextEditingController();
  final TextEditingController calleController = TextEditingController();
  final TextEditingController numeroController = TextEditingController();
  final TextEditingController coloniaController = TextEditingController();
  final TextEditingController cpController = TextEditingController();
  final TextEditingController marcaController = TextEditingController();
  final TextEditingController modeloController = TextEditingController();
  final TextEditingController yearController = TextEditingController();
  final TextEditingController motorController = TextEditingController();
  final TextEditingController colorController = TextEditingController();
  final TextEditingController vinController = TextEditingController();
  final TextEditingController kmsController = TextEditingController();
  final TextEditingController placasController = TextEditingController();

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shape: Border(bottom: BorderSide(color: Colors.white38, width: 0.2)),
        title: Text_info(
            cadena: 'Registro Cliente', opcion: 1, colores: Colors.white),
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
                cadena: 'Datos del Cliente',
                opcion: 0,
                colores: Colors.white,
              ),
              SizedBox(height: 10),
              Padding(
                padding: EdgeInsets.only(left: 25, right: 25),
                child: TextField(
                  controller: nombreController,
                  cursorColor: Colors.white,
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.white)),
                    hintText: 'Nombre',
                    hintStyle: TextStyle(color: Colors.white38),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.white)),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: EdgeInsets.only(left: 25, right: 25),
                child: TextField(
                  controller: telefonoController,
                  cursorColor: Colors.white,
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.white)),
                    hintText: 'Telefono',
                    hintStyle: TextStyle(color: Colors.white38),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.white)),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 25, top: 20),
                child: Text(
                  'Domicilio',
                  style: TextStyle(
                      color: Colors.white, fontSize: 14, letterSpacing: 1),
                ),
              ),
              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(left: 25),
                      child: TextField(
                        controller: calleController,
                        cursorColor: Colors.white,
                        //maxLength: 30,
                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(color: Colors.white)),
                          hintText: 'Calle',
                          hintStyle: TextStyle(color: Colors.white38),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 160,
                    child: Padding(
                      padding: EdgeInsets.only(left: 8, right: 20),
                      child: TextField(
                        controller: numeroController,
                        cursorColor: Colors.white,
                        //maxLength: 5,
                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(color: Colors.white)),
                          hintText: 'Numero',
                          hintStyle: TextStyle(color: Colors.white38),
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
              SizedBox(height: 10),
              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(left: 25),
                      child: TextField(
                        controller: coloniaController,
                        cursorColor: Colors.white,
                        //maxLength: 30,
                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(color: Colors.white)),
                          hintText: 'Colonia',
                          hintStyle: TextStyle(color: Colors.white38),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 160,
                    child: Padding(
                      padding: EdgeInsets.only(left: 8, right: 20),
                      child: TextField(
                        controller: cpController,
                        cursorColor: Colors.white,
                        //maxLength: 5,
                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(color: Colors.white)),
                          hintText: 'C.P',
                          hintStyle: TextStyle(color: Colors.white38),
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
              Text_info(
                  cadena: 'Datos del Vehiculo',
                  opcion: 0,
                  colores: Colors.white),
              SizedBox(height: 10),
              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(left: 25),
                      child: TextField(
                        controller: marcaController,
                        cursorColor: Colors.white,
                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(color: Colors.white)),
                          hintText: 'Marca',
                          hintStyle: TextStyle(color: Colors.white38),
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
                      padding: EdgeInsets.only(left: 8, right: 25),
                      child: TextField(
                        controller: modeloController,
                        cursorColor: Colors.white,
                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(color: Colors.white)),
                          hintText: 'Modelo',
                          hintStyle: TextStyle(color: Colors.white38),
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
              SizedBox(height: 10),
              Row(
                children: [
                  Container(
                    width: 160,
                    child: Container(
                      width: 200,
                      padding: EdgeInsets.only(left: 25),
                      child: TextField(
                        controller: yearController,
                        cursorColor: Colors.white,
                        //maxLength: 4,
                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(color: Colors.white)),
                          hintText: 'Año',
                          hintStyle: TextStyle(color: Colors.white38),
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
                      padding: EdgeInsets.only(left: 8, right: 20),
                      child: TextField(
                        controller: motorController,
                        cursorColor: Colors.white,
                        //maxLength: 15,
                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(color: Colors.white)),
                          hintText: 'Motor',
                          hintStyle: TextStyle(color: Colors.white38),
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
              SizedBox(height: 10),
              Row(
                children: [
                  Container(
                    width: 160,
                    child: Container(
                      width: 200,
                      padding: EdgeInsets.only(left: 25),
                      child: TextField(
                        controller: colorController,
                        cursorColor: Colors.white,
                        //maxLength: 10,
                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(color: Colors.white)),
                          hintText: 'Color',
                          hintStyle: TextStyle(color: Colors.white38),
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
                      padding: EdgeInsets.only(left: 8, right: 20),
                      child: TextField(
                        controller: vinController,
                        cursorColor: Colors.white,
                        //maxLength: 17,
                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(color: Colors.white)),
                          hintText: 'VIN',
                          hintStyle: TextStyle(color: Colors.white38),
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
              SizedBox(height: 10),
              Row(
                children: [
                  Container(
                    width: 160,
                    child: Container(
                      width: 200,
                      padding: EdgeInsets.only(left: 25),
                      child: TextField(
                        controller: kmsController,
                        cursorColor: Colors.white,
                        //maxLength: 10,
                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(color: Colors.white)),
                          hintText: 'Kilometraje',
                          hintStyle: TextStyle(color: Colors.white38),
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
                      padding: EdgeInsets.only(left: 8, right: 20),
                      child: TextField(
                        controller: placasController,
                        cursorColor: Colors.white,
                        //maxLength: 7,
                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(color: Colors.white)),
                          hintText: 'Placas',
                          hintStyle: TextStyle(color: Colors.white38),
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
              SizedBox(height: 10),
              Text_info(
                  cadena: 'Agregar Servicio', opcion: 0, colores: Colors.white),
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
                  )
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
                        newCliente.addCliente(
                            nombreController.text,
                            telefonoController.text,
                            calleController.text,
                            numeroController.text,
                            coloniaController.text,
                            cpController.text);
                        newCliente.addVehiculo(
                            marcaController.text,
                            modeloController.text,
                            yearController.text,
                            motorController.text,
                            colorController.text,
                            vinController.text,
                            kmsController.text,
                            placasController.text,
                            nombreController.text);
                        newCliente.addTask(
                            fecha,
                            nombreController.text,
                            telefonoController.text,
                            marcaController.text,
                            modeloController.text,
                            yearController.text,
                            vinController.text,
                            placasController.text,
                            colorController.text,
                            _servicio[0],
                            _servicio[2],
                            _servicio[3],
                            _servicio[1]);

                        Navigator.pop(context);
                        print("soy omelo");
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
                      newCliente.showClientes();
                      newCliente.showVehiculos();
                      newCliente.showPendientes();
                      print(fecha);
                      Navigator.pop(context);
                      print("chino");
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
