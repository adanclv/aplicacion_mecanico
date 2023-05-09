import 'package:flutter/material.dart';

import '../controlador/Save_servicio.dart';

class Servicio_dir_hidraulica extends StatefulWidget {
  final String noOrden;
  const Servicio_dir_hidraulica({super.key, required this.noOrden});

  @override
  State<Servicio_dir_hidraulica> createState() => _Servicio_dir_hidraulica();
}

List<String> Fuga = ['si', 'no'];
List<String> ConRuido = ['si', 'no'];
List<String> AltaPresion = ['si', 'no'];
List<String> Retorno = ['si', 'no'];
List<String> Lcremallera = ['cambio', 'mal', 'bien'];
List<String> Rcremallera = ['cambio', 'mal', 'bien'];

class _Servicio_dir_hidraulica extends State<Servicio_dir_hidraulica> {
  Save_servicio ss = Save_servicio();
  List<String> rSeleccionado = [];
  bool wDisabled = false;

  String? opcFuga;
  String? opcConRuido;
  String? opcAltaPresion;
  String? opcRetorno;
  String? opcLcremallera;
  String? opcRcremallera;
  TextEditingController obserController = TextEditingController();

  @override
  void initState() {
    super.initState();
    if (ss.existeHidraulica(widget.noOrden)) {
      wDisabled = true;
      rSeleccionado = ss.infoHidraulica(widget.noOrden);
      llenado();
    }
  }

  void group01(values) {
    setState(() {
      if (wDisabled == false) {
        opcFuga = values.toString();
      } else {}
    });
  }

  void group02(values) {
    setState(() {
      if (wDisabled == false) {
        opcConRuido = values.toString();
      } else {}
    });
  }

  void group03(values) {
    setState(() {
      if (wDisabled == false) {
        opcAltaPresion = values.toString();
      } else {}
    });
  }

  void group04(values) {
    setState(() {
      if (wDisabled == false) {
        opcRetorno = values.toString();
      } else {}
    });
  }

  void group05(values) {
    setState(() {
      if (wDisabled == false) {
        opcLcremallera = values.toString();
      } else {}
    });
  }

  void group06(values) {
    setState(() {
      if (wDisabled == false) {
        opcRcremallera = values.toString();
      } else {}
    });
  }

  void llenado() {
    setState(() {
      opcFuga = rSeleccionado[0];
      opcConRuido = rSeleccionado[1];
      opcAltaPresion = rSeleccionado[2];
      opcRetorno = rSeleccionado[3];
      opcLcremallera = rSeleccionado[4];
      opcRcremallera = rSeleccionado[5];
      obserController.text = rSeleccionado[6];
    });
  }

  void actualizar() {
    wDisabled = true;
    rSeleccionado = ss.infoHidraulica(widget.noOrden);
    llenado();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text('Si', style: TextStyle(color: Colors.white)),
                    SizedBox(width: 35),
                    Text('No', style: TextStyle(color: Colors.white)),
                    SizedBox(width: 15),
                  ],
                ),
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: Text(
                          'Bomba de Direccion Hidraulica',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Texto_parte(texto: 'Fuga'),
                          Container(
                            child: Row(
                              children: [
                                Radio(
                                  fillColor: wDisabled == true
                                      ? MaterialStatePropertyAll(Colors.white38)
                                      : MaterialStatePropertyAll(Colors.white),
                                  value: Fuga[0],
                                  groupValue: opcFuga,
                                  onChanged: (value) {
                                    group01(value);
                                  },
                                ),
                                Radio(
                                  fillColor: wDisabled == true
                                      ? MaterialStatePropertyAll(Colors.white38)
                                      : MaterialStatePropertyAll(Colors.white),
                                  value: Fuga[1],
                                  groupValue: opcFuga,
                                  onChanged: (value) {
                                    group01(value);
                                  },
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Texto_parte(texto: 'Con Ruido'),
                          Container(
                            child: Row(
                              children: [
                                Radio(
                                  fillColor: wDisabled == true
                                      ? MaterialStatePropertyAll(Colors.white38)
                                      : MaterialStatePropertyAll(Colors.white),
                                  value: ConRuido[0],
                                  groupValue: opcConRuido,
                                  onChanged: (value) {
                                    group02(value);
                                  },
                                ),
                                Radio(
                                  fillColor: wDisabled == true
                                      ? MaterialStatePropertyAll(Colors.white38)
                                      : MaterialStatePropertyAll(Colors.white),
                                  value: ConRuido[1],
                                  groupValue: opcConRuido,
                                  onChanged: (value) {
                                    group02(value);
                                  },
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 5, top: 10),
                        child: Text(
                          'Linea de Alta Presion',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Texto_parte(texto: 'Manguera Rota'),
                          Container(
                            child: Row(
                              children: [
                                Radio(
                                  fillColor: wDisabled == true
                                      ? MaterialStatePropertyAll(Colors.white38)
                                      : MaterialStatePropertyAll(Colors.white),
                                  value: AltaPresion[0],
                                  groupValue: opcAltaPresion,
                                  onChanged: (value) {
                                    group03(value);
                                  },
                                ),
                                Radio(
                                  fillColor: wDisabled == true
                                      ? MaterialStatePropertyAll(Colors.white38)
                                      : MaterialStatePropertyAll(Colors.white),
                                  value: AltaPresion[1],
                                  groupValue: opcAltaPresion,
                                  onChanged: (value) {
                                    group03(value);
                                  },
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 5, top: 10),
                        child: Text(
                          'Linea de Retorno',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Texto_parte(texto: 'Manguera Rota'),
                          Container(
                            child: Row(
                              children: [
                                Radio(
                                  fillColor: wDisabled == true
                                      ? MaterialStatePropertyAll(Colors.white38)
                                      : MaterialStatePropertyAll(Colors.white),
                                  value: Retorno[0],
                                  groupValue: opcRetorno,
                                  onChanged: (value) {
                                    group04(value);
                                  },
                                ),
                                Radio(
                                  fillColor: wDisabled == true
                                      ? MaterialStatePropertyAll(Colors.white38)
                                      : MaterialStatePropertyAll(Colors.white),
                                  value: Retorno[1],
                                  groupValue: opcRetorno,
                                  onChanged: (value) {
                                    group04(value);
                                  },
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 15),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text('Cambio', style: TextStyle(color: Colors.white)),
                          SizedBox(width: 20),
                          Text('f/s   ', style: TextStyle(color: Colors.white)),
                          SizedBox(width: 20),
                          Text('Bien', style: TextStyle(color: Colors.white)),
                          SizedBox(width: 10),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Texto_parte(
                              texto: 'Cremallera en la \nDireccion Izquierda'),
                          Container(
                            child: Row(
                              children: [
                                Radio(
                                  fillColor: wDisabled == true
                                      ? MaterialStatePropertyAll(Colors.white38)
                                      : MaterialStatePropertyAll(Colors.white),
                                  value: Lcremallera[0],
                                  groupValue: opcLcremallera,
                                  onChanged: (value) {
                                    group05(value);
                                  },
                                ),
                                Radio(
                                  fillColor: wDisabled == true
                                      ? MaterialStatePropertyAll(Colors.white38)
                                      : MaterialStatePropertyAll(Colors.white),
                                  value: Lcremallera[1],
                                  groupValue: opcLcremallera,
                                  onChanged: (value) {
                                    group05(value);
                                  },
                                ),
                                Radio(
                                  fillColor: wDisabled == true
                                      ? MaterialStatePropertyAll(Colors.white38)
                                      : MaterialStatePropertyAll(Colors.white),
                                  value: Lcremallera[2],
                                  groupValue: opcLcremallera,
                                  onChanged: (value) {
                                    group05(value);
                                  },
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Texto_parte(
                              texto: 'Cremallera en la \nDireccion Derecha'),
                          Container(
                            child: Row(
                              children: [
                                Radio(
                                  fillColor: wDisabled == true
                                      ? MaterialStatePropertyAll(Colors.white38)
                                      : MaterialStatePropertyAll(Colors.white),
                                  value: Rcremallera[0],
                                  groupValue: opcRcremallera,
                                  onChanged: (value) {
                                    group06(value);
                                  },
                                ),
                                Radio(
                                  fillColor: wDisabled == true
                                      ? MaterialStatePropertyAll(Colors.white38)
                                      : MaterialStatePropertyAll(Colors.white),
                                  value: Rcremallera[1],
                                  groupValue: opcRcremallera,
                                  onChanged: (value) {
                                    group06(value);
                                  },
                                ),
                                Radio(
                                  fillColor: wDisabled == true
                                      ? MaterialStatePropertyAll(Colors.white38)
                                      : MaterialStatePropertyAll(Colors.white),
                                  value: Rcremallera[2],
                                  groupValue: opcRcremallera,
                                  onChanged: (value) {
                                    group06(value);
                                  },
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: TextField(
                          controller: obserController,
                          maxLines: 10,
                          minLines: 6,
                          decoration: InputDecoration(
                              hintText: 'Observaciones',
                              fillColor: wDisabled == true
                                  ? Colors.white54
                                  : Theme.of(context).secondaryHeaderColor,
                              filled: true,
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15))),
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              elevation: 5,
                              padding: EdgeInsets.symmetric(
                                  horizontal: 35, vertical: 15),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15)),
                              backgroundColor: Color(0xFF95A6DC)),
                          onPressed: () {
                            ss.addHidraulica(
                                widget.noOrden,
                                opcFuga!,
                                opcConRuido!,
                                opcAltaPresion!,
                                opcRetorno!,
                                opcLcremallera!,
                                opcRcremallera!,
                                obserController.text);
                            actualizar();
                          },
                          child: Text(
                            'Guardar',
                            style: TextStyle(
                                fontSize: 16,
                                color: Theme.of(context).primaryColor),
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Texto_parte extends StatelessWidget {
  final String texto;
  const Texto_parte({super.key, required this.texto});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 15),
      child: Text(
        texto,
        style: TextStyle(color: Colors.white, fontSize: 18),
      ),
    );
  }
}
