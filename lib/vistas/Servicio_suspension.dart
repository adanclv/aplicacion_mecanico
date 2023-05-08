import 'package:aplicacion_mecanico/controlador/Save_servicio.dart';
import 'package:flutter/material.dart';

class Servicio_suspension extends StatefulWidget {
  final String noOrden;
  const Servicio_suspension({super.key, required this.noOrden});

  @override
  State<Servicio_suspension> createState() => _Servicio_suspension();
}

List<String> Lterminal_int = ['cambio', 'mal', 'bien'];
List<String> Lterminal_ext = ['cambio', 'mal', 'bien'];
List<String> Lrotula_inf = ['cambio', 'mal', 'bien'];
List<String> Lrotula_sup = ['cambio', 'mal', 'bien'];
List<String> Lamortiguador_del = ['cambio', 'mal', 'bien'];
List<String> Lamortiguador_tras = ['cambio', 'mal', 'bien'];
List<String> Lhorquilla = ['cambio', 'mal', 'bien'];
List<String> Lhules = ['cambio', 'mal', 'bien'];
List<String> Ltornillos = ['cambio', 'mal', 'bien'];

List<String> Rterminal_int = ['cambio', 'mal', 'bien'];
List<String> Rterminal_ext = ['cambio', 'mal', 'bien'];
List<String> Rrotula_inf = ['cambio', 'mal', 'bien'];
List<String> Rrotula_sup = ['cambio', 'mal', 'bien'];

List<String> Fgomas_amort = ['cambio', 'mal', 'bien'];
List<String> Fbujes = ['cambio', 'mal', 'bien'];

List<String> Bgomas_amort = ['cambio', 'mal', 'bien'];
List<String> Bbujes = ['cambio', 'mal', 'bien'];

class _Servicio_suspension extends State<Servicio_suspension> {
  Save_servicio ss = Save_servicio();
  TextEditingController obserController = TextEditingController();
  List<String> rSeleccionado = [];
  bool wDisabled = false;

  String? opcIzq01;
  String? opcIzq02;
  String? opcIzq03;
  String? opcIzq04;
  String? opcIzq05;
  String? opcIzq06;
  String? opcIzq07;
  String? opcIzq08;
  String? opcIzq09;

  String? opcDer10;
  String? opcDer11;
  String? opcDer12;
  String? opcDer13;

  String? opcDel14;
  String? opcDel15;

  String? opcTras16;
  String? opcTras17;

  @override
  void initState() {
    super.initState();
    if (ss.existeSuspension(widget.noOrden)) {
      wDisabled = true;
      rSeleccionado = ss.infoSuspension(widget.noOrden);
      llenado();
    }
  }

  void group01(values) {
    setState(() {
      if (wDisabled == false) {
        opcIzq01 = values.toString();
      } else {}
    });
  }

  void group02(values) {
    setState(() {
      if (wDisabled == false) {
        opcIzq02 = values.toString();
      } else {}
    });
  }

  void group03(values) {
    setState(() {
      if (wDisabled == false) {
        opcIzq03 = values.toString();
      } else {}
    });
  }

  void group04(values) {
    setState(() {
      if (wDisabled == false) {
        opcIzq04 = values.toString();
      } else {}
    });
  }

  void group05(values) {
    setState(() {
      if (wDisabled == false) {
        opcIzq05 = values.toString();
      } else {}
    });
  }

  void group06(values) {
    setState(() {
      if (wDisabled == false) {
        opcIzq06 = values.toString();
      } else {}
    });
  }

  void group07(values) {
    setState(() {
      if (wDisabled == false) {
        opcIzq07 = values.toString();
      } else {}
    });
  }

  void group08(values) {
    setState(() {
      if (wDisabled == false) {
        opcIzq08 = values.toString();
      } else {}
    });
  }

  void group09(values) {
    setState(() {
      if (wDisabled == false) {
        opcIzq09 = values.toString();
      } else {}
    });
  }

  void group10(values) {
    setState(() {
      if (wDisabled == false) {
        opcDer10 = values.toString();
      } else {}
    });
  }

  void group11(values) {
    setState(() {
      if (wDisabled == false) {
        opcDer11 = values.toString();
      } else {}
    });
  }

  void group12(values) {
    setState(() {
      if (wDisabled == false) {
        opcDer12 = values.toString();
      } else {}
    });
  }

  void group13(values) {
    setState(() {
      if (wDisabled == false) {
        opcDer13 = values.toString();
      } else {}
    });
  }

  void group14(values) {
    setState(() {
      if (wDisabled == false) {
        opcDel14 = values.toString();
      } else {}
    });
  }

  void group15(values) {
    setState(() {
      if (wDisabled == false) {
        opcDel15 = values.toString();
      } else {}
    });
  }

  void group16(values) {
    setState(() {
      if (wDisabled == false) {
        opcTras16 = values.toString();
      } else {}
    });
  }

  void group17(values) {
    setState(() {
      if (wDisabled == false) {
        opcTras17 = values.toString();
      } else {}
    });
  }

  void llenado() {
    setState(() {
      opcIzq01 = rSeleccionado[0];
      opcIzq02 = rSeleccionado[1];
      opcIzq03 = rSeleccionado[2];
      opcIzq04 = rSeleccionado[3];
      opcIzq05 = rSeleccionado[4];
      opcIzq06 = rSeleccionado[5];
      opcIzq07 = rSeleccionado[6];
      opcIzq08 = rSeleccionado[7];
      opcIzq09 = rSeleccionado[8];

      opcDer10 = rSeleccionado[9];
      opcDer11 = rSeleccionado[10];
      opcDer12 = rSeleccionado[11];
      opcDer13 = rSeleccionado[12];

      opcDel14 = rSeleccionado[13];
      opcDel15 = rSeleccionado[14];

      opcTras16 = rSeleccionado[15];
      opcTras17 = rSeleccionado[16];

      obserController.text = rSeleccionado[17];
    });
  }

  void actualizar() {
    wDisabled = true;
    rSeleccionado = ss.infoSuspension(widget.noOrden);
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
                    Text('Cambio', style: TextStyle(color: Colors.white)),
                    SizedBox(width: 20),
                    Text('f/s   ', style: TextStyle(color: Colors.white)),
                    SizedBox(width: 20),
                    Text('Bien', style: TextStyle(color: Colors.white)),
                    SizedBox(width: 10),
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
                          'Izquierda',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 28,
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Texto_parte(texto: 'Terminal Interior'),
                          Container(
                            child: Row(
                              children: [
                                Radio(
                                  fillColor: wDisabled == true
                                      ? MaterialStatePropertyAll(Colors.white38)
                                      : MaterialStatePropertyAll(Colors.white),
                                  value: Lterminal_int[0],
                                  groupValue: opcIzq01,
                                  onChanged: (value) {
                                    group01(value);
                                  },
                                ),
                                Radio(
                                  fillColor: wDisabled == true
                                      ? MaterialStatePropertyAll(Colors.white38)
                                      : MaterialStatePropertyAll(Colors.white),
                                  value: Lterminal_int[1],
                                  groupValue: opcIzq01,
                                  onChanged: (value) {
                                    group01(value);
                                  },
                                ),
                                Radio(
                                  fillColor: wDisabled == true
                                      ? MaterialStatePropertyAll(Colors.white38)
                                      : MaterialStatePropertyAll(Colors.white),
                                  value: Lterminal_int[2],
                                  groupValue: opcIzq01,
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
                          Texto_parte(texto: 'Terminal Exterior'),
                          Container(
                            child: Row(
                              children: [
                                Radio(
                                  fillColor: wDisabled == true
                                      ? MaterialStatePropertyAll(Colors.white38)
                                      : MaterialStatePropertyAll(Colors.white),
                                  value: Lterminal_ext[0],
                                  groupValue: opcIzq02,
                                  onChanged: (value) {
                                    group02(value);
                                  },
                                ),
                                Radio(
                                  fillColor: wDisabled == true
                                      ? MaterialStatePropertyAll(Colors.white38)
                                      : MaterialStatePropertyAll(Colors.white),
                                  value: Lterminal_ext[1],
                                  groupValue: opcIzq02,
                                  onChanged: (value) {
                                    group02(value);
                                  },
                                ),
                                Radio(
                                  fillColor: wDisabled == true
                                      ? MaterialStatePropertyAll(Colors.white38)
                                      : MaterialStatePropertyAll(Colors.white),
                                  value: Lterminal_ext[2],
                                  groupValue: opcIzq02,
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
                          Texto_parte(texto: 'Rotula Inferior'),
                          Container(
                            child: Row(
                              children: [
                                Radio(
                                  fillColor: wDisabled == true
                                      ? MaterialStatePropertyAll(Colors.white38)
                                      : MaterialStatePropertyAll(Colors.white),
                                  value: Lrotula_inf[0],
                                  groupValue: opcIzq03,
                                  onChanged: (value) {
                                    group03(value);
                                  },
                                ),
                                Radio(
                                  fillColor: wDisabled == true
                                      ? MaterialStatePropertyAll(Colors.white38)
                                      : MaterialStatePropertyAll(Colors.white),
                                  value: Lrotula_inf[1],
                                  groupValue: opcIzq03,
                                  onChanged: (value) {
                                    group03(value);
                                  },
                                ),
                                Radio(
                                  fillColor: wDisabled == true
                                      ? MaterialStatePropertyAll(Colors.white38)
                                      : MaterialStatePropertyAll(Colors.white),
                                  value: Lrotula_inf[2],
                                  groupValue: opcIzq03,
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
                          Texto_parte(texto: 'Rotula Superior'),
                          Container(
                            child: Row(
                              children: [
                                Radio(
                                  fillColor: wDisabled == true
                                      ? MaterialStatePropertyAll(Colors.white38)
                                      : MaterialStatePropertyAll(Colors.white),
                                  value: Lrotula_sup[0],
                                  groupValue: opcIzq04,
                                  onChanged: (value) {
                                    group04(value);
                                  },
                                ),
                                Radio(
                                  fillColor: wDisabled == true
                                      ? MaterialStatePropertyAll(Colors.white38)
                                      : MaterialStatePropertyAll(Colors.white),
                                  value: Lrotula_sup[1],
                                  groupValue: opcIzq04,
                                  onChanged: (value) {
                                    group04(value);
                                  },
                                ),
                                Radio(
                                  fillColor: wDisabled == true
                                      ? MaterialStatePropertyAll(Colors.white38)
                                      : MaterialStatePropertyAll(Colors.white),
                                  value: Lrotula_sup[2],
                                  groupValue: opcIzq04,
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
                          Texto_parte(texto: 'Amortiguadores Delanteros'),
                          Container(
                            child: Row(
                              children: [
                                Radio(
                                  fillColor: wDisabled == true
                                      ? MaterialStatePropertyAll(Colors.white38)
                                      : MaterialStatePropertyAll(Colors.white),
                                  value: Lamortiguador_del[0],
                                  groupValue: opcIzq05,
                                  onChanged: (value) {
                                    group05(value);
                                  },
                                ),
                                Radio(
                                  fillColor: wDisabled == true
                                      ? MaterialStatePropertyAll(Colors.white38)
                                      : MaterialStatePropertyAll(Colors.white),
                                  value: Lamortiguador_del[1],
                                  groupValue: opcIzq05,
                                  onChanged: (value) {
                                    group05(value);
                                  },
                                ),
                                Radio(
                                  fillColor: wDisabled == true
                                      ? MaterialStatePropertyAll(Colors.white38)
                                      : MaterialStatePropertyAll(Colors.white),
                                  value: Lamortiguador_del[2],
                                  groupValue: opcIzq05,
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
                          Texto_parte(texto: 'Amortiguadores Traseros'),
                          Container(
                            child: Row(
                              children: [
                                Radio(
                                  fillColor: wDisabled == true
                                      ? MaterialStatePropertyAll(Colors.white38)
                                      : MaterialStatePropertyAll(Colors.white),
                                  value: Lamortiguador_tras[0],
                                  groupValue: opcIzq06,
                                  onChanged: (value) {
                                    group06(value);
                                  },
                                ),
                                Radio(
                                  fillColor: wDisabled == true
                                      ? MaterialStatePropertyAll(Colors.white38)
                                      : MaterialStatePropertyAll(Colors.white),
                                  value: Lamortiguador_tras[1],
                                  groupValue: opcIzq06,
                                  onChanged: (value) {
                                    group06(value);
                                  },
                                ),
                                Radio(
                                  fillColor: wDisabled == true
                                      ? MaterialStatePropertyAll(Colors.white38)
                                      : MaterialStatePropertyAll(Colors.white),
                                  value: Lamortiguador_tras[2],
                                  groupValue: opcIzq06,
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
                          Texto_parte(texto: 'Horquillas'),
                          Container(
                            child: Row(
                              children: [
                                Radio(
                                  fillColor: wDisabled == true
                                      ? MaterialStatePropertyAll(Colors.white38)
                                      : MaterialStatePropertyAll(Colors.white),
                                  value: Lhorquilla[0],
                                  groupValue: opcIzq07,
                                  onChanged: (value) {
                                    group07(value);
                                  },
                                ),
                                Radio(
                                  fillColor: wDisabled == true
                                      ? MaterialStatePropertyAll(Colors.white38)
                                      : MaterialStatePropertyAll(Colors.white),
                                  value: Lhorquilla[1],
                                  groupValue: opcIzq07,
                                  onChanged: (value) {
                                    group07(value);
                                  },
                                ),
                                Radio(
                                  fillColor: wDisabled == true
                                      ? MaterialStatePropertyAll(Colors.white38)
                                      : MaterialStatePropertyAll(Colors.white),
                                  value: Lhorquilla[2],
                                  groupValue: opcIzq07,
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
                          Texto_parte(texto: 'Hules de la Barra Est'),
                          Container(
                            child: Row(
                              children: [
                                Radio(
                                  fillColor: wDisabled == true
                                      ? MaterialStatePropertyAll(Colors.white38)
                                      : MaterialStatePropertyAll(Colors.white),
                                  value: Lhules[0],
                                  groupValue: opcIzq08,
                                  onChanged: (value) {
                                    group08(value);
                                  },
                                ),
                                Radio(
                                  fillColor: wDisabled == true
                                      ? MaterialStatePropertyAll(Colors.white38)
                                      : MaterialStatePropertyAll(Colors.white),
                                  value: Lhules[1],
                                  groupValue: opcIzq08,
                                  onChanged: (value) {
                                    group08(value);
                                  },
                                ),
                                Radio(
                                  fillColor: wDisabled == true
                                      ? MaterialStatePropertyAll(Colors.white38)
                                      : MaterialStatePropertyAll(Colors.white),
                                  value: Lhules[2],
                                  groupValue: opcIzq08,
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
                          Texto_parte(texto: 'Tornillos de la Barra Est'),
                          Container(
                            child: Row(
                              children: [
                                Radio(
                                  fillColor: wDisabled == true
                                      ? MaterialStatePropertyAll(Colors.white38)
                                      : MaterialStatePropertyAll(Colors.white),
                                  value: Ltornillos[0],
                                  groupValue: opcIzq09,
                                  onChanged: (value) {
                                    group09(value);
                                  },
                                ),
                                Radio(
                                  fillColor: wDisabled == true
                                      ? MaterialStatePropertyAll(Colors.white38)
                                      : MaterialStatePropertyAll(Colors.white),
                                  value: Ltornillos[1],
                                  groupValue: opcIzq09,
                                  onChanged: (value) {
                                    group09(value);
                                  },
                                ),
                                Radio(
                                  fillColor: wDisabled == true
                                      ? MaterialStatePropertyAll(Colors.white38)
                                      : MaterialStatePropertyAll(Colors.white),
                                  value: Ltornillos[2],
                                  groupValue: opcIzq09,
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
                        padding: const EdgeInsets.only(left: 5),
                        child: Text(
                          'Derecha',
                          style: TextStyle(color: Colors.white, fontSize: 28),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Texto_parte(texto: 'Terminal Interior'),
                          Container(
                            child: Row(
                              children: [
                                Radio(
                                  fillColor: wDisabled == true
                                      ? MaterialStatePropertyAll(Colors.white38)
                                      : MaterialStatePropertyAll(Colors.white),
                                  value: Rterminal_int[0],
                                  groupValue: opcDer10,
                                  onChanged: (value) {
                                    group10(value);
                                  },
                                ),
                                Radio(
                                  fillColor: wDisabled == true
                                      ? MaterialStatePropertyAll(Colors.white38)
                                      : MaterialStatePropertyAll(Colors.white),
                                  value: Rterminal_int[1],
                                  groupValue: opcDer10,
                                  onChanged: (value) {
                                    group10(value);
                                  },
                                ),
                                Radio(
                                  fillColor: wDisabled == true
                                      ? MaterialStatePropertyAll(Colors.white38)
                                      : MaterialStatePropertyAll(Colors.white),
                                  value: Rterminal_int[2],
                                  groupValue: opcDer10,
                                  onChanged: (value) {
                                    group10(value);
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
                          Texto_parte(texto: 'Terminal Exterior'),
                          Container(
                            child: Row(
                              children: [
                                Radio(
                                  fillColor: wDisabled == true
                                      ? MaterialStatePropertyAll(Colors.white38)
                                      : MaterialStatePropertyAll(Colors.white),
                                  value: Rterminal_ext[0],
                                  groupValue: opcDer11,
                                  onChanged: (value) {
                                    group11(value);
                                  },
                                ),
                                Radio(
                                  fillColor: wDisabled == true
                                      ? MaterialStatePropertyAll(Colors.white38)
                                      : MaterialStatePropertyAll(Colors.white),
                                  value: Rterminal_ext[1],
                                  groupValue: opcDer11,
                                  onChanged: (value) {
                                    group11(value);
                                  },
                                ),
                                Radio(
                                  fillColor: wDisabled == true
                                      ? MaterialStatePropertyAll(Colors.white38)
                                      : MaterialStatePropertyAll(Colors.white),
                                  value: Rterminal_ext[2],
                                  groupValue: opcDer11,
                                  onChanged: (value) {
                                    group11(value);
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
                          Texto_parte(texto: 'Rotula Inferior'),
                          Container(
                            child: Row(
                              children: [
                                Radio(
                                  fillColor: wDisabled == true
                                      ? MaterialStatePropertyAll(Colors.white38)
                                      : MaterialStatePropertyAll(Colors.white),
                                  value: Rrotula_inf[0],
                                  groupValue: opcDer12,
                                  onChanged: (value) {
                                    group12(value);
                                  },
                                ),
                                Radio(
                                  fillColor: wDisabled == true
                                      ? MaterialStatePropertyAll(Colors.white38)
                                      : MaterialStatePropertyAll(Colors.white),
                                  value: Rrotula_inf[1],
                                  groupValue: opcDer12,
                                  onChanged: (value) {
                                    group12(value);
                                  },
                                ),
                                Radio(
                                  fillColor: wDisabled == true
                                      ? MaterialStatePropertyAll(Colors.white38)
                                      : MaterialStatePropertyAll(Colors.white),
                                  value: Rrotula_inf[2],
                                  groupValue: opcDer12,
                                  onChanged: (value) {
                                    group12(value);
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
                          Texto_parte(texto: 'Rotula Superior'),
                          Container(
                            child: Row(
                              children: [
                                Radio(
                                  fillColor: wDisabled == true
                                      ? MaterialStatePropertyAll(Colors.white38)
                                      : MaterialStatePropertyAll(Colors.white),
                                  value: Rrotula_sup[0],
                                  groupValue: opcDer13,
                                  onChanged: (value) {
                                    group13(value);
                                  },
                                ),
                                Radio(
                                  fillColor: wDisabled == true
                                      ? MaterialStatePropertyAll(Colors.white38)
                                      : MaterialStatePropertyAll(Colors.white),
                                  value: Rrotula_sup[1],
                                  groupValue: opcDer13,
                                  onChanged: (value) {
                                    group13(value);
                                  },
                                ),
                                Radio(
                                  fillColor: wDisabled == true
                                      ? MaterialStatePropertyAll(Colors.white38)
                                      : MaterialStatePropertyAll(Colors.white),
                                  value: Rrotula_sup[2],
                                  groupValue: opcDer13,
                                  onChanged: (value) {
                                    group13(value);
                                  },
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: Text(
                          'Delantero',
                          style: TextStyle(color: Colors.white, fontSize: 28),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Texto_parte(texto: 'Gomas Amortiguadoras'),
                          Container(
                            child: Row(
                              children: [
                                Radio(
                                  fillColor: wDisabled == true
                                      ? MaterialStatePropertyAll(Colors.white38)
                                      : MaterialStatePropertyAll(Colors.white),
                                  value: Fgomas_amort[0],
                                  groupValue: opcDel14,
                                  onChanged: (value) {
                                    group14(value);
                                  },
                                ),
                                Radio(
                                  fillColor: wDisabled == true
                                      ? MaterialStatePropertyAll(Colors.white38)
                                      : MaterialStatePropertyAll(Colors.white),
                                  value: Fgomas_amort[1],
                                  groupValue: opcDel14,
                                  onChanged: (value) {
                                    group14(value);
                                  },
                                ),
                                Radio(
                                  fillColor: wDisabled == true
                                      ? MaterialStatePropertyAll(Colors.white38)
                                      : MaterialStatePropertyAll(Colors.white),
                                  value: Fgomas_amort[2],
                                  groupValue: opcDel14,
                                  onChanged: (value) {
                                    group14(value);
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
                          Texto_parte(texto: 'Bujes de Horquilla'),
                          Container(
                            child: Row(
                              children: [
                                Radio(
                                  fillColor: wDisabled == true
                                      ? MaterialStatePropertyAll(Colors.white38)
                                      : MaterialStatePropertyAll(Colors.white),
                                  value: Fbujes[0],
                                  groupValue: opcDel15,
                                  onChanged: (value) {
                                    group15(value);
                                  },
                                ),
                                Radio(
                                  fillColor: wDisabled == true
                                      ? MaterialStatePropertyAll(Colors.white38)
                                      : MaterialStatePropertyAll(Colors.white),
                                  value: Fbujes[1],
                                  groupValue: opcDel15,
                                  onChanged: (value) {
                                    group15(value);
                                  },
                                ),
                                Radio(
                                  fillColor: wDisabled == true
                                      ? MaterialStatePropertyAll(Colors.white38)
                                      : MaterialStatePropertyAll(Colors.white),
                                  value: Fbujes[2],
                                  groupValue: opcDel15,
                                  onChanged: (value) {
                                    group15(value);
                                  },
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: Text(
                          'Trasero',
                          style: TextStyle(color: Colors.white, fontSize: 28),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Texto_parte(texto: 'Gomas Amortiguadoras'),
                          Container(
                            child: Row(
                              children: [
                                Radio(
                                  fillColor: wDisabled == true
                                      ? MaterialStatePropertyAll(Colors.white38)
                                      : MaterialStatePropertyAll(Colors.white),
                                  value: Bgomas_amort[0],
                                  groupValue: opcTras16,
                                  onChanged: (value) {
                                    group16(value);
                                  },
                                ),
                                Radio(
                                  fillColor: wDisabled == true
                                      ? MaterialStatePropertyAll(Colors.white38)
                                      : MaterialStatePropertyAll(Colors.white),
                                  value: Bgomas_amort[1],
                                  groupValue: opcTras16,
                                  onChanged: (value) {
                                    group16(value);
                                  },
                                ),
                                Radio(
                                  fillColor: wDisabled == true
                                      ? MaterialStatePropertyAll(Colors.white38)
                                      : MaterialStatePropertyAll(Colors.white),
                                  value: Bgomas_amort[2],
                                  groupValue: opcTras16,
                                  onChanged: (value) {
                                    group16(value);
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
                          Texto_parte(texto: 'Bujes de Horquilla'),
                          Container(
                            child: Row(
                              children: [
                                Radio(
                                  fillColor: wDisabled == true
                                      ? MaterialStatePropertyAll(Colors.white38)
                                      : MaterialStatePropertyAll(Colors.white),
                                  value: Bbujes[0],
                                  groupValue: opcTras17,
                                  onChanged: (value) {
                                    group17(value);
                                  },
                                ),
                                Radio(
                                  fillColor: wDisabled == true
                                      ? MaterialStatePropertyAll(Colors.white38)
                                      : MaterialStatePropertyAll(Colors.white),
                                  value: Bbujes[1],
                                  groupValue: opcTras17,
                                  onChanged: (value) {
                                    group17(value);
                                  },
                                ),
                                Radio(
                                  fillColor: wDisabled == true
                                      ? MaterialStatePropertyAll(Colors.white38)
                                      : MaterialStatePropertyAll(Colors.white),
                                  value: Bbujes[2],
                                  groupValue: opcTras17,
                                  onChanged: (value) {
                                    group17(value);
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
                            ss.addSuspension(
                                widget.noOrden,
                                opcIzq01!,
                                opcIzq02!,
                                opcIzq03!,
                                opcIzq04!,
                                opcIzq05!,
                                opcIzq06!,
                                opcIzq07!,
                                opcIzq08!,
                                opcIzq09!,
                                opcDer10!,
                                opcDer11!,
                                opcDer12!,
                                opcDer13!,
                                opcDel14!,
                                opcDel15!,
                                opcTras16!,
                                opcTras17!,
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
