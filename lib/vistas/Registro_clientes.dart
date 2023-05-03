import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../util/text_Info.dart';

class Registro_clientes extends StatefulWidget {
  const Registro_clientes({super.key});

  @override
  State<Registro_clientes> createState() => _Registro_clientes();
}

class _Registro_clientes extends State<Registro_clientes> {
  List<String> items = [
    "Afinacion Mayor Completa",
    "Servicio de Frenos",
    "Servicio de suspension",
    "Servicio de direccion Hidraulica",
    "Condiciones del Motor",
    "Condicion Sistema de Enfriamiento"
  ];
  String? selectedItem = "Afinacion Mayor Completa";

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
                  Container(
                    width: 260,
                    child: Container(
                      width: 200,
                      padding: EdgeInsets.only(left: 25),
                      child: TextField(
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
                  Container(
                    width: 260,
                    child: Container(
                      width: 200,
                      padding: EdgeInsets.only(left: 25),
                      child: TextField(
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
                  Container(
                    width: 260,
                    child: Padding(
                      padding: EdgeInsets.only(left: 8, right: 20),
                      child: TextField(
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
                  Container(
                    width: 260,
                    child: Padding(
                      padding: EdgeInsets.only(left: 8, right: 20),
                      child: TextField(
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
                  Container(
                    width: 260,
                    child: Padding(
                      padding: EdgeInsets.only(left: 8, right: 20),
                      child: TextField(
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
              Padding(
                padding: EdgeInsets.only(left: 25, right: 25),
                child: Container(
                  padding: EdgeInsets.only(left: 10, right: 10),
                  height: 55,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(10),
                    //color: Theme.of(context).primaryColor
                  ),
                  child: DropdownButton(
                    borderRadius: BorderRadius.circular(10),
                    menuMaxHeight: 200,
                    dropdownColor: Theme.of(context).primaryColor,
                    style: TextStyle(color: Colors.white38, fontSize: 16),
                    value: selectedItem,
                    isExpanded: true,
                    items: items.map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                    onChanged: (item) {
                      setState(() => selectedItem = item);
                    },
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        elevation: 3,
                        shadowColor: Colors.white38,
                        padding:
                            EdgeInsets.symmetric(horizontal: 35, vertical: 10),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)),
                        backgroundColor: Colors.white),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text(
                      'Agregar otro mantenimiento',
                      style: TextStyle(
                          fontSize: 16, color: Theme.of(context).primaryColor),
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
