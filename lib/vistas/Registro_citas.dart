import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Registro_citas extends StatefulWidget {
  const Registro_citas({super.key});

  @override
  State<Registro_citas> createState() => _Registro_citas();
}

class _Registro_citas extends State<Registro_citas> {
  List<bool> _seleccionados = [false, false, false, false, false, false];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text_info(cadena: 'Agendar Cita', opcion: 1),
                  Padding(
                    padding: const EdgeInsets.only(
                        right: 20, left: 10, top: 15, bottom: 5),
                    child: IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(
                        Icons.arrow_back_rounded,
                        size: 25,
                        color: Colors.white,
                      ),
                    ),
                  )
                ],
              ),
              Text_info(cadena: '1.  Informacion del Cliente', opcion: 0),
              SizedBox(height: 15),
              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(left: 25),
                      child: TextField(
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
                      onPressed: () {},
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
              Text_info(cadena: '2.  Informacion del Vehiculo', opcion: 0),
              SizedBox(height: 15),
              Padding(
                padding: EdgeInsets.only(left: 25, right: 25),
                child: TextField(
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
              Text_info(cadena: '3.  Agregar un Servicio', opcion: 0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Checkbox(
                      fillColor: MaterialStatePropertyAll(
                          Theme.of(context).secondaryHeaderColor),
                      checkColor: Theme.of(context).primaryColor,
                      value: _seleccionados[0],
                      onChanged: (bool? value) {
                        _seleccionados[0] = value!;
                      }),
                  Text('Afinacion',
                      style: TextStyle(color: Colors.white, fontSize: 18)),
                  Checkbox(
                      fillColor: MaterialStatePropertyAll(
                          Theme.of(context).secondaryHeaderColor),
                      checkColor: Theme.of(context).primaryColor,
                      value: _seleccionados[1],
                      onChanged: (bool? value) {
                        _seleccionados[1] = value!;
                      }),
                  Text('Direccion Hidraulica',
                      style: TextStyle(color: Colors.white, fontSize: 18)),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Checkbox(
                      fillColor: MaterialStatePropertyAll(
                          Theme.of(context).secondaryHeaderColor),
                      checkColor: Theme.of(context).primaryColor,
                      value: _seleccionados[2],
                      onChanged: (bool? value) {
                        _seleccionados[2] = value!;
                      }),
                  Text('Frenos',
                      style: TextStyle(color: Colors.white, fontSize: 18)),
                  Checkbox(
                      fillColor: MaterialStatePropertyAll(
                          Theme.of(context).secondaryHeaderColor),
                      checkColor: Theme.of(context).primaryColor,
                      value: _seleccionados[3],
                      onChanged: (bool? value) {
                        _seleccionados[3] = value!;
                      }),
                  Text('Condiciones del motor',
                      style: TextStyle(color: Colors.white, fontSize: 18)),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Checkbox(
                      fillColor: MaterialStatePropertyAll(
                          Theme.of(context).secondaryHeaderColor),
                      checkColor: Theme.of(context).primaryColor,
                      value: _seleccionados[4],
                      onChanged: (bool? value) {
                        _seleccionados[4] = value!;
                      }),
                  Text('Suspension',
                      style: TextStyle(color: Colors.white, fontSize: 18)),
                  Checkbox(
                      fillColor: MaterialStatePropertyAll(
                          Theme.of(context).secondaryHeaderColor),
                      checkColor: Theme.of(context).primaryColor,
                      value: _seleccionados[5],
                      onChanged: (bool? value) {
                        _seleccionados[5] = value!;
                      }),
                  Text('Sistema de enfriamiento',
                      style: TextStyle(color: Colors.white, fontSize: 18)),
                ],
              ),
              Text_info(cadena: '4.  Fecha y Hora', opcion: 0),
              SizedBox(height: 15),
              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(left: 25),
                      child: TextField(
                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(color: Colors.white)),
                          hintText: 'Fecha',
                          hintStyle: TextStyle(color: Colors.white38),
                          suffixIcon: IconButton(
                              onPressed: () {},
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
                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(color: Colors.white)),
                          hintText: 'Hora',
                          hintStyle: TextStyle(color: Colors.white38),
                          suffixIcon: IconButton(
                              onPressed: () {},
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
                          padding: EdgeInsets.symmetric(
                              horizontal: 35, vertical: 15),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15)),
                          backgroundColor: Color(0xFF95A6DC)),
                      onPressed: () {},
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

class Text_info extends StatelessWidget {
  final String cadena;
  final int opcion;
  const Text_info({super.key, required this.cadena, required this.opcion});

  @override
  Widget build(BuildContext context) {
    return opcion == 0
        ? Padding(
            padding: EdgeInsets.only(left: 25, top: 20),
            child: Text(
              cadena,
              style: TextStyle(
                  color: Colors.white, fontSize: 20, letterSpacing: 2),
            ),
          )
        : Padding(
            padding: EdgeInsets.only(left: 25, right: 25, top: 25, bottom: 20),
            child: Text(
              cadena,
              style: TextStyle(color: Colors.white, fontSize: 30),
            ),
          );
  }
}
