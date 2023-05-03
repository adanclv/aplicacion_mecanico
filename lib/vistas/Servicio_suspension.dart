import 'package:flutter/material.dart';

class Servicio_suspension extends StatefulWidget {
  const Servicio_suspension({super.key});

  @override
  State<Servicio_suspension> createState() => _Servicio_suspension();
}

List<String> Lterminal_int = [
  'cambio',
  'mal',
  'bien'
]; //lista de las opciones que va a tener
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
  String?
      opcIzq01; //variable para asignarle el grupo a cada parte del carro, esta es para 'Terrminal Interior'
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

  void group01(values) {
    //es para cambiarle el estado a la variable del grupo y asi poder tener seleccionado la parte del carro'Terminal Interior'
    setState(() {
      opcIzq01 = values.toString();
    });
  }

//para cada grupo tienes que hacer un metodo con el setstate porque si no se hace se van a seleccionar los mismos
// y lo que queremos es que este independiente cada grupo de Radio
  void group02(values) {
    setState(() {
      opcIzq02 = values.toString();
    });
  }

  void group03(values) {
    setState(() {
      opcIzq03 = values.toString();
    });
  }

  void group04(values) {
    setState(() {
      opcIzq04 = values.toString();
    });
  }

  void group05(values) {
    setState(() {
      opcIzq05 = values.toString();
    });
  }

  void group06(values) {
    setState(() {
      opcIzq06 = values.toString();
    });
  }

  void group07(values) {
    setState(() {
      opcIzq07 = values.toString();
    });
  }

  void group08(values) {
    setState(() {
      opcIzq08 = values.toString();
    });
  }

  void group09(values) {
    setState(() {
      opcIzq09 = values.toString();
    });
  }

  void group10(values) {
    setState(() {
      opcDer10 = values.toString();
    });
  }

  void group11(values) {
    setState(() {
      opcDer11 = values.toString();
    });
  }

  void group12(values) {
    setState(() {
      opcDer12 = values.toString();
    });
  }

  void group13(values) {
    setState(() {
      opcDer13 = values.toString();
    });
  }

  void group14(values) {
    setState(() {
      opcDel14 = values.toString();
    });
  }

  void group15(values) {
    setState(() {
      opcDel15 = values.toString();
    });
  }

  void group16(values) {
    setState(() {
      opcTras16 = values.toString();
    });
  }

  void group17(values) {
    setState(() {
      opcTras17 = values.toString();
    });
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
                    Text('Mal', style: TextStyle(color: Colors.white)),
                    SizedBox(width: 20),
                    Text('Bien', style: TextStyle(color: Colors.white)),
                    SizedBox(width: 20),
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
                        children: [
                          Texto_parte(texto: 'Terminal Interior'),
                          Radio(
                            fillColor: MaterialStatePropertyAll(Colors.white),
                            value: Lterminal_int[0],
                            groupValue: opcIzq01,
                            onChanged: (value) {
                              group01(value);
                            },
                          ),
                          Radio(
                            fillColor: MaterialStatePropertyAll(Colors.white),
                            value: Lterminal_int[1],
                            groupValue: opcIzq01,
                            onChanged: (value) {
                              group01(value);
                            },
                          ),
                          Radio(
                            fillColor: MaterialStatePropertyAll(Colors.white),
                            value: Lterminal_int[2],
                            groupValue: opcIzq01,
                            onChanged: (value) {
                              group01(value);
                            },
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Texto_parte(texto: 'Terminal Exterior'),
                          Radio(
                            fillColor: MaterialStatePropertyAll(Colors.white),
                            value: Lterminal_ext[0],
                            groupValue: opcIzq02,
                            onChanged: (value) {
                              group02(value);
                            },
                          ),
                          Radio(
                            fillColor: MaterialStatePropertyAll(Colors.white),
                            value: Lterminal_ext[1],
                            groupValue: opcIzq02,
                            onChanged: (value) {
                              group02(value);
                            },
                          ),
                          Radio(
                            fillColor: MaterialStatePropertyAll(Colors.white),
                            value: Lterminal_ext[2],
                            groupValue: opcIzq02,
                            onChanged: (value) {
                              group02(value);
                            },
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Texto_parte(texto: 'Rotula Inferior'),
                          Radio(
                            fillColor: MaterialStatePropertyAll(Colors.white),
                            value: Lrotula_inf[0],
                            groupValue: opcIzq03,
                            onChanged: (value) {
                              group03(value);
                            },
                          ),
                          Radio(
                            fillColor: MaterialStatePropertyAll(Colors.white),
                            value: Lrotula_inf[1],
                            groupValue: opcIzq03,
                            onChanged: (value) {
                              group03(value);
                            },
                          ),
                          Radio(
                            fillColor: MaterialStatePropertyAll(Colors.white),
                            value: Lrotula_inf[2],
                            groupValue: opcIzq03,
                            onChanged: (value) {
                              group03(value);
                            },
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Texto_parte(texto: 'Rotula Exterior'),
                          Radio(
                            fillColor: MaterialStatePropertyAll(Colors.white),
                            value: Lrotula_sup[0],
                            groupValue: opcIzq04,
                            onChanged: (value) {
                              group04(value);
                            },
                          ),
                          Radio(
                            fillColor: MaterialStatePropertyAll(Colors.white),
                            value: Lrotula_sup[1],
                            groupValue: opcIzq04,
                            onChanged: (value) {
                              group04(value);
                            },
                          ),
                          Radio(
                            fillColor: MaterialStatePropertyAll(Colors.white),
                            value: Lrotula_sup[2],
                            groupValue: opcIzq04,
                            onChanged: (value) {
                              group04(value);
                            },
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Texto_parte(texto: 'Amortiguadores Delanteros'),
                          Radio(
                            fillColor: MaterialStatePropertyAll(Colors.white),
                            value: Lamortiguador_del[0],
                            groupValue: opcIzq05,
                            onChanged: (value) {
                              group05(value);
                            },
                          ),
                          Radio(
                            fillColor: MaterialStatePropertyAll(Colors.white),
                            value: Lamortiguador_del[1],
                            groupValue: opcIzq05,
                            onChanged: (value) {
                              group05(value);
                            },
                          ),
                          Radio(
                            fillColor: MaterialStatePropertyAll(Colors.white),
                            value: Lamortiguador_del[2],
                            groupValue: opcIzq05,
                            onChanged: (value) {
                              group05(value);
                            },
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Texto_parte(texto: 'Amortiguadores Traseros'),
                          Radio(
                            fillColor: MaterialStatePropertyAll(Colors.white),
                            value: Lamortiguador_tras[0],
                            groupValue: opcIzq06,
                            onChanged: (value) {
                              group06(value);
                            },
                          ),
                          Radio(
                            fillColor: MaterialStatePropertyAll(Colors.white),
                            value: Lamortiguador_tras[1],
                            groupValue: opcIzq06,
                            onChanged: (value) {
                              group06(value);
                            },
                          ),
                          Radio(
                            fillColor: MaterialStatePropertyAll(Colors.white),
                            value: Lamortiguador_tras[2],
                            groupValue: opcIzq06,
                            onChanged: (value) {
                              group06(value);
                            },
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Texto_parte(texto: 'Horquillas'),
                          Radio(
                            fillColor: MaterialStatePropertyAll(Colors.white),
                            value: Lhorquilla[0],
                            groupValue: opcIzq07,
                            onChanged: (value) {
                              group07(value);
                            },
                          ),
                          Radio(
                            fillColor: MaterialStatePropertyAll(Colors.white),
                            value: Lhorquilla[1],
                            groupValue: opcIzq07,
                            onChanged: (value) {
                              group07(value);
                            },
                          ),
                          Radio(
                            fillColor: MaterialStatePropertyAll(Colors.white),
                            value: Lhorquilla[2],
                            groupValue: opcIzq07,
                            onChanged: (value) {
                              group07(value);
                            },
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Texto_parte(texto: 'Hules de la Barra Est'),
                          Radio(
                            fillColor: MaterialStatePropertyAll(Colors.white),
                            value: Lhules[0],
                            groupValue: opcIzq08,
                            onChanged: (value) {
                              group08(value);
                            },
                          ),
                          Radio(
                            fillColor: MaterialStatePropertyAll(Colors.white),
                            value: Lhules[1],
                            groupValue: opcIzq08,
                            onChanged: (value) {
                              group08(value);
                            },
                          ),
                          Radio(
                            fillColor: MaterialStatePropertyAll(Colors.white),
                            value: Lhules[2],
                            groupValue: opcIzq08,
                            onChanged: (value) {
                              group08(value);
                            },
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Texto_parte(texto: 'Tornillos de la Barra Est'),
                          Radio(
                            fillColor: MaterialStatePropertyAll(Colors.white),
                            value: Ltornillos[0],
                            groupValue: opcIzq09,
                            onChanged: (value) {
                              group09(value);
                            },
                          ),
                          Radio(
                            fillColor: MaterialStatePropertyAll(Colors.white),
                            value: Ltornillos[1],
                            groupValue: opcIzq09,
                            onChanged: (value) {
                              group09(value);
                            },
                          ),
                          Radio(
                            fillColor: MaterialStatePropertyAll(Colors.white),
                            value: Ltornillos[2],
                            groupValue: opcIzq09,
                            onChanged: (value) {
                              group09(value);
                            },
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
                        children: [
                          Texto_parte(texto: 'Terminal Interior'),
                          Radio(
                            fillColor: MaterialStatePropertyAll(Colors.white),
                            value: Rterminal_int[0],
                            groupValue: opcDer10,
                            onChanged: (value) {
                              group10(value);
                            },
                          ),
                          Radio(
                            fillColor: MaterialStatePropertyAll(Colors.white),
                            value: Rterminal_int[1],
                            groupValue: opcDer10,
                            onChanged: (value) {
                              group10(value);
                            },
                          ),
                          Radio(
                            fillColor: MaterialStatePropertyAll(Colors.white),
                            value: Rterminal_int[2],
                            groupValue: opcDer10,
                            onChanged: (value) {
                              group10(value);
                            },
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Texto_parte(texto: 'Terminal Exterior'),
                          Radio(
                            fillColor: MaterialStatePropertyAll(Colors.white),
                            value: Rterminal_ext[0],
                            groupValue: opcDer11,
                            onChanged: (value) {
                              group11(value);
                            },
                          ),
                          Radio(
                            fillColor: MaterialStatePropertyAll(Colors.white),
                            value: Rterminal_ext[1],
                            groupValue: opcDer11,
                            onChanged: (value) {
                              group11(value);
                            },
                          ),
                          Radio(
                            fillColor: MaterialStatePropertyAll(Colors.white),
                            value: Rterminal_ext[2],
                            groupValue: opcDer11,
                            onChanged: (value) {
                              group11(value);
                            },
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Texto_parte(texto: 'Rotula Inferior'),
                          Radio(
                            fillColor: MaterialStatePropertyAll(Colors.white),
                            value: Rrotula_inf[0],
                            groupValue: opcDer12,
                            onChanged: (value) {
                              group12(value);
                            },
                          ),
                          Radio(
                            fillColor: MaterialStatePropertyAll(Colors.white),
                            value: Rrotula_inf[1],
                            groupValue: opcDer12,
                            onChanged: (value) {
                              group12(value);
                            },
                          ),
                          Radio(
                            fillColor: MaterialStatePropertyAll(Colors.white),
                            value: Rrotula_inf[2],
                            groupValue: opcDer12,
                            onChanged: (value) {
                              group12(value);
                            },
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Texto_parte(texto: 'Rotula Superior'),
                          Radio(
                            fillColor: MaterialStatePropertyAll(Colors.white),
                            value: Rrotula_sup[0],
                            groupValue: opcDer13,
                            onChanged: (value) {
                              group13(value);
                            },
                          ),
                          Radio(
                            fillColor: MaterialStatePropertyAll(Colors.white),
                            value: Rrotula_sup[1],
                            groupValue: opcDer13,
                            onChanged: (value) {
                              group13(value);
                            },
                          ),
                          Radio(
                            fillColor: MaterialStatePropertyAll(Colors.white),
                            value: Rrotula_sup[2],
                            groupValue: opcDer13,
                            onChanged: (value) {
                              group13(value);
                            },
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
                        children: [
                          Texto_parte(texto: 'Gomas Amortiguadoras'),
                          Radio(
                            fillColor: MaterialStatePropertyAll(Colors.white),
                            value: Fgomas_amort[0],
                            groupValue: opcDel14,
                            onChanged: (value) {
                              group14(value);
                            },
                          ),
                          Radio(
                            fillColor: MaterialStatePropertyAll(Colors.white),
                            value: Fgomas_amort[1],
                            groupValue: opcDel14,
                            onChanged: (value) {
                              group14(value);
                            },
                          ),
                          Radio(
                            fillColor: MaterialStatePropertyAll(Colors.white),
                            value: Fgomas_amort[2],
                            groupValue: opcDel14,
                            onChanged: (value) {
                              group14(value);
                            },
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Texto_parte(texto: 'Bujes de Horquilla'),
                          Radio(
                            fillColor: MaterialStatePropertyAll(Colors.white),
                            value: Fbujes[0],
                            groupValue: opcDel15,
                            onChanged: (value) {
                              group15(value);
                            },
                          ),
                          Radio(
                            fillColor: MaterialStatePropertyAll(Colors.white),
                            value: Fbujes[1],
                            groupValue: opcDel15,
                            onChanged: (value) {
                              group15(value);
                            },
                          ),
                          Radio(
                            fillColor: MaterialStatePropertyAll(Colors.white),
                            value: Fbujes[2],
                            groupValue: opcDel15,
                            onChanged: (value) {
                              group15(value);
                            },
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
                        children: [
                          Texto_parte(texto: 'Gomas Amortiguadoras'),
                          Radio(
                            fillColor: MaterialStatePropertyAll(Colors.white),
                            value: Bgomas_amort[0],
                            groupValue: opcTras16,
                            onChanged: (value) {
                              group16(value);
                            },
                          ),
                          Radio(
                            fillColor: MaterialStatePropertyAll(Colors.white),
                            value: Bgomas_amort[1],
                            groupValue: opcTras16,
                            onChanged: (value) {
                              group16(value);
                            },
                          ),
                          Radio(
                            fillColor: MaterialStatePropertyAll(Colors.white),
                            value: Bgomas_amort[2],
                            groupValue: opcTras16,
                            onChanged: (value) {
                              group16(value);
                            },
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Texto_parte(texto: 'Bujes de Horquilla'),
                          Radio(
                            fillColor: MaterialStatePropertyAll(Colors.white),
                            value: Bbujes[0],
                            groupValue: opcTras17,
                            onChanged: (value) {
                              group17(value);
                            },
                          ),
                          Radio(
                            fillColor: MaterialStatePropertyAll(Colors.white),
                            value: Bbujes[1],
                            groupValue: opcTras17,
                            onChanged: (value) {
                              group17(value);
                            },
                          ),
                          Radio(
                            fillColor: MaterialStatePropertyAll(Colors.white),
                            value: Bbujes[2],
                            groupValue: opcTras17,
                            onChanged: (value) {
                              group17(value);
                            },
                          ),
                        ],
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
                            padding: EdgeInsets.symmetric(
                                horizontal: 10, vertical: 20),
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
                            onPressed: () {
                              Navigator.pop(context);
                            },
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
      padding: EdgeInsets.only(left: 15),
      child: Text(
        texto,
        style: TextStyle(color: Colors.white, fontSize: 18),
      ),
    );
  }
}
