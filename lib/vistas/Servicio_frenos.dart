import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Servicio_frenos extends StatefulWidget {
  const Servicio_frenos({super.key});

  @override
  State<Servicio_frenos> createState() => _Serviico_frenos();
}

// delanteras
List<String> Cbalatas_del = ['si', 'no'];
List<String> Porcentaje_del = ['15', '25', '50', '75']; //2

List<String> Fdisco = ['cambio', 'mal', 'bien'];
List<String> Frectificacion_izq = ['cambio', 'mal', 'bien'];
List<String> Frectificacion_der = ['cambio', 'mal', 'bien'];
List<String> Fcaliper = ['cambio', 'mal', 'bien'];
List<String> Fnormal_izq = ['cambio', 'mal', 'bien'];
List<String> Fnormal_der = ['cambio', 'mal', 'bien'];
List<String> Fgoteo_izq = ['cambio', 'mal', 'bien'];
List<String> Fgoteo_der = ['cambio', 'mal', 'bien']; //10

// traseras
List<String> Cbalatas_tras = ['si', 'no'];
List<String> Porcentaje_tras = ['15', '25', '50', '75']; //12

List<String> Bdisco = ['cambio', 'mal', 'bien'];
List<String> Btambor = ['cambio', 'mal', 'bien'];
List<String> Brectificacion_izq = ['cambio', 'mal', 'bien'];
List<String> Brectificacion_der = ['cambio', 'mal', 'bien'];
List<String> Bcaliper = ['cambio', 'mal', 'bien'];
List<String> Bcilindro = ['cambio', 'mal', 'bien'];
List<String> Bnormal_izq = ['cambio', 'mal', 'bien'];
List<String> Bnormal_der = ['cambio', 'mal', 'bien'];
List<String> Bgoteo_izq = ['cambio', 'mal', 'bien'];
List<String> Bgoteo_der = ['cambio', 'mal', 'bien']; //22

class _Serviico_frenos extends State<Servicio_frenos> {
  String? opcFron01;
  String? opcFron02;

  String? opcFron03;
  String? opcFron04;
  String? opcFron05;
  String? opcFron06;
  String? opcFron07;
  String? opcFron08;
  String? opcFron09;
  String? opcFron10;

  String? opcBack11;
  String? opcBack12;

  String? opcBack13;
  String? opcBack14;
  String? opcBack15;
  String? opcBack16;
  String? opcBack17;
  String? opcBack18;
  String? opcBack19;
  String? opcBack20;
  String? opcBack21;
  String? opcBack22;

  String? selectItem = "15";
  String? BselectItem = "15";

  void grupo01(values) {
    setState(() {
      opcFron01 = values.toString();
    });
  }

  void grupo02(values) {
    setState(() {
      opcFron02 = values.toString();
    });
  }

  void grupo03(values) {
    setState(() {
      opcFron03 = values.toString();
    });
  }

  void grupo04(values) {
    setState(() {
      opcFron04 = values.toString();
    });
  }

  void grupo05(values) {
    setState(() {
      opcFron05 = values.toString();
    });
  }

  void grupo06(values) {
    setState(() {
      opcFron06 = values.toString();
    });
  }

  void grupo07(values) {
    setState(() {
      opcFron07 = values.toString();
    });
  }

  void grupo08(values) {
    setState(() {
      opcFron08 = values.toString();
    });
  }

  void grupo09(values) {
    setState(() {
      opcFron09 = values.toString();
    });
  }

  void grupo10(values) {
    setState(() {
      opcFron10 = values.toString();
    });
  }

  void grupo11(values) {
    setState(() {
      opcBack11 = values.toString();
    });
  }

  void grupo12(values) {
    setState(() {
      opcBack12 = values.toString();
    });
  }

  void grupo13(values) {
    setState(() {
      opcBack13 = values.toString();
    });
  }

  void grupo14(values) {
    setState(() {
      opcBack14 = values.toString();
    });
  }

  void grupo15(values) {
    setState(() {
      opcBack15 = values.toString();
    });
  }

  void grupo16(values) {
    setState(() {
      opcBack16 = values.toString();
    });
  }

  void grupo17(values) {
    setState(() {
      opcBack17 = values.toString();
    });
  }

  void grupo18(values) {
    setState(() {
      opcBack18 = values.toString();
    });
  }

  void grupo19(values) {
    setState(() {
      opcBack19 = values.toString();
    });
  }

  void grupo20(values) {
    setState(() {
      opcBack20 = values.toString();
    });
  }

  void grupo21(values) {
    setState(() {
      opcBack21 = values.toString();
    });
  }

  void grupo22(values) {
    setState(() {
      opcBack22 = values.toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Cambio de: ',
                                style: TextStyle(color: Colors.white)),
                            Container(
                              child: Row(
                                children: [
                                  Text('Si',
                                      style: TextStyle(color: Colors.white)),
                                  SizedBox(width: 30),
                                  Text('No',
                                      style: TextStyle(color: Colors.white)),
                                  SizedBox(width: 10),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Texto_parte(texto: 'Balatas delanteras'),
                          Container(
                            padding: EdgeInsets.only(left: 5, right: 5),
                            height: 40,
                            width: 80,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.white),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: DropdownButton(
                              borderRadius: BorderRadius.circular(10),
                              menuMaxHeight: 200,
                              dropdownColor: Theme.of(context).primaryColor,
                              style: TextStyle(
                                  color: Colors.white38, fontSize: 16),
                              value: selectItem,
                              isExpanded: true,
                              items:
                                  Porcentaje_del.map<DropdownMenuItem<String>>(
                                      (String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              }).toList(),
                              onChanged: (item) {
                                setState(() => selectItem = item);
                              },
                            ),
                          ),
                          Container(
                            child: Row(
                              children: [
                                Radio(
                                  fillColor:
                                      MaterialStatePropertyAll(Colors.white),
                                  value: Cbalatas_del[0],
                                  groupValue: opcFron01,
                                  onChanged: (value) {
                                    grupo01(value);
                                  },
                                ),
                                Radio(
                                  fillColor:
                                      MaterialStatePropertyAll(Colors.white),
                                  value: Cbalatas_del[1],
                                  groupValue: opcFron01,
                                  onChanged: (value) {
                                    grupo01(value);
                                  },
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
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
                          Texto_parte(texto: 'Disco'),
                          Container(
                            child: Row(
                              children: [
                                Radio(
                                  fillColor:
                                      MaterialStatePropertyAll(Colors.white),
                                  value: Fdisco[0],
                                  groupValue: opcFron03,
                                  onChanged: (value) {
                                    grupo03(value);
                                  },
                                ),
                                Radio(
                                  fillColor:
                                      MaterialStatePropertyAll(Colors.white),
                                  value: Fdisco[1],
                                  groupValue: opcFron03,
                                  onChanged: (value) {
                                    grupo03(value);
                                  },
                                ),
                                Radio(
                                  fillColor:
                                      MaterialStatePropertyAll(Colors.white),
                                  value: Fdisco[2],
                                  groupValue: opcFron03,
                                  onChanged: (value) {
                                    grupo03(value);
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
                          Texto_parte(texto: 'Rectificación Izquierda'),
                          Container(
                            child: Row(
                              children: [
                                Container(
                                  child: Row(
                                    children: [
                                      Radio(
                                        fillColor: MaterialStatePropertyAll(
                                            Colors.white),
                                        value: Frectificacion_izq[0],
                                        groupValue: opcFron04,
                                        onChanged: (value) {
                                          grupo04(value);
                                        },
                                      ),
                                      Radio(
                                        fillColor: MaterialStatePropertyAll(
                                            Colors.white),
                                        value: Frectificacion_izq[1],
                                        groupValue: opcFron04,
                                        onChanged: (value) {
                                          grupo04(value);
                                        },
                                      ),
                                      Radio(
                                        fillColor: MaterialStatePropertyAll(
                                            Colors.white),
                                        value: Frectificacion_izq[2],
                                        groupValue: opcFron04,
                                        onChanged: (value) {
                                          grupo04(value);
                                        },
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Texto_parte(texto: 'Rectificación Derecha'),
                          Container(
                            child: Row(
                              children: [
                                Container(
                                  child: Row(
                                    children: [
                                      Radio(
                                        fillColor: MaterialStatePropertyAll(
                                            Colors.white),
                                        value: Frectificacion_der[0],
                                        groupValue: opcFron05,
                                        onChanged: (value) {
                                          grupo05(value);
                                        },
                                      ),
                                      Radio(
                                        fillColor: MaterialStatePropertyAll(
                                            Colors.white),
                                        value: Frectificacion_der[1],
                                        groupValue: opcFron05,
                                        onChanged: (value) {
                                          grupo05(value);
                                        },
                                      ),
                                      Radio(
                                        fillColor: MaterialStatePropertyAll(
                                            Colors.white),
                                        value: Frectificacion_der[2],
                                        groupValue: opcFron05,
                                        onChanged: (value) {
                                          grupo05(value);
                                        },
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Texto_parte(texto: 'Caliper'),
                          Container(
                            child: Row(
                              children: [
                                Container(
                                  child: Row(
                                    children: [
                                      Radio(
                                        fillColor: MaterialStatePropertyAll(
                                            Colors.white),
                                        value: Fcaliper[0],
                                        groupValue: opcFron06,
                                        onChanged: (value) {
                                          grupo06(value);
                                        },
                                      ),
                                      Radio(
                                        fillColor: MaterialStatePropertyAll(
                                            Colors.white),
                                        value: Fcaliper[1],
                                        groupValue: opcFron06,
                                        onChanged: (value) {
                                          grupo06(value);
                                        },
                                      ),
                                      Radio(
                                        fillColor: MaterialStatePropertyAll(
                                            Colors.white),
                                        value: Fcaliper[2],
                                        groupValue: opcFron06,
                                        onChanged: (value) {
                                          grupo06(value);
                                        },
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Texto_parte(texto: 'Normal Izquierda'),
                          Container(
                            child: Row(
                              children: [
                                Radio(
                                  fillColor:
                                      MaterialStatePropertyAll(Colors.white),
                                  value: Fnormal_izq[0],
                                  groupValue: opcFron07,
                                  onChanged: (value) {
                                    grupo07(value);
                                  },
                                ),
                                Radio(
                                  fillColor:
                                      MaterialStatePropertyAll(Colors.white),
                                  value: Fnormal_izq[1],
                                  groupValue: opcFron07,
                                  onChanged: (value) {
                                    grupo07(value);
                                  },
                                ),
                                Radio(
                                  fillColor:
                                      MaterialStatePropertyAll(Colors.white),
                                  value: Fnormal_izq[2],
                                  groupValue: opcFron07,
                                  onChanged: (value) {
                                    grupo07(value);
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
                          Texto_parte(texto: 'Normal Derecha'),
                          Container(
                            child: Row(
                              children: [
                                Radio(
                                  fillColor:
                                      MaterialStatePropertyAll(Colors.white),
                                  value: Fnormal_der[0],
                                  groupValue: opcFron08,
                                  onChanged: (value) {
                                    grupo08(value);
                                  },
                                ),
                                Radio(
                                  fillColor:
                                      MaterialStatePropertyAll(Colors.white),
                                  value: Fnormal_der[1],
                                  groupValue: opcFron08,
                                  onChanged: (value) {
                                    grupo08(value);
                                  },
                                ),
                                Radio(
                                  fillColor:
                                      MaterialStatePropertyAll(Colors.white),
                                  value: Fnormal_der[2],
                                  groupValue: opcFron08,
                                  onChanged: (value) {
                                    grupo08(value);
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
                          Texto_parte(texto: 'Goteo Izquierda'),
                          Container(
                            child: Row(
                              children: [
                                Radio(
                                  fillColor:
                                      MaterialStatePropertyAll(Colors.white),
                                  value: Fgoteo_izq[0],
                                  groupValue: opcFron09,
                                  onChanged: (value) {
                                    grupo09(value);
                                  },
                                ),
                                Radio(
                                  fillColor:
                                      MaterialStatePropertyAll(Colors.white),
                                  value: Fgoteo_izq[1],
                                  groupValue: opcFron09,
                                  onChanged: (value) {
                                    grupo09(value);
                                  },
                                ),
                                Radio(
                                  fillColor:
                                      MaterialStatePropertyAll(Colors.white),
                                  value: Fgoteo_izq[2],
                                  groupValue: opcFron09,
                                  onChanged: (value) {
                                    grupo09(value);
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
                          Texto_parte(texto: 'Goteo Derecha'),
                          Container(
                            child: Row(
                              children: [
                                Radio(
                                  fillColor:
                                      MaterialStatePropertyAll(Colors.white),
                                  value: Fgoteo_der[0],
                                  groupValue: opcFron10,
                                  onChanged: (value) {
                                    grupo10(value);
                                  },
                                ),
                                Radio(
                                  fillColor:
                                      MaterialStatePropertyAll(Colors.white),
                                  value: Fgoteo_der[1],
                                  groupValue: opcFron10,
                                  onChanged: (value) {
                                    grupo10(value);
                                  },
                                ),
                                Radio(
                                  fillColor:
                                      MaterialStatePropertyAll(Colors.white),
                                  value: Fgoteo_der[2],
                                  groupValue: opcFron10,
                                  onChanged: (value) {
                                    grupo10(value);
                                  },
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 15),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Cambio de: ',
                                style: TextStyle(color: Colors.white)),
                            Container(
                              child: Row(
                                children: [
                                  Text('Si',
                                      style: TextStyle(color: Colors.white)),
                                  SizedBox(width: 30),
                                  Text('No',
                                      style: TextStyle(color: Colors.white)),
                                  SizedBox(width: 10),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Texto_parte(texto: 'Balatas traseras'),
                          Container(
                            padding: EdgeInsets.only(left: 5, right: 5),
                            height: 40,
                            width: 80,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.white),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: DropdownButton(
                              borderRadius: BorderRadius.circular(10),
                              menuMaxHeight: 200,
                              dropdownColor: Theme.of(context).primaryColor,
                              style: TextStyle(
                                  color: Colors.white38, fontSize: 16),
                              value: BselectItem,
                              isExpanded: true,
                              items:
                                  Porcentaje_tras.map<DropdownMenuItem<String>>(
                                      (String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              }).toList(),
                              onChanged: (item) {
                                setState(() => BselectItem = item);
                              },
                            ),
                          ),
                          Container(
                            child: Row(
                              children: [
                                Container(
                                  child: Row(
                                    children: [
                                      Radio(
                                        fillColor: MaterialStatePropertyAll(
                                            Colors.white),
                                        value: Cbalatas_tras[0],
                                        groupValue: opcBack11,
                                        onChanged: (value) {
                                          grupo11(value);
                                        },
                                      ),
                                      Radio(
                                        fillColor: MaterialStatePropertyAll(
                                            Colors.white),
                                        value: Cbalatas_tras[1],
                                        groupValue: opcBack11,
                                        onChanged: (value) {
                                          grupo11(value);
                                        },
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
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
                          Texto_parte(texto: 'Disco'),
                          Container(
                            child: Row(
                              children: [
                                Radio(
                                  fillColor:
                                      MaterialStatePropertyAll(Colors.white),
                                  value: Bdisco[0],
                                  groupValue: opcBack13,
                                  onChanged: (value) {
                                    grupo13(value);
                                  },
                                ),
                                Radio(
                                  fillColor:
                                      MaterialStatePropertyAll(Colors.white),
                                  value: Bdisco[1],
                                  groupValue: opcBack13,
                                  onChanged: (value) {
                                    grupo13(value);
                                  },
                                ),
                                Radio(
                                  fillColor:
                                      MaterialStatePropertyAll(Colors.white),
                                  value: Bdisco[2],
                                  groupValue: opcBack13,
                                  onChanged: (value) {
                                    grupo13(value);
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
                          Texto_parte(texto: 'Tambor'),
                          Container(
                            child: Row(
                              children: [
                                Radio(
                                  fillColor:
                                      MaterialStatePropertyAll(Colors.white),
                                  value: Btambor[0],
                                  groupValue: opcBack14,
                                  onChanged: (value) {
                                    grupo14(value);
                                  },
                                ),
                                Radio(
                                  fillColor:
                                      MaterialStatePropertyAll(Colors.white),
                                  value: Btambor[1],
                                  groupValue: opcBack14,
                                  onChanged: (value) {
                                    grupo14(value);
                                  },
                                ),
                                Radio(
                                  fillColor:
                                      MaterialStatePropertyAll(Colors.white),
                                  value: Btambor[2],
                                  groupValue: opcBack14,
                                  onChanged: (value) {
                                    grupo14(value);
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
                          Texto_parte(texto: 'Rectificación Izquierda'),
                          Container(
                            child: Row(
                              children: [
                                Radio(
                                  fillColor:
                                      MaterialStatePropertyAll(Colors.white),
                                  value: Brectificacion_izq[0],
                                  groupValue: opcBack15,
                                  onChanged: (value) {
                                    grupo15(value);
                                  },
                                ),
                                Radio(
                                  fillColor:
                                      MaterialStatePropertyAll(Colors.white),
                                  value: Brectificacion_izq[1],
                                  groupValue: opcBack15,
                                  onChanged: (value) {
                                    grupo15(value);
                                  },
                                ),
                                Radio(
                                  fillColor:
                                      MaterialStatePropertyAll(Colors.white),
                                  value: Brectificacion_izq[2],
                                  groupValue: opcBack15,
                                  onChanged: (value) {
                                    grupo15(value);
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
                          Texto_parte(texto: 'Rectificación Derecha'),
                          Container(
                            child: Row(
                              children: [
                                Radio(
                                  fillColor:
                                      MaterialStatePropertyAll(Colors.white),
                                  value: Brectificacion_der[0],
                                  groupValue: opcBack16,
                                  onChanged: (value) {
                                    grupo16(value);
                                  },
                                ),
                                Radio(
                                  fillColor:
                                      MaterialStatePropertyAll(Colors.white),
                                  value: Brectificacion_der[1],
                                  groupValue: opcBack16,
                                  onChanged: (value) {
                                    grupo16(value);
                                  },
                                ),
                                Radio(
                                  fillColor:
                                      MaterialStatePropertyAll(Colors.white),
                                  value: Brectificacion_der[2],
                                  groupValue: opcBack16,
                                  onChanged: (value) {
                                    grupo16(value);
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
                          Texto_parte(texto: 'Caliper'),
                          Container(
                            child: Row(
                              children: [
                                Radio(
                                  fillColor:
                                      MaterialStatePropertyAll(Colors.white),
                                  value: Bcaliper[0],
                                  groupValue: opcBack17,
                                  onChanged: (value) {
                                    grupo17(value);
                                  },
                                ),
                                Radio(
                                  fillColor:
                                      MaterialStatePropertyAll(Colors.white),
                                  value: Bcaliper[1],
                                  groupValue: opcBack17,
                                  onChanged: (value) {
                                    grupo17(value);
                                  },
                                ),
                                Radio(
                                  fillColor:
                                      MaterialStatePropertyAll(Colors.white),
                                  value: Bcaliper[2],
                                  groupValue: opcBack17,
                                  onChanged: (value) {
                                    grupo17(value);
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
                          Texto_parte(texto: 'Cilindro'),
                          Container(
                            child: Row(
                              children: [
                                Radio(
                                  fillColor:
                                      MaterialStatePropertyAll(Colors.white),
                                  value: Bcilindro[0],
                                  groupValue: opcBack18,
                                  onChanged: (value) {
                                    grupo18(value);
                                  },
                                ),
                                Radio(
                                  fillColor:
                                      MaterialStatePropertyAll(Colors.white),
                                  value: Bcilindro[1],
                                  groupValue: opcBack18,
                                  onChanged: (value) {
                                    grupo18(value);
                                  },
                                ),
                                Radio(
                                  fillColor:
                                      MaterialStatePropertyAll(Colors.white),
                                  value: Bcilindro[2],
                                  groupValue: opcBack18,
                                  onChanged: (value) {
                                    grupo18(value);
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
                          Texto_parte(texto: 'Normal Izquierda'),
                          Container(
                            child: Row(
                              children: [
                                Radio(
                                  fillColor:
                                      MaterialStatePropertyAll(Colors.white),
                                  value: Bnormal_izq[0],
                                  groupValue: opcBack19,
                                  onChanged: (value) {
                                    grupo19(value);
                                  },
                                ),
                                Radio(
                                  fillColor:
                                      MaterialStatePropertyAll(Colors.white),
                                  value: Bnormal_izq[1],
                                  groupValue: opcBack19,
                                  onChanged: (value) {
                                    grupo19(value);
                                  },
                                ),
                                Radio(
                                  fillColor:
                                      MaterialStatePropertyAll(Colors.white),
                                  value: Bnormal_izq[2],
                                  groupValue: opcBack19,
                                  onChanged: (value) {
                                    grupo19(value);
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
                          Texto_parte(texto: 'Normal Derecha'),
                          Container(
                            child: Row(
                              children: [
                                Radio(
                                  fillColor:
                                      MaterialStatePropertyAll(Colors.white),
                                  value: Bnormal_der[0],
                                  groupValue: opcBack20,
                                  onChanged: (value) {
                                    grupo20(value);
                                  },
                                ),
                                Radio(
                                  fillColor:
                                      MaterialStatePropertyAll(Colors.white),
                                  value: Bnormal_der[1],
                                  groupValue: opcBack20,
                                  onChanged: (value) {
                                    grupo20(value);
                                  },
                                ),
                                Radio(
                                  fillColor:
                                      MaterialStatePropertyAll(Colors.white),
                                  value: Bnormal_der[2],
                                  groupValue: opcBack20,
                                  onChanged: (value) {
                                    grupo20(value);
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
                          Texto_parte(texto: 'Goteo Izquierda'),
                          Container(
                            child: Row(
                              children: [
                                Radio(
                                  fillColor:
                                      MaterialStatePropertyAll(Colors.white),
                                  value: Bgoteo_izq[0],
                                  groupValue: opcBack21,
                                  onChanged: (value) {
                                    grupo21(value);
                                  },
                                ),
                                Radio(
                                  fillColor:
                                      MaterialStatePropertyAll(Colors.white),
                                  value: Bgoteo_izq[1],
                                  groupValue: opcBack21,
                                  onChanged: (value) {
                                    grupo21(value);
                                  },
                                ),
                                Radio(
                                  fillColor:
                                      MaterialStatePropertyAll(Colors.white),
                                  value: Bgoteo_izq[2],
                                  groupValue: opcBack21,
                                  onChanged: (value) {
                                    grupo21(value);
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
                          Texto_parte(texto: 'Goteo Derecha'),
                          Container(
                            child: Row(
                              children: [
                                Radio(
                                  fillColor:
                                      MaterialStatePropertyAll(Colors.white),
                                  value: Bgoteo_der[0],
                                  groupValue: opcBack22,
                                  onChanged: (value) {
                                    grupo22(value);
                                  },
                                ),
                                Radio(
                                  fillColor:
                                      MaterialStatePropertyAll(Colors.white),
                                  value: Bgoteo_der[1],
                                  groupValue: opcBack22,
                                  onChanged: (value) {
                                    grupo22(value);
                                  },
                                ),
                                Radio(
                                  fillColor:
                                      MaterialStatePropertyAll(Colors.white),
                                  value: Bgoteo_der[2],
                                  groupValue: opcBack22,
                                  onChanged: (value) {
                                    grupo22(value);
                                  },
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10, bottom: 10),
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
      padding: EdgeInsets.only(left: 15),
      child: Text(
        texto,
        style: TextStyle(color: Colors.white, fontSize: 18),
      ),
    );
  }
}
