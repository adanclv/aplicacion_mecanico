import 'package:flutter/material.dart';

import '../controlador/Save_servicio.dart';

class Condiciones_del_motor extends StatefulWidget {
  final String noOrden;
  const Condiciones_del_motor({super.key, required this.noOrden});

  @override
  State<Condiciones_del_motor> createState() => _Condiciones_del_motor();
}

List<String> banda_alternador = ['tostada', 'rota', 'chilla'];
List<String> polea_tensora = ['cambio', 'mal', 'bien'];
List<String> polea_loca = ['cambio', 'mal', 'bien'];

List<String> bomba_agua = ['gotea', 'chilla'];
List<String> fan_clutch = ['cambio', 'mal', 'bien'];

List<String> bomba_aceite = ['alta', 'normal', 'baja'];
List<String> tapa_punterias = ['si', 'no'];
List<String> tapa_carter = ['si', 'no'];
List<String> registro_monoblock = ['si', 'no'];
List<String> cadena_tiempo = ['si', 'no'];

List<String> Breten_ciguenal = ['cambio', 'mal', 'bien'];
List<String> Breten_ciguenal_goteo = ['si', 'no'];
List<String> Freten_ciguenal = ['cambio', 'mal', 'bien'];
List<String> Freten_ciguenal_goteo = ['si', 'no'];

List<String> Reten_arbol_e = ['cambio', 'mal', 'bien'];
List<String> Reten_arbol_e_goteo = ['si', 'no'];
List<String> Reten_arbol_a = ['cambio', 'mal', 'bien'];
List<String> Reten_arbol_a_goteo = ['si', 'no'];

class _Condiciones_del_motor extends State<Condiciones_del_motor> {
  Save_servicio ss = Save_servicio();
  List<String> rSeleccionado = [];
  bool wDisabled = false;

  TextEditingController obserController = TextEditingController();
  String? opcion01; //Banda Alternador
  String? opcion02; //Polea Tensora
  String? opcion03; //Polea Loca

  String? opcion04; //Bomba de Agua
  String? opcion05; //Fan Clutch

  String? opcion06; //Presion Bomba de Aceite
  String? opcion07; //Tapa de Punterias
  String? opcion08; //Tapa del Carter
  String? opcion09; //Registros del Monoblock
  String? opcion10; //Cadena del Tiempo

  String? opcion11; //Reten del Cigueñal Trasero
  String? opcion12; //Reten del Cigueñal Trasero Goteo
  String? opcion13; //Reten del Cigueñal Delantero
  String? opcion14; //Reten del Cigueñal Delantero Goteo

  String? opcion15; //Reten Arbol E
  String? opcion16; //Reten Arbol E Goteo
  String? opcion17; //Reten Arbol A
  String? opcion18; //Reten Arbol A Goteo

  @override
  void initState() {
    super.initState();
    if (ss.existeMotor(widget.noOrden)) {
      wDisabled = true;
      rSeleccionado = ss.infoMotor(widget.noOrden);
      llenado();
    }
  }

  void group01(values) {
    //Banda Alternador
    setState(() {
      if (wDisabled == false) {
        opcion01 = values.toString();
      } else {}
    });
  }

  void group02(values) {
    //Polea Tensora
    setState(() {
      if (wDisabled == false) {
        opcion02 = values.toString();
      } else {}
    });
  }

  void group03(values) {
    //Polea Loca
    setState(() {
      if (wDisabled == false) {
        opcion03 = values.toString();
      } else {}
    });
  }

  void group04(values) {
    //Bomba de Agua
    setState(() {
      if (wDisabled == false) {
        opcion04 = values.toString();
      } else {}
    });
  }

  void group05(values) {
    //Fan Clutch
    setState(() {
      if (wDisabled == false) {
        opcion05 = values.toString();
      } else {}
    });
  }

  void group06(values) {
    //Presion Bomba de Aceite
    setState(() {
      if (wDisabled == false) {
        opcion06 = values.toString();
      } else {}
    });
  }

  void group07(values) {
    //Tapa de Punterias
    setState(() {
      if (wDisabled == false) {
        opcion07 = values.toString();
      } else {}
    });
  }

  void group08(values) {
    //Tapa del Carter
    setState(() {
      if (wDisabled == false) {
        opcion08 = values.toString();
      } else {}
    });
  }

  void group09(values) {
    //Registros de Monoblock
    setState(() {
      if (wDisabled == false) {
        opcion09 = values.toString();
      } else {}
    });
  }

  void group10(values) {
    //Cadena de Tiempo
    setState(() {
      if (wDisabled == false) {
        opcion10 = values.toString();
      } else {}
    });
  }

  void group11(values) {
    //Reten del Cigueñal Trasero
    setState(() {
      if (wDisabled == false) {
        opcion11 = values.toString();
      } else {}
    });
  }

  void group12(values) {
    //Reten del Cigueñal Trasero Goteo
    setState(() {
      if (wDisabled == false) {
        opcion12 = values.toString();
      } else {}
    });
  }

  void group13(values) {
    //Reten del Cigueñal Delantero
    setState(() {
      if (wDisabled == false) {
        opcion13 = values.toString();
      } else {}
    });
  }

  void group14(values) {
    //Reten del Cigueñal Delantero Goteo
    setState(() {
      if (wDisabled == false) {
        opcion14 = values.toString();
      } else {}
    });
  }

  void group15(values) {
    //Reten Arbol E
    setState(() {
      if (wDisabled == false) {
        opcion15 = values.toString();
      } else {}
    });
  }

  void group16(values) {
    //Reten Arbol E Goteo
    setState(() {
      if (wDisabled == false) {
        opcion16 = values.toString();
      } else {}
    });
  }

  void group17(values) {
    //Reten Arbol A
    setState(() {
      if (wDisabled == false) {
        opcion17 = values.toString();
      } else {}
    });
  }

  void group18(values) {
    //Reten Arbol A Goteo
    setState(() {
      if (wDisabled == false) {
        opcion18 = values.toString();
      } else {}
    });
  }

  void llenado() {
    setState(() {
      opcion01 = rSeleccionado[0];
      opcion02 = rSeleccionado[1];
      opcion03 = rSeleccionado[2];
      opcion04 = rSeleccionado[3];
      opcion05 = rSeleccionado[4];
      opcion06 = rSeleccionado[5];
      opcion07 = rSeleccionado[6];
      opcion08 = rSeleccionado[7];
      opcion09 = rSeleccionado[8];
      opcion10 = rSeleccionado[9];
      opcion11 = rSeleccionado[10];
      opcion12 = rSeleccionado[11];
      opcion13 = rSeleccionado[12];
      opcion14 = rSeleccionado[13];
      opcion15 = rSeleccionado[14];
      opcion16 = rSeleccionado[15];
      opcion17 = rSeleccionado[16];
      opcion18 = rSeleccionado[17];
      obserController.text = rSeleccionado[18];
    });
  }

  void actualizar() {
    wDisabled = true;
    rSeleccionado = ss.infoMotor(widget.noOrden);
    llenado();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Texto_parte(texto: 'Banda Alternador'),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            child: Row(
                              children: [
                                Text('Tostada',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 16)),
                                Radio(
                                  fillColor: wDisabled == true
                                      ? MaterialStatePropertyAll(Colors.white38)
                                      : MaterialStatePropertyAll(Colors.white),
                                  value: banda_alternador[0],
                                  groupValue: opcion01,
                                  onChanged: (value) {
                                    group01(value);
                                  },
                                ),
                              ],
                            ),
                          ),
                          Container(
                            child: Row(
                              children: [
                                Text('Rota',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 16)),
                                Radio(
                                  fillColor: wDisabled == true
                                      ? MaterialStatePropertyAll(Colors.white38)
                                      : MaterialStatePropertyAll(Colors.white),
                                  value: banda_alternador[1],
                                  groupValue: opcion01,
                                  onChanged: (value) {
                                    group01(value);
                                  },
                                ),
                              ],
                            ),
                          ),
                          Container(
                            child: Row(
                              children: [
                                Text('Chilla',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 16)),
                                Radio(
                                  fillColor: wDisabled == true
                                      ? MaterialStatePropertyAll(Colors.white38)
                                      : MaterialStatePropertyAll(Colors.white),
                                  value: banda_alternador[2],
                                  groupValue: opcion01,
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
                          Texto_parte(texto: 'Polea Tensora'),
                          Container(
                            child: Row(
                              children: [
                                Radio(
                                  fillColor: wDisabled == true
                                      ? MaterialStatePropertyAll(Colors.white38)
                                      : MaterialStatePropertyAll(Colors.white),
                                  value: polea_tensora[0],
                                  groupValue: opcion02,
                                  onChanged: (value) {
                                    group02(value);
                                  },
                                ),
                                Radio(
                                  fillColor: wDisabled == true
                                      ? MaterialStatePropertyAll(Colors.white38)
                                      : MaterialStatePropertyAll(Colors.white),
                                  value: polea_tensora[1],
                                  groupValue: opcion02,
                                  onChanged: (value) {
                                    group02(value);
                                  },
                                ),
                                Radio(
                                  fillColor: wDisabled == true
                                      ? MaterialStatePropertyAll(Colors.white38)
                                      : MaterialStatePropertyAll(Colors.white),
                                  value: polea_tensora[2],
                                  groupValue: opcion02,
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
                          Texto_parte(texto: 'Polea Loca'),
                          Container(
                            child: Row(
                              children: [
                                Radio(
                                  fillColor: wDisabled == true
                                      ? MaterialStatePropertyAll(Colors.white38)
                                      : MaterialStatePropertyAll(Colors.white),
                                  value: polea_loca[0],
                                  groupValue: opcion03,
                                  onChanged: (value) {
                                    group03(value);
                                  },
                                ),
                                Radio(
                                  fillColor: wDisabled == true
                                      ? MaterialStatePropertyAll(Colors.white38)
                                      : MaterialStatePropertyAll(Colors.white),
                                  value: polea_loca[1],
                                  groupValue: opcion03,
                                  onChanged: (value) {
                                    group03(value);
                                  },
                                ),
                                Radio(
                                  fillColor: wDisabled == true
                                      ? MaterialStatePropertyAll(Colors.white38)
                                      : MaterialStatePropertyAll(Colors.white),
                                  value: polea_loca[2],
                                  groupValue: opcion03,
                                  onChanged: (value) {
                                    group03(value);
                                  },
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Texto_parte(texto: 'Bomba de Agua'),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            child: Row(
                              children: [
                                Text('Gotea',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 16)),
                                Radio(
                                  fillColor: wDisabled == true
                                      ? MaterialStatePropertyAll(Colors.white38)
                                      : MaterialStatePropertyAll(Colors.white),
                                  value: bomba_agua[0],
                                  groupValue: opcion04,
                                  onChanged: (value) {
                                    group04(value);
                                  },
                                ),
                              ],
                            ),
                          ),
                          Container(
                            child: Row(
                              children: [
                                Text('Chilla',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 16)),
                                Radio(
                                  fillColor: wDisabled == true
                                      ? MaterialStatePropertyAll(Colors.white38)
                                      : MaterialStatePropertyAll(Colors.white),
                                  value: bomba_agua[1],
                                  groupValue: opcion04,
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
                          Texto_parte(texto: 'Fan Clutch'),
                          Container(
                            child: Row(
                              children: [
                                Radio(
                                  fillColor: wDisabled == true
                                      ? MaterialStatePropertyAll(Colors.white38)
                                      : MaterialStatePropertyAll(Colors.white),
                                  value: fan_clutch[0],
                                  groupValue: opcion05,
                                  onChanged: (value) {
                                    group05(value);
                                  },
                                ),
                                Radio(
                                  fillColor: wDisabled == true
                                      ? MaterialStatePropertyAll(Colors.white38)
                                      : MaterialStatePropertyAll(Colors.white),
                                  value: fan_clutch[1],
                                  groupValue: opcion05,
                                  onChanged: (value) {
                                    group05(value);
                                  },
                                ),
                                Radio(
                                  fillColor: wDisabled == true
                                      ? MaterialStatePropertyAll(Colors.white38)
                                      : MaterialStatePropertyAll(Colors.white),
                                  value: fan_clutch[2],
                                  groupValue: opcion05,
                                  onChanged: (value) {
                                    group05(value);
                                  },
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Texto_parte(texto: 'Presion bomba de aceite'),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            child: Row(
                              children: [
                                Text('Alta',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 16)),
                                Radio(
                                  fillColor: wDisabled == true
                                      ? MaterialStatePropertyAll(Colors.white38)
                                      : MaterialStatePropertyAll(Colors.white),
                                  value: bomba_aceite[0],
                                  groupValue: opcion06,
                                  onChanged: (value) {
                                    group06(value);
                                  },
                                ),
                              ],
                            ),
                          ),
                          Container(
                            child: Row(
                              children: [
                                Text('Normal',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 16)),
                                Radio(
                                  fillColor: wDisabled == true
                                      ? MaterialStatePropertyAll(Colors.white38)
                                      : MaterialStatePropertyAll(Colors.white),
                                  value: bomba_aceite[1],
                                  groupValue: opcion06,
                                  onChanged: (value) {
                                    group06(value);
                                  },
                                ),
                              ],
                            ),
                          ),
                          Container(
                            child: Row(
                              children: [
                                Text('Baja',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 16)),
                                Radio(
                                  fillColor: wDisabled == true
                                      ? MaterialStatePropertyAll(Colors.white38)
                                      : MaterialStatePropertyAll(Colors.white),
                                  value: bomba_aceite[2],
                                  groupValue: opcion06,
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
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text('Si', style: TextStyle(color: Colors.white)),
                          SizedBox(width: 35),
                          Text('No', style: TextStyle(color: Colors.white)),
                          SizedBox(width: 15),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Texto_parte(texto: 'Tapa de Punterias'),
                          Container(
                            child: Row(
                              children: [
                                Radio(
                                  fillColor: wDisabled == true
                                      ? MaterialStatePropertyAll(Colors.white38)
                                      : MaterialStatePropertyAll(Colors.white),
                                  value: tapa_punterias[0],
                                  groupValue: opcion07,
                                  onChanged: (value) {
                                    group07(value);
                                  },
                                ),
                                Radio(
                                  fillColor: wDisabled == true
                                      ? MaterialStatePropertyAll(Colors.white38)
                                      : MaterialStatePropertyAll(Colors.white),
                                  value: tapa_punterias[1],
                                  groupValue: opcion07,
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
                          Texto_parte(texto: 'Tapa del Carter'),
                          Container(
                            child: Row(
                              children: [
                                Radio(
                                  fillColor: wDisabled == true
                                      ? MaterialStatePropertyAll(Colors.white38)
                                      : MaterialStatePropertyAll(Colors.white),
                                  value: tapa_carter[0],
                                  groupValue: opcion08,
                                  onChanged: (value) {
                                    group08(value);
                                  },
                                ),
                                Radio(
                                  fillColor: wDisabled == true
                                      ? MaterialStatePropertyAll(Colors.white38)
                                      : MaterialStatePropertyAll(Colors.white),
                                  value: tapa_carter[1],
                                  groupValue: opcion08,
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
                          Texto_parte(texto: 'Registros de Monoblock'),
                          Container(
                            child: Row(
                              children: [
                                Radio(
                                  fillColor: wDisabled == true
                                      ? MaterialStatePropertyAll(Colors.white38)
                                      : MaterialStatePropertyAll(Colors.white),
                                  value: registro_monoblock[0],
                                  groupValue: opcion09,
                                  onChanged: (value) {
                                    group09(value);
                                  },
                                ),
                                Radio(
                                  fillColor: wDisabled == true
                                      ? MaterialStatePropertyAll(Colors.white38)
                                      : MaterialStatePropertyAll(Colors.white),
                                  value: registro_monoblock[1],
                                  groupValue: opcion09,
                                  onChanged: (value) {
                                    group09(value);
                                  },
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text('Suena', style: TextStyle(color: Colors.white)),
                          SizedBox(width: 30),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Texto_parte(texto: 'Cadena de Tiempo'),
                          Container(
                            child: Row(
                              children: [
                                Radio(
                                  fillColor: wDisabled == true
                                      ? MaterialStatePropertyAll(Colors.white38)
                                      : MaterialStatePropertyAll(Colors.white),
                                  value: cadena_tiempo[0],
                                  groupValue: opcion10,
                                  onChanged: (value) {
                                    group10(value);
                                  },
                                ),
                                Radio(
                                  fillColor: wDisabled == true
                                      ? MaterialStatePropertyAll(Colors.white38)
                                      : MaterialStatePropertyAll(Colors.white),
                                  value: cadena_tiempo[1],
                                  groupValue: opcion10,
                                  onChanged: (value) {
                                    group10(value);
                                  },
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Texto_parte(texto: 'Reten del Cigueñal'),
                      SizedBox(height: 8),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            'Trasero',
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),
                          Text(
                            'Delantero',
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            child: Row(
                              children: [
                                Text('Cambio',
                                    style: TextStyle(color: Colors.white)),
                                SizedBox(width: 20),
                                Text('f/s',
                                    style: TextStyle(color: Colors.white)),
                                SizedBox(width: 20),
                                Text('Bien',
                                    style: TextStyle(color: Colors.white)),
                              ],
                            ),
                          ),
                          Container(
                            child: Row(
                              children: [
                                Text('Cambio',
                                    style: TextStyle(color: Colors.white)),
                                SizedBox(width: 20),
                                Text('f/s',
                                    style: TextStyle(color: Colors.white)),
                                SizedBox(width: 20),
                                Text('Bien',
                                    style: TextStyle(color: Colors.white)),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            child: Row(
                              children: [
                                Radio(
                                  fillColor: wDisabled == true
                                      ? MaterialStatePropertyAll(Colors.white38)
                                      : MaterialStatePropertyAll(Colors.white),
                                  value: Breten_ciguenal[0],
                                  groupValue: opcion11,
                                  onChanged: (value) {
                                    group11(value);
                                  },
                                ),
                                Radio(
                                  fillColor: wDisabled == true
                                      ? MaterialStatePropertyAll(Colors.white38)
                                      : MaterialStatePropertyAll(Colors.white),
                                  value: Breten_ciguenal[1],
                                  groupValue: opcion11,
                                  onChanged: (value) {
                                    group11(value);
                                  },
                                ),
                                Radio(
                                  fillColor: wDisabled == true
                                      ? MaterialStatePropertyAll(Colors.white38)
                                      : MaterialStatePropertyAll(Colors.white),
                                  value: Breten_ciguenal[2],
                                  groupValue: opcion11,
                                  onChanged: (value) {
                                    group11(value);
                                  },
                                )
                              ],
                            ),
                          ),
                          Container(
                            child: Row(
                              children: [
                                Radio(
                                  fillColor: wDisabled == true
                                      ? MaterialStatePropertyAll(Colors.white38)
                                      : MaterialStatePropertyAll(Colors.white),
                                  value: Freten_ciguenal[0],
                                  groupValue: opcion13,
                                  onChanged: (value) {
                                    group13(value);
                                  },
                                ),
                                Radio(
                                  fillColor: wDisabled == true
                                      ? MaterialStatePropertyAll(Colors.white38)
                                      : MaterialStatePropertyAll(Colors.white),
                                  value: Freten_ciguenal[1],
                                  groupValue: opcion13,
                                  onChanged: (value) {
                                    group13(value);
                                  },
                                ),
                                Radio(
                                  fillColor: wDisabled == true
                                      ? MaterialStatePropertyAll(Colors.white38)
                                      : MaterialStatePropertyAll(Colors.white),
                                  value: Freten_ciguenal[2],
                                  groupValue: opcion13,
                                  onChanged: (value) {
                                    group13(value);
                                  },
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            'Goteo',
                            style: TextStyle(color: Colors.white, fontSize: 17),
                          ),
                          Text(
                            'Goteo',
                            style: TextStyle(color: Colors.white, fontSize: 17),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            child: Row(
                              children: [
                                Text('Si',
                                    style: TextStyle(color: Colors.white)),
                                SizedBox(width: 20),
                                Text('No',
                                    style: TextStyle(color: Colors.white)),
                              ],
                            ),
                          ),
                          Container(
                            child: Row(
                              children: [
                                Text('Si',
                                    style: TextStyle(color: Colors.white)),
                                SizedBox(width: 20),
                                Text('No',
                                    style: TextStyle(color: Colors.white)),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            child: Row(
                              children: [
                                Radio(
                                  fillColor: wDisabled == true
                                      ? MaterialStatePropertyAll(Colors.white38)
                                      : MaterialStatePropertyAll(Colors.white),
                                  value: Breten_ciguenal_goteo[0],
                                  groupValue: opcion12,
                                  onChanged: (value) {
                                    group12(value);
                                  },
                                ),
                                Radio(
                                  fillColor: wDisabled == true
                                      ? MaterialStatePropertyAll(Colors.white38)
                                      : MaterialStatePropertyAll(Colors.white),
                                  value: Breten_ciguenal_goteo[1],
                                  groupValue: opcion12,
                                  onChanged: (value) {
                                    group12(value);
                                  },
                                ),
                              ],
                            ),
                          ),
                          Container(
                            child: Row(
                              children: [
                                Radio(
                                  fillColor: wDisabled == true
                                      ? MaterialStatePropertyAll(Colors.white38)
                                      : MaterialStatePropertyAll(Colors.white),
                                  value: Freten_ciguenal_goteo[0],
                                  groupValue: opcion14,
                                  onChanged: (value) {
                                    group14(value);
                                  },
                                ),
                                Radio(
                                  fillColor: wDisabled == true
                                      ? MaterialStatePropertyAll(Colors.white38)
                                      : MaterialStatePropertyAll(Colors.white),
                                  value: Freten_ciguenal_goteo[1],
                                  groupValue: opcion14,
                                  onChanged: (value) {
                                    group14(value);
                                  },
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Texto_parte(texto: 'Reten Arbol de Levas'),
                      SizedBox(height: 8),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            'Arbol E',
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),
                          Text(
                            'Arbol A',
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            child: Row(
                              children: [
                                Text('Cambio',
                                    style: TextStyle(color: Colors.white)),
                                SizedBox(width: 20),
                                Text('f/s',
                                    style: TextStyle(color: Colors.white)),
                                SizedBox(width: 20),
                                Text('Bien',
                                    style: TextStyle(color: Colors.white)),
                              ],
                            ),
                          ),
                          Container(
                            child: Row(
                              children: [
                                Text('Cambio',
                                    style: TextStyle(color: Colors.white)),
                                SizedBox(width: 20),
                                Text('f/s',
                                    style: TextStyle(color: Colors.white)),
                                SizedBox(width: 20),
                                Text('Bien',
                                    style: TextStyle(color: Colors.white)),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            child: Row(
                              children: [
                                Radio(
                                  fillColor: wDisabled == true
                                      ? MaterialStatePropertyAll(Colors.white38)
                                      : MaterialStatePropertyAll(Colors.white),
                                  value: Reten_arbol_e[0],
                                  groupValue: opcion15,
                                  onChanged: (value) {
                                    group15(value);
                                  },
                                ),
                                Radio(
                                  fillColor: wDisabled == true
                                      ? MaterialStatePropertyAll(Colors.white38)
                                      : MaterialStatePropertyAll(Colors.white),
                                  value: Reten_arbol_e[1],
                                  groupValue: opcion15,
                                  onChanged: (value) {
                                    group15(value);
                                  },
                                ),
                                Radio(
                                  fillColor: wDisabled == true
                                      ? MaterialStatePropertyAll(Colors.white38)
                                      : MaterialStatePropertyAll(Colors.white),
                                  value: Reten_arbol_e[2],
                                  groupValue: opcion15,
                                  onChanged: (value) {
                                    group15(value);
                                  },
                                )
                              ],
                            ),
                          ),
                          Container(
                            child: Row(
                              children: [
                                Radio(
                                  fillColor: wDisabled == true
                                      ? MaterialStatePropertyAll(Colors.white38)
                                      : MaterialStatePropertyAll(Colors.white),
                                  value: Reten_arbol_a[0],
                                  groupValue: opcion17,
                                  onChanged: (value) {
                                    group17(value);
                                  },
                                ),
                                Radio(
                                  fillColor: wDisabled == true
                                      ? MaterialStatePropertyAll(Colors.white38)
                                      : MaterialStatePropertyAll(Colors.white),
                                  value: Reten_arbol_a[1],
                                  groupValue: opcion17,
                                  onChanged: (value) {
                                    group17(value);
                                  },
                                ),
                                Radio(
                                  fillColor: wDisabled == true
                                      ? MaterialStatePropertyAll(Colors.white38)
                                      : MaterialStatePropertyAll(Colors.white),
                                  value: Reten_arbol_a[2],
                                  groupValue: opcion17,
                                  onChanged: (value) {
                                    group17(value);
                                  },
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            'Goteo',
                            style: TextStyle(color: Colors.white, fontSize: 17),
                          ),
                          Text(
                            'Goteo',
                            style: TextStyle(color: Colors.white, fontSize: 17),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            child: Row(
                              children: [
                                Text('Si',
                                    style: TextStyle(color: Colors.white)),
                                SizedBox(width: 20),
                                Text('No',
                                    style: TextStyle(color: Colors.white)),
                              ],
                            ),
                          ),
                          Container(
                            child: Row(
                              children: [
                                Text('Si',
                                    style: TextStyle(color: Colors.white)),
                                SizedBox(width: 20),
                                Text('No',
                                    style: TextStyle(color: Colors.white)),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            child: Row(
                              children: [
                                Radio(
                                  fillColor: wDisabled == true
                                      ? MaterialStatePropertyAll(Colors.white38)
                                      : MaterialStatePropertyAll(Colors.white),
                                  value: Reten_arbol_e_goteo[0],
                                  groupValue: opcion16,
                                  onChanged: (value) {
                                    group16(value);
                                  },
                                ),
                                Radio(
                                  fillColor: wDisabled == true
                                      ? MaterialStatePropertyAll(Colors.white38)
                                      : MaterialStatePropertyAll(Colors.white),
                                  value: Reten_arbol_e_goteo[1],
                                  groupValue: opcion16,
                                  onChanged: (value) {
                                    group16(value);
                                  },
                                ),
                              ],
                            ),
                          ),
                          Container(
                            child: Row(
                              children: [
                                Radio(
                                  fillColor: wDisabled == true
                                      ? MaterialStatePropertyAll(Colors.white38)
                                      : MaterialStatePropertyAll(Colors.white),
                                  value: Reten_arbol_a_goteo[0],
                                  groupValue: opcion18,
                                  onChanged: (value) {
                                    group18(value);
                                  },
                                ),
                                Radio(
                                  fillColor: wDisabled == true
                                      ? MaterialStatePropertyAll(Colors.white38)
                                      : MaterialStatePropertyAll(Colors.white),
                                  value: Reten_arbol_a_goteo[1],
                                  groupValue: opcion18,
                                  onChanged: (value) {
                                    group18(value);
                                  },
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10, bottom: 10),
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
                        padding:
                            EdgeInsets.symmetric(horizontal: 35, vertical: 15),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)),
                        backgroundColor: Color(0xFF95A6DC)),
                    onPressed: () {
                      ss.addMotor(
                          widget.noOrden,
                          opcion01!,
                          opcion02!,
                          opcion03!,
                          opcion04!,
                          opcion05!,
                          opcion06!,
                          opcion07!,
                          opcion08!,
                          opcion09!,
                          opcion10!,
                          opcion11!,
                          opcion12!,
                          opcion13!,
                          opcion14!,
                          opcion15!,
                          opcion16!,
                          opcion17!,
                          opcion18!,
                          obserController.text);
                      actualizar();
                    },
                    child: Text(
                      'Guardar',
                      style: TextStyle(
                          fontSize: 16, color: Theme.of(context).primaryColor),
                    ),
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
      padding: EdgeInsets.only(left: 15, top: 5),
      child: Text(
        texto,
        style: TextStyle(color: Colors.white, fontSize: 18),
      ),
    );
  }
}
