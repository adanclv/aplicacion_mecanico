import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Condiciones_del_motor extends StatefulWidget {
  const Condiciones_del_motor({super.key});

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

  void group01(values) {
    //Banda Alternador
    setState(() {
      opcion01 = values.toString();
    });
  }

  void group02(values) {
    //Polea Tensora
    setState(() {
      opcion02 = values.toString();
    });
  }

  void group03(values) {
    //Polea Loca
    setState(() {
      opcion03 = values.toString();
    });
  }

  void group04(values) {
    //Bomba de Agua
    setState(() {
      opcion04 = values.toString();
    });
  }

  void group05(values) {
    //Fan Clutch
    setState(() {
      opcion05 = values.toString();
    });
  }

  void group06(values) {
    //Presion Bomba de Aceite
    setState(() {
      opcion06 = values.toString();
    });
  }

  void group07(values) {
    //Tapa de Punterias
    setState(() {
      opcion07 = values.toString();
    });
  }

  void group08(values) {
    //Tapa del Carter
    setState(() {
      opcion08 = values.toString();
    });
  }

  void group09(values) {
    //Registros de Monoblock
    setState(() {
      opcion09 = values.toString();
    });
  }

  void group10(values) {
    //Cadena de Tiempo
    setState(() {
      opcion10 = values.toString();
    });
  }

  void group11(values) {
    //Reten del Cigueñal Trasero
    setState(() {
      opcion11 = values.toString();
    });
  }

  void group12(values) {
    //Reten del Cigueñal Trasero Goteo
    setState(() {
      opcion12 = values.toString();
    });
  }

  void group13(values) {
    //Reten del Cigueñal Delantero
    setState(() {
      opcion13 = values.toString();
    });
  }

  void group14(values) {
    //Reten del Cigueñal Delantero Goteo
    setState(() {
      opcion14 = values.toString();
    });
  }

  void group15(values) {
    //Reten Arbol E
    setState(() {
      opcion15 = values.toString();
    });
  }

  void group16(values) {
    //Reten Arbol E Goteo
    setState(() {
      opcion16 = values.toString();
    });
  }

  void group17(values) {
    //Reten Arbol A
    setState(() {
      opcion17 = values.toString();
    });
  }

  void group18(values) {
    //Reten Arbol A Goteo
    setState(() {
      opcion18 = values.toString();
    });
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
                        children: [
                          Text('Tostada',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 16)),
                          Radio(
                            fillColor: MaterialStatePropertyAll(Colors.white),
                            value: banda_alternador[0],
                            groupValue: opcion01,
                            onChanged: (value) {
                              group01(value);
                            },
                          ),
                          Text('Rota',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 16)),
                          Radio(
                            fillColor: MaterialStatePropertyAll(Colors.white),
                            value: banda_alternador[1],
                            groupValue: opcion01,
                            onChanged: (value) {
                              group01(value);
                            },
                          ),
                          Text('Chilla',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 16)),
                          Radio(
                            fillColor: MaterialStatePropertyAll(Colors.white),
                            value: banda_alternador[2],
                            groupValue: opcion01,
                            onChanged: (value) {
                              group01(value);
                            },
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text('Cambio', style: TextStyle(color: Colors.white)),
                          SizedBox(width: 20),
                          Text('f/s', style: TextStyle(color: Colors.white)),
                          SizedBox(width: 20),
                          Text('Bien', style: TextStyle(color: Colors.white)),
                          SizedBox(width: 20),
                        ],
                      ),
                      Row(
                        children: [
                          Texto_parte(texto: 'Polea Tensora'),
                          Radio(
                            fillColor: MaterialStatePropertyAll(Colors.white),
                            value: polea_tensora[0],
                            groupValue: opcion02,
                            onChanged: (value) {
                              group02(value);
                            },
                          ),
                          Radio(
                            fillColor: MaterialStatePropertyAll(Colors.white),
                            value: polea_tensora[1],
                            groupValue: opcion02,
                            onChanged: (value) {
                              group02(value);
                            },
                          ),
                          Radio(
                            fillColor: MaterialStatePropertyAll(Colors.white),
                            value: polea_tensora[2],
                            groupValue: opcion02,
                            onChanged: (value) {
                              group02(value);
                            },
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Texto_parte(texto: 'Polea Loca'),
                          Radio(
                            fillColor: MaterialStatePropertyAll(Colors.white),
                            value: polea_loca[0],
                            groupValue: opcion03,
                            onChanged: (value) {
                              group03(value);
                            },
                          ),
                          Radio(
                            fillColor: MaterialStatePropertyAll(Colors.white),
                            value: polea_loca[1],
                            groupValue: opcion03,
                            onChanged: (value) {
                              group03(value);
                            },
                          ),
                          Radio(
                            fillColor: MaterialStatePropertyAll(Colors.white),
                            value: polea_loca[2],
                            groupValue: opcion03,
                            onChanged: (value) {
                              group03(value);
                            },
                          )
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
                        children: [
                          Text('Gotea',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 16)),
                          Radio(
                            fillColor: MaterialStatePropertyAll(Colors.white),
                            value: bomba_agua[0],
                            groupValue: opcion04,
                            onChanged: (value) {
                              group04(value);
                            },
                          ),
                          Text('Chilla',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 16)),
                          Radio(
                            fillColor: MaterialStatePropertyAll(Colors.white),
                            value: bomba_agua[1],
                            groupValue: opcion04,
                            onChanged: (value) {
                              group04(value);
                            },
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text('Cambio', style: TextStyle(color: Colors.white)),
                          SizedBox(width: 20),
                          Text('f/s', style: TextStyle(color: Colors.white)),
                          SizedBox(width: 20),
                          Text('Bien', style: TextStyle(color: Colors.white)),
                          SizedBox(width: 20),
                        ],
                      ),
                      Row(
                        children: [
                          Texto_parte(texto: 'Fan Clutch'),
                          Radio(
                            fillColor: MaterialStatePropertyAll(Colors.white),
                            value: fan_clutch[0],
                            groupValue: opcion05,
                            onChanged: (value) {
                              group05(value);
                            },
                          ),
                          Radio(
                            fillColor: MaterialStatePropertyAll(Colors.white),
                            value: fan_clutch[1],
                            groupValue: opcion05,
                            onChanged: (value) {
                              group05(value);
                            },
                          ),
                          Radio(
                            fillColor: MaterialStatePropertyAll(Colors.white),
                            value: fan_clutch[2],
                            groupValue: opcion05,
                            onChanged: (value) {
                              group05(value);
                            },
                          )
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
                        children: [
                          Text('Alta',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 16)),
                          Radio(
                            fillColor: MaterialStatePropertyAll(Colors.white),
                            value: bomba_aceite[0],
                            groupValue: opcion06,
                            onChanged: (value) {
                              group06(value);
                            },
                          ),
                          Text('Normal',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 16)),
                          Radio(
                            fillColor: MaterialStatePropertyAll(Colors.white),
                            value: bomba_aceite[1],
                            groupValue: opcion06,
                            onChanged: (value) {
                              group06(value);
                            },
                          ),
                          Text('Baja',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 16)),
                          Radio(
                            fillColor: MaterialStatePropertyAll(Colors.white),
                            value: bomba_aceite[2],
                            groupValue: opcion06,
                            onChanged: (value) {
                              group06(value);
                            },
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text('Si', style: TextStyle(color: Colors.white)),
                          SizedBox(width: 35),
                          Text('No', style: TextStyle(color: Colors.white)),
                          SizedBox(width: 70),
                        ],
                      ),
                      Row(
                        children: [
                          Texto_parte(texto: 'Tapa de Punterias'),
                          Radio(
                            fillColor: MaterialStatePropertyAll(Colors.white),
                            value: tapa_punterias[0],
                            groupValue: opcion07,
                            onChanged: (value) {
                              group07(value);
                            },
                          ),
                          Radio(
                            fillColor: MaterialStatePropertyAll(Colors.white),
                            value: tapa_punterias[1],
                            groupValue: opcion07,
                            onChanged: (value) {
                              group07(value);
                            },
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Texto_parte(texto: 'Tapa del Carter'),
                          Radio(
                            fillColor: MaterialStatePropertyAll(Colors.white),
                            value: tapa_carter[0],
                            groupValue: opcion08,
                            onChanged: (value) {
                              group08(value);
                            },
                          ),
                          Radio(
                            fillColor: MaterialStatePropertyAll(Colors.white),
                            value: tapa_carter[1],
                            groupValue: opcion08,
                            onChanged: (value) {
                              group08(value);
                            },
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Texto_parte(texto: 'Registros de Monoblock'),
                          Radio(
                            fillColor: MaterialStatePropertyAll(Colors.white),
                            value: registro_monoblock[0],
                            groupValue: opcion09,
                            onChanged: (value) {
                              group09(value);
                            },
                          ),
                          Radio(
                            fillColor: MaterialStatePropertyAll(Colors.white),
                            value: registro_monoblock[1],
                            groupValue: opcion09,
                            onChanged: (value) {
                              group09(value);
                            },
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text('Suena', style: TextStyle(color: Colors.white)),
                          SizedBox(width: 85),
                        ],
                      ),
                      Row(
                        children: [
                          Texto_parte(texto: 'Cadena de Tiempo'),
                          Radio(
                            fillColor: MaterialStatePropertyAll(Colors.white),
                            value: cadena_tiempo[0],
                            groupValue: opcion10,
                            onChanged: (value) {
                              group10(value);
                            },
                          ),
                          Radio(
                            fillColor: MaterialStatePropertyAll(Colors.white),
                            value: cadena_tiempo[1],
                            groupValue: opcion10,
                            onChanged: (value) {
                              group10(value);
                            },
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
                                  fillColor:
                                      MaterialStatePropertyAll(Colors.white),
                                  value: Breten_ciguenal[0],
                                  groupValue: opcion11,
                                  onChanged: (value) {
                                    group11(value);
                                  },
                                ),
                                Radio(
                                  fillColor:
                                      MaterialStatePropertyAll(Colors.white),
                                  value: Breten_ciguenal[1],
                                  groupValue: opcion11,
                                  onChanged: (value) {
                                    group11(value);
                                  },
                                ),
                                Radio(
                                  fillColor:
                                      MaterialStatePropertyAll(Colors.white),
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
                                  fillColor:
                                      MaterialStatePropertyAll(Colors.white),
                                  value: Freten_ciguenal[0],
                                  groupValue: opcion13,
                                  onChanged: (value) {
                                    group13(value);
                                  },
                                ),
                                Radio(
                                  fillColor:
                                      MaterialStatePropertyAll(Colors.white),
                                  value: Freten_ciguenal[1],
                                  groupValue: opcion13,
                                  onChanged: (value) {
                                    group13(value);
                                  },
                                ),
                                Radio(
                                  fillColor:
                                      MaterialStatePropertyAll(Colors.white),
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
                                  fillColor:
                                      MaterialStatePropertyAll(Colors.white),
                                  value: Breten_ciguenal_goteo[0],
                                  groupValue: opcion12,
                                  onChanged: (value) {
                                    group12(value);
                                  },
                                ),
                                Radio(
                                  fillColor:
                                      MaterialStatePropertyAll(Colors.white),
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
                                  fillColor:
                                      MaterialStatePropertyAll(Colors.white),
                                  value: Freten_ciguenal_goteo[0],
                                  groupValue: opcion14,
                                  onChanged: (value) {
                                    group14(value);
                                  },
                                ),
                                Radio(
                                  fillColor:
                                      MaterialStatePropertyAll(Colors.white),
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
                                  fillColor:
                                      MaterialStatePropertyAll(Colors.white),
                                  value: Reten_arbol_e[0],
                                  groupValue: opcion15,
                                  onChanged: (value) {
                                    group15(value);
                                  },
                                ),
                                Radio(
                                  fillColor:
                                      MaterialStatePropertyAll(Colors.white),
                                  value: Reten_arbol_e[1],
                                  groupValue: opcion15,
                                  onChanged: (value) {
                                    group15(value);
                                  },
                                ),
                                Radio(
                                  fillColor:
                                      MaterialStatePropertyAll(Colors.white),
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
                                  fillColor:
                                      MaterialStatePropertyAll(Colors.white),
                                  value: Reten_arbol_a[0],
                                  groupValue: opcion17,
                                  onChanged: (value) {
                                    group17(value);
                                  },
                                ),
                                Radio(
                                  fillColor:
                                      MaterialStatePropertyAll(Colors.white),
                                  value: Reten_arbol_a[1],
                                  groupValue: opcion17,
                                  onChanged: (value) {
                                    group17(value);
                                  },
                                ),
                                Radio(
                                  fillColor:
                                      MaterialStatePropertyAll(Colors.white),
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
                                  fillColor:
                                      MaterialStatePropertyAll(Colors.white),
                                  value: Reten_arbol_e_goteo[0],
                                  groupValue: opcion16,
                                  onChanged: (value) {
                                    group16(value);
                                  },
                                ),
                                Radio(
                                  fillColor:
                                      MaterialStatePropertyAll(Colors.white),
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
                                  fillColor:
                                      MaterialStatePropertyAll(Colors.white),
                                  value: Reten_arbol_a_goteo[0],
                                  groupValue: opcion18,
                                  onChanged: (value) {
                                    group18(value);
                                  },
                                ),
                                Radio(
                                  fillColor:
                                      MaterialStatePropertyAll(Colors.white),
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
                  padding: const EdgeInsets.all(10),
                  child: TextField(
                    maxLines: 10,
                    minLines: 6,
                    decoration: InputDecoration(
                        hintText: 'Observaciones',
                        fillColor: Theme.of(context).secondaryHeaderColor,
                        filled: true,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15))),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            elevation: 5,
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
                          elevation: 5,
                          padding: EdgeInsets.symmetric(
                              horizontal: 35, vertical: 15),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15)),
                          backgroundColor: Color(0xFF95A6DC)),
                      onPressed: () {},
                      child: Text(
                        'Cancelar',
                        style: TextStyle(
                            fontSize: 16,
                            color: Theme.of(context).primaryColor),
                      ),
                    ),
                  ],
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
      width: 230,
      padding: EdgeInsets.only(left: 15, top: 5),
      child: Text(
        texto,
        style: TextStyle(color: Colors.white, fontSize: 18),
      ),
    );
  }
}
