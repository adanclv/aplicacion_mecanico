import 'package:flutter/material.dart';

import '../controlador/Save_servicio.dart';

class Servicio_frenos extends StatefulWidget {
  final String noOrden;
  const Servicio_frenos({super.key, required this.noOrden});

  @override
  State<Servicio_frenos> createState() => _Servicio_frenos();
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

class _Servicio_frenos extends State<Servicio_frenos> {
  Save_servicio ss = Save_servicio();
  List<String> rSeleccionado = [];
  bool wDisabled = false;

  TextEditingController obserController = TextEditingController();
  String? selectItemF = '15';
  String? opcFron01;

  String? opcFron03;
  String? opcFron04;
  String? opcFron05;
  String? opcFron06;
  String? opcFron07;
  String? opcFron08;
  String? opcFron09;
  String? opcFron10;

  String? selectItemB = '15';
  String? opcBack11;

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

  @override
  void initState() {
    super.initState();
    if (ss.existeFrenos(widget.noOrden)) {
      wDisabled = true;
      rSeleccionado = ss.infoFrenos(widget.noOrden);
      llenado();
    }
  }

  void grupo01(values) {
    setState(() {
      if (wDisabled == false) {
        opcFron01 = values.toString();
      } else {}
    });
  }

  void grupo03(values) {
    setState(() {
      if (wDisabled == false) {
        opcFron03 = values.toString();
      } else {}
    });
  }

  void grupo04(values) {
    setState(() {
      if (wDisabled == false) {
        opcFron04 = values.toString();
      } else {}
    });
  }

  void grupo05(values) {
    setState(() {
      if (wDisabled == false) {
        opcFron05 = values.toString();
      } else {}
    });
  }

  void grupo06(values) {
    setState(() {
      if (wDisabled == false) {
        opcFron06 = values.toString();
      } else {}
    });
  }

  void grupo07(values) {
    setState(() {
      if (wDisabled == false) {
        opcFron07 = values.toString();
      } else {}
    });
  }

  void grupo08(values) {
    setState(() {
      if (wDisabled == false) {
        opcFron08 = values.toString();
      } else {}
    });
  }

  void grupo09(values) {
    setState(() {
      if (wDisabled == false) {
        opcFron09 = values.toString();
      } else {}
    });
  }

  void grupo10(values) {
    setState(() {
      if (wDisabled == false) {
        opcFron10 = values.toString();
      } else {}
    });
  }

  void grupo11(values) {
    setState(() {
      if (wDisabled == false) {
        opcBack11 = values.toString();
      } else {}
    });
  }

  void grupo13(values) {
    setState(() {
      if (wDisabled == false) {
        opcBack13 = values.toString();
      } else {}
    });
  }

  void grupo14(values) {
    setState(() {
      if (wDisabled == false) {
        opcBack14 = values.toString();
      } else {}
    });
  }

  void grupo15(values) {
    setState(() {
      if (wDisabled == false) {
        opcBack15 = values.toString();
      } else {}
    });
  }

  void grupo16(values) {
    setState(() {
      if (wDisabled == false) {
        opcBack16 = values.toString();
      } else {}
    });
  }

  void grupo17(values) {
    setState(() {
      if (wDisabled == false) {
        opcBack17 = values.toString();
      } else {}
    });
  }

  void grupo18(values) {
    setState(() {
      if (wDisabled == false) {
        opcBack18 = values.toString();
      } else {}
    });
  }

  void grupo19(values) {
    setState(() {
      if (wDisabled == false) {
        opcBack19 = values.toString();
      } else {}
    });
  }

  void grupo20(values) {
    setState(() {
      if (wDisabled == false) {
        opcBack20 = values.toString();
      } else {}
    });
  }

  void grupo21(values) {
    setState(() {
      if (wDisabled == false) {
        opcBack21 = values.toString();
      } else {}
    });
  }

  void grupo22(values) {
    setState(() {
      if (wDisabled == false) {
        opcBack22 = values.toString();
      } else {}
    });
  }

  void llenado() {
    setState(() {
      selectItemF = rSeleccionado[0];
      opcFron01 = rSeleccionado[1];
      opcFron03 = rSeleccionado[2];
      opcFron04 = rSeleccionado[3];
      opcFron05 = rSeleccionado[4];
      opcFron06 = rSeleccionado[5];
      opcFron07 = rSeleccionado[6];
      opcFron08 = rSeleccionado[7];
      opcFron09 = rSeleccionado[8];
      opcFron10 = rSeleccionado[9];
      selectItemB = rSeleccionado[10];
      opcBack11 = rSeleccionado[11];
      opcBack13 = rSeleccionado[12];
      opcBack14 = rSeleccionado[13];
      opcBack15 = rSeleccionado[14];
      opcBack16 = rSeleccionado[15];
      opcBack17 = rSeleccionado[16];
      opcBack18 = rSeleccionado[17];
      opcBack19 = rSeleccionado[18];
      opcBack20 = rSeleccionado[19];
      opcBack21 = rSeleccionado[20];
      opcBack22 = rSeleccionado[21];
      obserController.text = rSeleccionado[22];
    });
  }

  void actualizar() {
    wDisabled = true;
    rSeleccionado = ss.infoFrenos(widget.noOrden);
    llenado();
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
                              value: selectItemF,
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
                                setState(() => selectItemF = item);
                              },
                            ),
                          ),
                          Container(
                            child: Row(
                              children: [
                                Radio(
                                  fillColor: wDisabled == true
                                      ? MaterialStatePropertyAll(Colors.white38)
                                      : MaterialStatePropertyAll(Colors.white),
                                  value: Cbalatas_del[0],
                                  groupValue: opcFron01,
                                  onChanged: (value) {
                                    grupo01(value);
                                  },
                                ),
                                Radio(
                                  fillColor: wDisabled == true
                                      ? MaterialStatePropertyAll(Colors.white38)
                                      : MaterialStatePropertyAll(Colors.white),
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
                                  fillColor: wDisabled == true
                                      ? MaterialStatePropertyAll(Colors.white38)
                                      : MaterialStatePropertyAll(Colors.white),
                                  value: Fdisco[0],
                                  groupValue: opcFron03,
                                  onChanged: (value) {
                                    grupo03(value);
                                  },
                                ),
                                Radio(
                                  fillColor: wDisabled == true
                                      ? MaterialStatePropertyAll(Colors.white38)
                                      : MaterialStatePropertyAll(Colors.white),
                                  value: Fdisco[1],
                                  groupValue: opcFron03,
                                  onChanged: (value) {
                                    grupo03(value);
                                  },
                                ),
                                Radio(
                                  fillColor: wDisabled == true
                                      ? MaterialStatePropertyAll(Colors.white38)
                                      : MaterialStatePropertyAll(Colors.white),
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
                                        fillColor: wDisabled == true
                                            ? MaterialStatePropertyAll(
                                                Colors.white38)
                                            : MaterialStatePropertyAll(
                                                Colors.white),
                                        value: Frectificacion_izq[0],
                                        groupValue: opcFron04,
                                        onChanged: (value) {
                                          grupo04(value);
                                        },
                                      ),
                                      Radio(
                                        fillColor: wDisabled == true
                                            ? MaterialStatePropertyAll(
                                                Colors.white38)
                                            : MaterialStatePropertyAll(
                                                Colors.white),
                                        value: Frectificacion_izq[1],
                                        groupValue: opcFron04,
                                        onChanged: (value) {
                                          grupo04(value);
                                        },
                                      ),
                                      Radio(
                                        fillColor: wDisabled == true
                                            ? MaterialStatePropertyAll(
                                                Colors.white38)
                                            : MaterialStatePropertyAll(
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
                                        fillColor: wDisabled == true
                                            ? MaterialStatePropertyAll(
                                                Colors.white38)
                                            : MaterialStatePropertyAll(
                                                Colors.white),
                                        value: Frectificacion_der[0],
                                        groupValue: opcFron05,
                                        onChanged: (value) {
                                          grupo05(value);
                                        },
                                      ),
                                      Radio(
                                        fillColor: wDisabled == true
                                            ? MaterialStatePropertyAll(
                                                Colors.white38)
                                            : MaterialStatePropertyAll(
                                                Colors.white),
                                        value: Frectificacion_der[1],
                                        groupValue: opcFron05,
                                        onChanged: (value) {
                                          grupo05(value);
                                        },
                                      ),
                                      Radio(
                                        fillColor: wDisabled == true
                                            ? MaterialStatePropertyAll(
                                                Colors.white38)
                                            : MaterialStatePropertyAll(
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
                                        fillColor: wDisabled == true
                                            ? MaterialStatePropertyAll(
                                                Colors.white38)
                                            : MaterialStatePropertyAll(
                                                Colors.white),
                                        value: Fcaliper[0],
                                        groupValue: opcFron06,
                                        onChanged: (value) {
                                          grupo06(value);
                                        },
                                      ),
                                      Radio(
                                        fillColor: wDisabled == true
                                            ? MaterialStatePropertyAll(
                                                Colors.white38)
                                            : MaterialStatePropertyAll(
                                                Colors.white),
                                        value: Fcaliper[1],
                                        groupValue: opcFron06,
                                        onChanged: (value) {
                                          grupo06(value);
                                        },
                                      ),
                                      Radio(
                                        fillColor: wDisabled == true
                                            ? MaterialStatePropertyAll(
                                                Colors.white38)
                                            : MaterialStatePropertyAll(
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
                                  fillColor: wDisabled == true
                                      ? MaterialStatePropertyAll(Colors.white38)
                                      : MaterialStatePropertyAll(Colors.white),
                                  value: Fnormal_izq[0],
                                  groupValue: opcFron07,
                                  onChanged: (value) {
                                    grupo07(value);
                                  },
                                ),
                                Radio(
                                  fillColor: wDisabled == true
                                      ? MaterialStatePropertyAll(Colors.white38)
                                      : MaterialStatePropertyAll(Colors.white),
                                  value: Fnormal_izq[1],
                                  groupValue: opcFron07,
                                  onChanged: (value) {
                                    grupo07(value);
                                  },
                                ),
                                Radio(
                                  fillColor: wDisabled == true
                                      ? MaterialStatePropertyAll(Colors.white38)
                                      : MaterialStatePropertyAll(Colors.white),
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
                                  fillColor: wDisabled == true
                                      ? MaterialStatePropertyAll(Colors.white38)
                                      : MaterialStatePropertyAll(Colors.white),
                                  value: Fnormal_der[0],
                                  groupValue: opcFron08,
                                  onChanged: (value) {
                                    grupo08(value);
                                  },
                                ),
                                Radio(
                                  fillColor: wDisabled == true
                                      ? MaterialStatePropertyAll(Colors.white38)
                                      : MaterialStatePropertyAll(Colors.white),
                                  value: Fnormal_der[1],
                                  groupValue: opcFron08,
                                  onChanged: (value) {
                                    grupo08(value);
                                  },
                                ),
                                Radio(
                                  fillColor: wDisabled == true
                                      ? MaterialStatePropertyAll(Colors.white38)
                                      : MaterialStatePropertyAll(Colors.white),
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
                                  fillColor: wDisabled == true
                                      ? MaterialStatePropertyAll(Colors.white38)
                                      : MaterialStatePropertyAll(Colors.white),
                                  value: Fgoteo_izq[0],
                                  groupValue: opcFron09,
                                  onChanged: (value) {
                                    grupo09(value);
                                  },
                                ),
                                Radio(
                                  fillColor: wDisabled == true
                                      ? MaterialStatePropertyAll(Colors.white38)
                                      : MaterialStatePropertyAll(Colors.white),
                                  value: Fgoteo_izq[1],
                                  groupValue: opcFron09,
                                  onChanged: (value) {
                                    grupo09(value);
                                  },
                                ),
                                Radio(
                                  fillColor: wDisabled == true
                                      ? MaterialStatePropertyAll(Colors.white38)
                                      : MaterialStatePropertyAll(Colors.white),
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
                                  fillColor: wDisabled == true
                                      ? MaterialStatePropertyAll(Colors.white38)
                                      : MaterialStatePropertyAll(Colors.white),
                                  value: Fgoteo_der[0],
                                  groupValue: opcFron10,
                                  onChanged: (value) {
                                    grupo10(value);
                                  },
                                ),
                                Radio(
                                  fillColor: wDisabled == true
                                      ? MaterialStatePropertyAll(Colors.white38)
                                      : MaterialStatePropertyAll(Colors.white),
                                  value: Fgoteo_der[1],
                                  groupValue: opcFron10,
                                  onChanged: (value) {
                                    grupo10(value);
                                  },
                                ),
                                Radio(
                                  fillColor: wDisabled == true
                                      ? MaterialStatePropertyAll(Colors.white38)
                                      : MaterialStatePropertyAll(Colors.white),
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
                              value: selectItemB,
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
                                setState(() => selectItemB = item);
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
                                        fillColor: wDisabled == true
                                            ? MaterialStatePropertyAll(
                                                Colors.white38)
                                            : MaterialStatePropertyAll(
                                                Colors.white),
                                        value: Cbalatas_tras[0],
                                        groupValue: opcBack11,
                                        onChanged: (value) {
                                          grupo11(value);
                                        },
                                      ),
                                      Radio(
                                        fillColor: wDisabled == true
                                            ? MaterialStatePropertyAll(
                                                Colors.white38)
                                            : MaterialStatePropertyAll(
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
                                  fillColor: wDisabled == true
                                      ? MaterialStatePropertyAll(Colors.white38)
                                      : MaterialStatePropertyAll(Colors.white),
                                  value: Bdisco[0],
                                  groupValue: opcBack13,
                                  onChanged: (value) {
                                    grupo13(value);
                                  },
                                ),
                                Radio(
                                  fillColor: wDisabled == true
                                      ? MaterialStatePropertyAll(Colors.white38)
                                      : MaterialStatePropertyAll(Colors.white),
                                  value: Bdisco[1],
                                  groupValue: opcBack13,
                                  onChanged: (value) {
                                    grupo13(value);
                                  },
                                ),
                                Radio(
                                  fillColor: wDisabled == true
                                      ? MaterialStatePropertyAll(Colors.white38)
                                      : MaterialStatePropertyAll(Colors.white),
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
                                  fillColor: wDisabled == true
                                      ? MaterialStatePropertyAll(Colors.white38)
                                      : MaterialStatePropertyAll(Colors.white),
                                  value: Btambor[0],
                                  groupValue: opcBack14,
                                  onChanged: (value) {
                                    grupo14(value);
                                  },
                                ),
                                Radio(
                                  fillColor: wDisabled == true
                                      ? MaterialStatePropertyAll(Colors.white38)
                                      : MaterialStatePropertyAll(Colors.white),
                                  value: Btambor[1],
                                  groupValue: opcBack14,
                                  onChanged: (value) {
                                    grupo14(value);
                                  },
                                ),
                                Radio(
                                  fillColor: wDisabled == true
                                      ? MaterialStatePropertyAll(Colors.white38)
                                      : MaterialStatePropertyAll(Colors.white),
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
                                  fillColor: wDisabled == true
                                      ? MaterialStatePropertyAll(Colors.white38)
                                      : MaterialStatePropertyAll(Colors.white),
                                  value: Brectificacion_izq[0],
                                  groupValue: opcBack15,
                                  onChanged: (value) {
                                    grupo15(value);
                                  },
                                ),
                                Radio(
                                  fillColor: wDisabled == true
                                      ? MaterialStatePropertyAll(Colors.white38)
                                      : MaterialStatePropertyAll(Colors.white),
                                  value: Brectificacion_izq[1],
                                  groupValue: opcBack15,
                                  onChanged: (value) {
                                    grupo15(value);
                                  },
                                ),
                                Radio(
                                  fillColor: wDisabled == true
                                      ? MaterialStatePropertyAll(Colors.white38)
                                      : MaterialStatePropertyAll(Colors.white),
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
                                  fillColor: wDisabled == true
                                      ? MaterialStatePropertyAll(Colors.white38)
                                      : MaterialStatePropertyAll(Colors.white),
                                  value: Brectificacion_der[0],
                                  groupValue: opcBack16,
                                  onChanged: (value) {
                                    grupo16(value);
                                  },
                                ),
                                Radio(
                                  fillColor: wDisabled == true
                                      ? MaterialStatePropertyAll(Colors.white38)
                                      : MaterialStatePropertyAll(Colors.white),
                                  value: Brectificacion_der[1],
                                  groupValue: opcBack16,
                                  onChanged: (value) {
                                    grupo16(value);
                                  },
                                ),
                                Radio(
                                  fillColor: wDisabled == true
                                      ? MaterialStatePropertyAll(Colors.white38)
                                      : MaterialStatePropertyAll(Colors.white),
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
                                  fillColor: wDisabled == true
                                      ? MaterialStatePropertyAll(Colors.white38)
                                      : MaterialStatePropertyAll(Colors.white),
                                  value: Bcaliper[0],
                                  groupValue: opcBack17,
                                  onChanged: (value) {
                                    grupo17(value);
                                  },
                                ),
                                Radio(
                                  fillColor: wDisabled == true
                                      ? MaterialStatePropertyAll(Colors.white38)
                                      : MaterialStatePropertyAll(Colors.white),
                                  value: Bcaliper[1],
                                  groupValue: opcBack17,
                                  onChanged: (value) {
                                    grupo17(value);
                                  },
                                ),
                                Radio(
                                  fillColor: wDisabled == true
                                      ? MaterialStatePropertyAll(Colors.white38)
                                      : MaterialStatePropertyAll(Colors.white),
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
                                  fillColor: wDisabled == true
                                      ? MaterialStatePropertyAll(Colors.white38)
                                      : MaterialStatePropertyAll(Colors.white),
                                  value: Bcilindro[0],
                                  groupValue: opcBack18,
                                  onChanged: (value) {
                                    grupo18(value);
                                  },
                                ),
                                Radio(
                                  fillColor: wDisabled == true
                                      ? MaterialStatePropertyAll(Colors.white38)
                                      : MaterialStatePropertyAll(Colors.white),
                                  value: Bcilindro[1],
                                  groupValue: opcBack18,
                                  onChanged: (value) {
                                    grupo18(value);
                                  },
                                ),
                                Radio(
                                  fillColor: wDisabled == true
                                      ? MaterialStatePropertyAll(Colors.white38)
                                      : MaterialStatePropertyAll(Colors.white),
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
                                  fillColor: wDisabled == true
                                      ? MaterialStatePropertyAll(Colors.white38)
                                      : MaterialStatePropertyAll(Colors.white),
                                  value: Bnormal_izq[0],
                                  groupValue: opcBack19,
                                  onChanged: (value) {
                                    grupo19(value);
                                  },
                                ),
                                Radio(
                                  fillColor: wDisabled == true
                                      ? MaterialStatePropertyAll(Colors.white38)
                                      : MaterialStatePropertyAll(Colors.white),
                                  value: Bnormal_izq[1],
                                  groupValue: opcBack19,
                                  onChanged: (value) {
                                    grupo19(value);
                                  },
                                ),
                                Radio(
                                  fillColor: wDisabled == true
                                      ? MaterialStatePropertyAll(Colors.white38)
                                      : MaterialStatePropertyAll(Colors.white),
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
                                  fillColor: wDisabled == true
                                      ? MaterialStatePropertyAll(Colors.white38)
                                      : MaterialStatePropertyAll(Colors.white),
                                  value: Bnormal_der[0],
                                  groupValue: opcBack20,
                                  onChanged: (value) {
                                    grupo20(value);
                                  },
                                ),
                                Radio(
                                  fillColor: wDisabled == true
                                      ? MaterialStatePropertyAll(Colors.white38)
                                      : MaterialStatePropertyAll(Colors.white),
                                  value: Bnormal_der[1],
                                  groupValue: opcBack20,
                                  onChanged: (value) {
                                    grupo20(value);
                                  },
                                ),
                                Radio(
                                  fillColor: wDisabled == true
                                      ? MaterialStatePropertyAll(Colors.white38)
                                      : MaterialStatePropertyAll(Colors.white),
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
                                  fillColor: wDisabled == true
                                      ? MaterialStatePropertyAll(Colors.white38)
                                      : MaterialStatePropertyAll(Colors.white),
                                  value: Bgoteo_izq[0],
                                  groupValue: opcBack21,
                                  onChanged: (value) {
                                    grupo21(value);
                                  },
                                ),
                                Radio(
                                  fillColor: wDisabled == true
                                      ? MaterialStatePropertyAll(Colors.white38)
                                      : MaterialStatePropertyAll(Colors.white),
                                  value: Bgoteo_izq[1],
                                  groupValue: opcBack21,
                                  onChanged: (value) {
                                    grupo21(value);
                                  },
                                ),
                                Radio(
                                  fillColor: wDisabled == true
                                      ? MaterialStatePropertyAll(Colors.white38)
                                      : MaterialStatePropertyAll(Colors.white),
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
                                  fillColor: wDisabled == true
                                      ? MaterialStatePropertyAll(Colors.white38)
                                      : MaterialStatePropertyAll(Colors.white),
                                  value: Bgoteo_der[0],
                                  groupValue: opcBack22,
                                  onChanged: (value) {
                                    grupo22(value);
                                  },
                                ),
                                Radio(
                                  fillColor: wDisabled == true
                                      ? MaterialStatePropertyAll(Colors.white38)
                                      : MaterialStatePropertyAll(Colors.white),
                                  value: Bgoteo_der[1],
                                  groupValue: opcBack22,
                                  onChanged: (value) {
                                    grupo22(value);
                                  },
                                ),
                                Radio(
                                  fillColor: wDisabled == true
                                      ? MaterialStatePropertyAll(Colors.white38)
                                      : MaterialStatePropertyAll(Colors.white),
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
                      ss.addFrenos(
                          widget.noOrden,
                          selectItemF!,
                          opcFron01!,
                          opcFron03!,
                          opcFron04!,
                          opcFron05!,
                          opcFron06!,
                          opcFron07!,
                          opcFron08!,
                          opcFron09!,
                          opcFron10!,
                          selectItemB!,
                          opcBack11!,
                          opcBack13!,
                          opcBack14!,
                          opcBack15!,
                          opcBack16!,
                          opcBack17!,
                          opcBack18!,
                          opcBack19!,
                          opcBack20!,
                          opcBack21!,
                          opcBack22!,
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
      padding: EdgeInsets.only(left: 15),
      child: Text(
        texto,
        style: TextStyle(color: Colors.white, fontSize: 18),
      ),
    );
  }
}
