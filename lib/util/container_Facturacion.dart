import 'package:aplicacion_mecanico/controlador/Save_servicio.dart';
import 'package:aplicacion_mecanico/controlador/Save_terminado.dart';
import 'package:aplicacion_mecanico/controlador/prueba.dart';
import 'package:aplicacion_mecanico/pdf/Pdf_page.dart';
import 'package:aplicacion_mecanico/util/text_Info.dart';
import 'package:flutter/material.dart';

import '../controlador/Crear_cliente.dart';
import '../modelo/final.dart';

class Container_facturacion extends StatefulWidget {
  final String nombre;
  final String vin;
  final String noOrden;
  final String vehiculo;
  Container_facturacion(
      {super.key,
      required this.noOrden,
      required this.nombre,
      required this.vin,
      required this.vehiculo});
  State<Container_facturacion> createState() => _Container_facturacion();
}

List<String> suspension = [];
List<String> motor = [];
List<String> enfria = [];
List<int> servicios = [];
List<Finals> finals = [];
DateTime now = DateTime.now();

class _Container_facturacion extends State<Container_facturacion> {
  Prueba p = Prueba();
  Save_terminado st = Save_terminado();
  Save_servicio ss = Save_servicio();
  double totalT = 0.0;
  bool existeSus = false;
  bool existeMotor = false;
  bool existeEnfria = false;
  String fecha = '';

  Map<String, dynamic>? partes;
  List<TextEditingController>? suspensionController;
  List<TextEditingController>? motorController;
  List<TextEditingController>? enfriaController;

  @override
  void initState() {
    super.initState();
    if (ss.existeSuspension(widget.noOrden)) {
      suspension = st.partesCambioS(widget.noOrden);
      suspensionController =
          List.generate(suspension.length, (_) => TextEditingController());
      existeSus = true;
    }
    if (ss.existeMotor(widget.noOrden)) {
      motor = st.partesCambioM(widget.noOrden);
      motorController =
          List.generate(motor.length, (_) => TextEditingController());
      existeMotor = true;
    }
    if (ss.existeEnfriamiento(widget.noOrden)) {
      enfria = st.partesCambioE(widget.noOrden);
      enfriaController =
          List.generate(enfria.length, (_) => TextEditingController());
      existeEnfria = true;
    }
    now = DateTime.now();
    fecha =
        '${now.day.toString().padLeft(2, '0')}-${now.month.toString().padLeft(2, '0')}-${now.year}';
  }

  void sumar() {
    double sum = 0;
    for (var controller in [
      ...suspensionController ?? [],
      ...motorController ?? [],
      ...enfriaController ?? []
    ]) {
      double val = double.tryParse(controller.text) ?? 0;
      sum += val;
    }
    setState(() {
      totalT = sum; // 2. Actualizar el valor de 'total' con la suma calculada
    });
  }

  void anan() {
    finals.clear();
    for (int i = 0; i < suspension.length; i++) {
      finals.add(
          Finals(dato: suspension[i], precio: suspensionController![i].text));
    }
    for (int i = 0; i < motor.length; i++) {
      finals.add(Finals(dato: motor[i], precio: motorController![i].text));
    }
    for (int i = 0; i < enfria.length; i++) {
      finals.add(Finals(dato: enfria[i], precio: enfriaController![i].text));
    }
    servicios = st.serviciosLista(widget.noOrden);
    print('holas ${finals.toString()} jijija ${servicios.toList()}');
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Expanded(
            child: ListView(
              children: [
                Text_info(
                    cadena: 'Facturacion', opcion: 1, colores: Colors.white),
                existeSus
                    ? Text_info(
                        cadena: 'Suspension: Cambios',
                        opcion: 0,
                        colores: Colors.white)
                    : SizedBox(),
                SizedBox(height: 5),
                Expanded(
                  child: existeSus
                      ? Column(
                          children: suspension
                              .asMap()
                              .entries
                              .map((e) => Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 10),
                                        child: Text(
                                          '• ${e.value}',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 16),
                                        ),
                                      ),
                                      Container(
                                        alignment: Alignment.center,
                                        padding: EdgeInsets.only(
                                            bottom: 2, right: 5),
                                        width: 120,
                                        height: 40,
                                        child: TextField(
                                          controller:
                                              suspensionController![e.key],
                                          onChanged: (value) {
                                            sumar();
                                          },
                                          textAlign: TextAlign.right,
                                          cursorColor: Colors.white,
                                          //maxLength: 5,
                                          style: TextStyle(
                                            color: Colors.white,
                                          ),
                                          keyboardType: TextInputType.number,
                                          decoration: InputDecoration(
                                            enabledBorder: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                                borderSide: BorderSide(
                                                    color: Colors.white)),
                                            hintText: '0000.00',
                                            hintStyle: TextStyle(
                                              color: Colors.white38,
                                              fontSize: 18,
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              borderSide: BorderSide(
                                                  color: Colors.white),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ))
                              .toList(),
                        )
                      : SizedBox(),
                ),
                existeMotor
                    ? Text_info(
                        cadena: 'Condicion de Motor: Cambios',
                        opcion: 0,
                        colores: Colors.white)
                    : SizedBox(),
                SizedBox(height: 5),
                Expanded(
                  child: existeMotor
                      ? Column(
                          children: motor
                              .asMap()
                              .entries
                              .map(
                                (e) => Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 10),
                                      child: Text(
                                        '• ${e.value}',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 16),
                                      ),
                                    ),
                                    Container(
                                      alignment: Alignment.center,
                                      padding:
                                          EdgeInsets.only(bottom: 2, right: 5),
                                      width: 120,
                                      height: 40,
                                      child: TextField(
                                        controller: motorController![e.key],
                                        onChanged: (value) {
                                          sumar();
                                        },
                                        textAlign: TextAlign.right,
                                        cursorColor: Colors.white,
                                        //maxLength: 5,
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                        keyboardType: TextInputType.number,
                                        decoration: InputDecoration(
                                          enabledBorder: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              borderSide: BorderSide(
                                                  color: Colors.white)),
                                          hintText: '0000.00',
                                          hintStyle: TextStyle(
                                            color: Colors.white38,
                                            fontSize: 18,
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            borderSide:
                                                BorderSide(color: Colors.white),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              )
                              .toList())
                      : SizedBox(),
                ),
                existeEnfria
                    ? Text_info(
                        cadena: 'Sistema de Enfriamiento: Cambios',
                        opcion: 0,
                        colores: Colors.white)
                    : SizedBox(),
                SizedBox(height: 5),
                Expanded(
                  child: existeMotor
                      ? Column(
                          children: enfria
                              .asMap()
                              .entries
                              .map(
                                (e) => Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 10),
                                      child: Text(
                                        '• ${e.value}',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 16),
                                      ),
                                    ),
                                    Container(
                                      alignment: Alignment.center,
                                      padding:
                                          EdgeInsets.only(bottom: 2, right: 5),
                                      width: 120,
                                      height: 40,
                                      child: TextField(
                                        controller: enfriaController![e.key],
                                        onChanged: (value) {
                                          sumar();
                                        },
                                        textAlign: TextAlign.right,
                                        cursorColor: Colors.white,
                                        //maxLength: 5,
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                        keyboardType: TextInputType.number,
                                        decoration: InputDecoration(
                                          enabledBorder: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              borderSide: BorderSide(
                                                  color: Colors.white)),
                                          hintText: '0000.00',
                                          hintStyle: TextStyle(
                                            color: Colors.white38,
                                            fontSize: 18,
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            borderSide:
                                                BorderSide(color: Colors.white),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              )
                              .toList())
                      : SizedBox(),
                ),
                Container(
                  alignment: Alignment.centerRight,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text_info(
                          cadena: 'Total', opcion: 0, colores: Colors.white),
                      Container(
                        padding: EdgeInsets.only(right: 20, top: 20),
                        child: Text(
                          '$totalT',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(elevation: 0),
                      onPressed: () {
                        anan();
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  PdfPage(noOrden: widget.noOrden),
                            ));
                        st.imprimir();
                      },
                      child: Text(
                        'Cancelar',
                        style: TextStyle(fontSize: 15, color: Colors.white),
                      ),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(elevation: 0),
                      onPressed: () {
                        anan();

                        st.addTerminado(
                            widget.noOrden,
                            widget.nombre,
                            widget.vin,
                            servicios[0],
                            servicios[1],
                            servicios[2],
                            servicios[3],
                            finals,
                            fecha,
                            totalT,
                            widget.vehiculo);
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  PdfPage(noOrden: widget.noOrden),
                            )).whenComplete(
                          () {
                            st.delete(widget.noOrden);
                            Navigator.pop(context);
                          },
                        );
                      },
                      child: Text(
                        'Guardar',
                        style: TextStyle(fontSize: 15, color: Colors.white),
                      ),
                    ),
                    SizedBox(width: 10),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
