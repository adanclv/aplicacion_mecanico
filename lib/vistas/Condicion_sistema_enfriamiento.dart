import 'package:aplicacion_mecanico/controlador/Save_servicio.dart';
import 'package:flutter/material.dart';

class Condicion_sistema_enfriamiento extends StatefulWidget {
  final String noOrden;
  const Condicion_sistema_enfriamiento({super.key, required this.noOrden});

  @override
  State<Condicion_sistema_enfriamiento> createState() =>
      _Condicion_sistema_enfriamiento();
}

List<String> Radiador = ['si', 'no'];
List<String> Anticongelante = ['si', 'no'];
List<String> Agua = ['si', 'no'];
List<String> FugaBomba = ['si', 'no'];
List<String> Termostato = ['si', 'no'];
List<String> Mangueras = ['si', 'no'];
List<String> FugaTapon = ['si', 'no'];
List<String> Abrazaderas = ['si', 'no'];
List<String> Deposito = ['si', 'no'];

class _Condicion_sistema_enfriamiento
    extends State<Condicion_sistema_enfriamiento> {
  Save_servicio ss = Save_servicio();
  List<String> rSeleccionado = [];
  bool wDisabled = false;

  TextEditingController obserController = TextEditingController();
  String? opcRadiador;
  String? opcAnticongelante;
  String? opcAgua;
  String? opcBombaAgua;
  String? opcTermostato;
  String? opcManguera;
  String? opcTapon;
  String? opcAbrazaderas;
  String? opcDeposito;

  @override
  void initState() {
    super.initState();
    if (ss.existeEnfriamiento(widget.noOrden)) {
      wDisabled = true;
      rSeleccionado = ss.infoEnfriamiento(widget.noOrden);
      llenado();
    }
  }

  void group01(values) {
    setState(() {
      if (wDisabled == false) {
        opcRadiador = values.toString();
      } else {}
    });
  }

  void group02(values) {
    setState(() {
      if (wDisabled == false) {
        opcAnticongelante = values.toString();
      } else {}
    });
  }

  void group03(values) {
    setState(() {
      if (wDisabled == false) {
        opcAgua = values.toString();
      } else {}
    });
  }

  void group04(values) {
    setState(() {
      if (wDisabled == false) {
        opcBombaAgua = values.toString();
      } else {}
    });
  }

  void group05(values) {
    setState(() {
      if (wDisabled == false) {
        opcTermostato = values.toString();
      } else {}
    });
  }

  void group06(values) {
    setState(() {
      if (wDisabled == false) {
        opcManguera = values.toString();
      } else {}
    });
  }

  void group07(values) {
    setState(() {
      if (wDisabled == false) {
        opcTapon = values.toString();
      } else {}
    });
  }

  void group08(values) {
    setState(() {
      if (wDisabled == false) {
        opcAbrazaderas = values.toString();
      } else {}
    });
  }

  void group09(values) {
    setState(() {
      if (wDisabled == false) {
        opcDeposito = values.toString();
      } else {}
    });
  }

  void llenado() {
    setState(() {
      opcRadiador = rSeleccionado[0];
      opcAnticongelante = rSeleccionado[1];
      opcAgua = rSeleccionado[2];
      opcBombaAgua = rSeleccionado[3];
      opcTermostato = rSeleccionado[4];
      opcManguera = rSeleccionado[5];
      opcTapon = rSeleccionado[6];
      opcAbrazaderas = rSeleccionado[7];
      opcDeposito = rSeleccionado[8];
      obserController.text = rSeleccionado[9];
    });
  }

  void actualizar() {
    wDisabled = true;
    rSeleccionado = ss.infoEnfriamiento(widget.noOrden);
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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Texto_parte(texto: 'Radiador Tapado'),
                          Container(
                            child: Row(
                              children: [
                                Radio(
                                  fillColor: wDisabled == true
                                      ? MaterialStatePropertyAll(Colors.white38)
                                      : MaterialStatePropertyAll(Colors.white),
                                  value: Radiador[0],
                                  groupValue: opcRadiador,
                                  onChanged: (value) {
                                    group01(value);
                                  },
                                ),
                                Radio(
                                  fillColor: wDisabled == true
                                      ? MaterialStatePropertyAll(Colors.white38)
                                      : MaterialStatePropertyAll(Colors.white),
                                  value: Radiador[1],
                                  groupValue: opcRadiador,
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
                          Texto_parte(texto: 'Anticongelante'),
                          Container(
                            child: Row(
                              children: [
                                Radio(
                                  fillColor: wDisabled == true
                                      ? MaterialStatePropertyAll(Colors.white38)
                                      : MaterialStatePropertyAll(Colors.white),
                                  value: Anticongelante[0],
                                  groupValue: opcAnticongelante,
                                  onChanged: (value) {
                                    group02(value);
                                  },
                                ),
                                Radio(
                                  fillColor: wDisabled == true
                                      ? MaterialStatePropertyAll(Colors.white38)
                                      : MaterialStatePropertyAll(Colors.white),
                                  value: Anticongelante[1],
                                  groupValue: opcAnticongelante,
                                  onChanged: (value) {
                                    group02(value);
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
                          Texto_parte(texto: 'Agua'),
                          Container(
                            child: Row(
                              children: [
                                Radio(
                                  fillColor: wDisabled == true
                                      ? MaterialStatePropertyAll(Colors.white38)
                                      : MaterialStatePropertyAll(Colors.white),
                                  value: Agua[0],
                                  groupValue: opcAgua,
                                  onChanged: (value) {
                                    group03(value);
                                  },
                                ),
                                Radio(
                                  fillColor: wDisabled == true
                                      ? MaterialStatePropertyAll(Colors.white38)
                                      : MaterialStatePropertyAll(Colors.white),
                                  value: Agua[1],
                                  groupValue: opcAgua,
                                  onChanged: (value) {
                                    group03(value);
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
                          Texto_parte(texto: 'Fuga Bomba de Agua'),
                          Container(
                            child: Row(
                              children: [
                                Radio(
                                  fillColor: wDisabled == true
                                      ? MaterialStatePropertyAll(Colors.white38)
                                      : MaterialStatePropertyAll(Colors.white),
                                  value: FugaBomba[0],
                                  groupValue: opcBombaAgua,
                                  onChanged: (value) {
                                    group04(value);
                                  },
                                ),
                                Radio(
                                  fillColor: wDisabled == true
                                      ? MaterialStatePropertyAll(Colors.white38)
                                      : MaterialStatePropertyAll(Colors.white),
                                  value: FugaBomba[1],
                                  groupValue: opcBombaAgua,
                                  onChanged: (value) {
                                    group04(value);
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
                          Texto_parte(texto: 'Termostato'),
                          Container(
                            child: Row(
                              children: [
                                Radio(
                                  fillColor: wDisabled == true
                                      ? MaterialStatePropertyAll(Colors.white38)
                                      : MaterialStatePropertyAll(Colors.white),
                                  value: Termostato[0],
                                  groupValue: opcTermostato,
                                  onChanged: (value) {
                                    group05(value);
                                  },
                                ),
                                Radio(
                                  fillColor: wDisabled == true
                                      ? MaterialStatePropertyAll(Colors.white38)
                                      : MaterialStatePropertyAll(Colors.white),
                                  value: Termostato[1],
                                  groupValue: opcTermostato,
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
                          Texto_parte(texto: 'Mangueras Rotas'),
                          Container(
                            child: Row(
                              children: [
                                Radio(
                                  fillColor: wDisabled == true
                                      ? MaterialStatePropertyAll(Colors.white38)
                                      : MaterialStatePropertyAll(Colors.white),
                                  value: Mangueras[0],
                                  groupValue: opcManguera,
                                  onChanged: (value) {
                                    group06(value);
                                  },
                                ),
                                Radio(
                                  fillColor: wDisabled == true
                                      ? MaterialStatePropertyAll(Colors.white38)
                                      : MaterialStatePropertyAll(Colors.white),
                                  value: Mangueras[1],
                                  groupValue: opcManguera,
                                  onChanged: (value) {
                                    group06(value);
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
                          Texto_parte(texto: 'Fuga del Tapon'),
                          Container(
                            child: Row(
                              children: [
                                Radio(
                                  fillColor: wDisabled == true
                                      ? MaterialStatePropertyAll(Colors.white38)
                                      : MaterialStatePropertyAll(Colors.white),
                                  value: FugaTapon[0],
                                  groupValue: opcTapon,
                                  onChanged: (value) {
                                    group07(value);
                                  },
                                ),
                                Radio(
                                  fillColor: wDisabled == true
                                      ? MaterialStatePropertyAll(Colors.white38)
                                      : MaterialStatePropertyAll(Colors.white),
                                  value: FugaTapon[1],
                                  groupValue: opcTapon,
                                  onChanged: (value) {
                                    group07(value);
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
                          Texto_parte(texto: 'Abrazaderas Rotas'),
                          Container(
                            child: Row(
                              children: [
                                Radio(
                                  fillColor: wDisabled == true
                                      ? MaterialStatePropertyAll(Colors.white38)
                                      : MaterialStatePropertyAll(Colors.white),
                                  value: Abrazaderas[0],
                                  groupValue: opcAbrazaderas,
                                  onChanged: (value) {
                                    group08(value);
                                  },
                                ),
                                Radio(
                                  fillColor: wDisabled == true
                                      ? MaterialStatePropertyAll(Colors.white38)
                                      : MaterialStatePropertyAll(Colors.white),
                                  value: Abrazaderas[1],
                                  groupValue: opcAbrazaderas,
                                  onChanged: (value) {
                                    group08(value);
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
                          Texto_parte(texto: 'Deposito Roto'),
                          Container(
                            child: Row(
                              children: [
                                Radio(
                                  fillColor: wDisabled == true
                                      ? MaterialStatePropertyAll(Colors.white38)
                                      : MaterialStatePropertyAll(Colors.white),
                                  value: Deposito[0],
                                  groupValue: opcDeposito,
                                  onChanged: (value) {
                                    group09(value);
                                  },
                                ),
                                Radio(
                                  fillColor: wDisabled == true
                                      ? MaterialStatePropertyAll(Colors.white38)
                                      : MaterialStatePropertyAll(Colors.white),
                                  value: Deposito[1],
                                  groupValue: opcDeposito,
                                  onChanged: (value) {
                                    group09(value);
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
                          readOnly: wDisabled,
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
                            ss.addEnfriamiento(
                                widget.noOrden,
                                opcRadiador!,
                                opcAnticongelante!,
                                opcAgua!,
                                opcBombaAgua!,
                                opcTermostato!,
                                opcManguera!,
                                opcTapon!,
                                opcAbrazaderas!,
                                opcDeposito!,
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
