import 'package:flutter/material.dart';

import '../controlador/Save_servicio.dart';

class Servicio_afinacion extends StatefulWidget {
  final String noOrden;
  const Servicio_afinacion({super.key, required this.noOrden});

  @override
  State<Servicio_afinacion> createState() => _Servicio_afinacion();
}

List<String> Bujias = ['cambio', 'mal', 'bien'];
List<String> Aire = ['cambio', 'mal', 'bien'];
List<String> Aceite = ['cambio', 'mal', 'bien'];
List<String> Gasolina = ['cambio', 'mal', 'bien'];
List<String> Carbcln = ['cambio', 'mal', 'bien'];
List<String> Cables = ['cambio', 'mal', 'bien'];
List<String> Tapa = ['cambio', 'mal', 'bien'];
List<String> PCV = ['cambio', 'mal', 'bien'];
List<String> Rotor = ['cambio', 'mal', 'bien'];
List<String> LiqInj = ['cambio', 'mal', 'bien'];

List<String> Aceitesw = ['5w/30', '10w/30', '15w/30', '15w/40', '15w/50'];
List<String> Anticongelante = ['cambio', 'mal', 'bien'];
List<String> AceiteDr_Hidra = ['cambio', 'mal', 'bien'];
List<String> AceiteTran_Auto = ['cambio', 'mal', 'bien'];

class _Servicio_afinacion extends State<Servicio_afinacion> {
  Save_servicio ss = Save_servicio();
  TextEditingController obserController = TextEditingController();
  List<String> rSeleccionado = [];
  bool wDisabled = false;
  List<String> items = ['Bujias', '4', '6', '8'];
  String? selectedItem = 'Bujias';

  List<String> itemsB = ['Normal', 'Platino', 'Iridium'];
  String? selectedItemB = 'Normal';

  List<String> itemsC = ['Aceite', '4', '5', '6'];
  String? selectedItemC = 'Aceite';

  String? opcBujias;
  String? opcAire;
  String? opcAceite;
  String? opcGasolina;
  String? opcAceiteW;
  String? opcCarbcln;
  String? opcCables;
  String? opcTapa;
  String? opcPCV;
  String? opcRotor;
  String? opcLiqInj;
  String? opcAnticongelante;
  String? opcAceiteHidra;
  String? opcAceiteTran;

  @override
  void initState() {
    super.initState();
    if (ss.existeAfinacion(widget.noOrden)) {
      wDisabled = true;
      rSeleccionado = ss.infoAnfinacion(widget.noOrden);
      llenado();
    }
  }

  void group01(values) {
    //bujias
    setState(() {
      if (wDisabled == false) {
        opcBujias = values.toString();
      } else {}
    });
  }

  void group02(values) {
    //aire
    setState(() {
      if (wDisabled == false) {
        opcAire = values.toString();
      } else {}
    });
  }

  void group03(values) {
    //aceite
    setState(() {
      if (wDisabled == false) {
        opcAceite = values.toString();
      } else {}
    });
  }

  void group04(values) {
    //gasolina
    setState(() {
      if (wDisabled == false) {
        opcGasolina = values.toString();
      } else {}
    });
  }

  void group05(values) {
    //aceite W
    setState(() {
      if (wDisabled == false) {
        opcAceiteW = values.toString();
      } else {}
    });
  }

  void group06(values) {
    //carbcln
    setState(() {
      if (wDisabled == false) {
        opcCarbcln = values.toString();
      } else {}
    });
  }

  void group07(values) {
    //cables
    setState(() {
      if (wDisabled == false) {
        opcCables = values.toString();
      } else {}
    });
  }

  void group08(values) {
    //tapa
    setState(() {
      if (wDisabled == false) {
        opcTapa = values.toString();
      } else {}
    });
  }

  void group09(values) {
    //pcv
    setState(() {
      if (wDisabled == false) {
        opcPCV = values.toString();
      } else {}
    });
  }

  void group10(values) {
    //rotor
    setState(() {
      if (wDisabled == false) {
        opcRotor = values.toString();
      } else {}
    });
  }

  void group11(values) {
    //liq inj
    setState(() {
      if (wDisabled == false) {
        opcLiqInj = values.toString();
      } else {}
    });
  }

  void group12(values) {
    //anitcongelante
    setState(() {
      if (wDisabled == false) {
        opcAnticongelante = values.toString();
      } else {}
    });
  }

  void group13(values) {
    //aceite dr hidraulica
    setState(() {
      if (wDisabled == false) {
        opcAceiteHidra = values.toString();
      } else {}
    });
  }

  void group14(values) {
    //aceite transmision automatica
    setState(() {
      if (wDisabled == false) {
        opcAceiteTran = values.toString();
      } else {}
    });
  }

  void llenado() {
    setState(() {
      selectedItem = rSeleccionado[0];
      opcBujias = rSeleccionado[1];
      selectedItemB = rSeleccionado[2];
      opcAire = rSeleccionado[3];
      opcAceite = rSeleccionado[4];
      opcGasolina = rSeleccionado[5];
      selectedItemC = rSeleccionado[6];
      opcAceiteW = rSeleccionado[7];
      opcCarbcln = rSeleccionado[8];
      opcCables = rSeleccionado[9];
      opcTapa = rSeleccionado[10];
      opcPCV = rSeleccionado[11];
      opcRotor = rSeleccionado[12];
      opcLiqInj = rSeleccionado[13];
      opcAnticongelante = rSeleccionado[14];
      opcAceiteHidra = rSeleccionado[15];
      opcAceiteTran = rSeleccionado[16];
      obserController.text = rSeleccionado[17];
    });
  }

  void actualizar() {
    wDisabled = true;
    rSeleccionado = ss.infoAnfinacion(widget.noOrden);
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
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: DropdownButton<String>(
                              style: TextStyle(color: Colors.white),
                              dropdownColor: Theme.of(context).primaryColor,
                              value: selectedItem,
                              items: items
                                  .map((item) => DropdownMenuItem<String>(
                                        value: item,
                                        child: Text(
                                          item,
                                          style: TextStyle(fontSize: 18),
                                        ),
                                      ))
                                  .toList(),
                              onChanged: (item) =>
                                  setState(() => selectedItem = item),
                            ),
                          ),
                          Container(
                            child: Row(
                              children: [
                                Radio(
                                  fillColor: wDisabled == true
                                      ? MaterialStatePropertyAll(Colors.white38)
                                      : MaterialStatePropertyAll(Colors.white),
                                  value: Bujias[0],
                                  groupValue: opcBujias,
                                  onChanged: (value) {
                                    group01(value);
                                  },
                                ),
                                Radio(
                                  fillColor: wDisabled == true
                                      ? MaterialStatePropertyAll(Colors.white38)
                                      : MaterialStatePropertyAll(Colors.white),
                                  value: Bujias[1],
                                  groupValue: opcBujias,
                                  onChanged: (value) {
                                    group01(value);
                                  },
                                ),
                                Radio(
                                  fillColor: wDisabled == true
                                      ? MaterialStatePropertyAll(Colors.white38)
                                      : MaterialStatePropertyAll(Colors.white),
                                  value: Bujias[2],
                                  groupValue: opcBujias,
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
                          Texto_parte(texto: 'Tipo de Bujias'),
                          Padding(
                            padding: const EdgeInsets.only(right: 20),
                            child: DropdownButton<String>(
                              style: TextStyle(color: Colors.white),
                              dropdownColor: Theme.of(context).primaryColor,
                              value: selectedItemB,
                              items: itemsB
                                  .map(
                                    (item) => DropdownMenuItem<String>(
                                      value: item,
                                      child: Text(
                                        item,
                                        style: TextStyle(fontSize: 18),
                                      ),
                                    ),
                                  )
                                  .toList(),
                              onChanged: (item) =>
                                  setState(() => selectedItemB = item),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ), //termina
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
                          'Filtro',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Texto_parte(texto: 'Aire'),
                          Container(
                            child: Row(
                              children: [
                                Radio(
                                  fillColor: wDisabled == true
                                      ? MaterialStatePropertyAll(Colors.white38)
                                      : MaterialStatePropertyAll(Colors.white),
                                  value: Aire[0],
                                  groupValue: opcAire,
                                  onChanged: (value) {
                                    group02(value);
                                  },
                                ),
                                Radio(
                                  fillColor: wDisabled == true
                                      ? MaterialStatePropertyAll(Colors.white38)
                                      : MaterialStatePropertyAll(Colors.white),
                                  value: Aire[1],
                                  groupValue: opcAire,
                                  onChanged: (value) {
                                    group02(value);
                                  },
                                ),
                                Radio(
                                  fillColor: wDisabled == true
                                      ? MaterialStatePropertyAll(Colors.white38)
                                      : MaterialStatePropertyAll(Colors.white),
                                  value: Aire[2],
                                  groupValue: opcAire,
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
                          Texto_parte(texto: 'Aceite'),
                          Container(
                            child: Row(
                              children: [
                                Radio(
                                  fillColor: wDisabled == true
                                      ? MaterialStatePropertyAll(Colors.white38)
                                      : MaterialStatePropertyAll(Colors.white),
                                  value: Aceite[0],
                                  groupValue: opcAceite,
                                  onChanged: (value) {
                                    group03(value);
                                  },
                                ),
                                Radio(
                                  fillColor: wDisabled == true
                                      ? MaterialStatePropertyAll(Colors.white38)
                                      : MaterialStatePropertyAll(Colors.white),
                                  value: Aceite[1],
                                  groupValue: opcAceite,
                                  onChanged: (value) {
                                    group03(value);
                                  },
                                ),
                                Radio(
                                  fillColor: wDisabled == true
                                      ? MaterialStatePropertyAll(Colors.white38)
                                      : MaterialStatePropertyAll(Colors.white),
                                  value: Aceite[2],
                                  groupValue: opcAceite,
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
                          Texto_parte(texto: 'Gasolina'),
                          Container(
                            child: Row(
                              children: [
                                Radio(
                                  fillColor: wDisabled == true
                                      ? MaterialStatePropertyAll(Colors.white38)
                                      : MaterialStatePropertyAll(Colors.white),
                                  value: Gasolina[0],
                                  groupValue: opcGasolina,
                                  onChanged: (value) {
                                    group04(value);
                                  },
                                ),
                                Radio(
                                  fillColor: wDisabled == true
                                      ? MaterialStatePropertyAll(Colors.white38)
                                      : MaterialStatePropertyAll(Colors.white),
                                  value: Gasolina[1],
                                  groupValue: opcGasolina,
                                  onChanged: (value) {
                                    group04(value);
                                  },
                                ),
                                Radio(
                                  fillColor: wDisabled == true
                                      ? MaterialStatePropertyAll(Colors.white38)
                                      : MaterialStatePropertyAll(Colors.white),
                                  value: Gasolina[2],
                                  groupValue: opcGasolina,
                                  onChanged: (value) {
                                    group04(value);
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
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: DropdownButton<String>(
                              style: TextStyle(color: Colors.white),
                              dropdownColor: Theme.of(context).primaryColor,
                              value: selectedItemC,
                              items: itemsC
                                  .map((item) => DropdownMenuItem<String>(
                                        value: item,
                                        child: Text(
                                          item,
                                          style: TextStyle(fontSize: 18),
                                        ),
                                      ))
                                  .toList(),
                              onChanged: (item) =>
                                  setState(() => selectedItemC = item),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(right: 40),
                            child: Row(
                              children: [
                                Text(
                                  "15w/30",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 18),
                                ),
                                Radio(
                                  fillColor: wDisabled == true
                                      ? MaterialStatePropertyAll(Colors.white38)
                                      : MaterialStatePropertyAll(Colors.white),
                                  value: Aceitesw[2],
                                  groupValue: opcAceiteW,
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
                          Container(
                            padding: EdgeInsets.only(left: 40),
                            child: Row(
                              children: [
                                Text(
                                  "  5w/30",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 18),
                                ),
                                Radio(
                                  fillColor: wDisabled == true
                                      ? MaterialStatePropertyAll(Colors.white38)
                                      : MaterialStatePropertyAll(Colors.white),
                                  value: Aceitesw[0],
                                  groupValue: opcAceiteW,
                                  onChanged: (value) {
                                    group05(value);
                                  },
                                ),
                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(right: 40),
                            child: Row(
                              children: [
                                Text(
                                  "15w/40",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 18),
                                ),
                                Radio(
                                  fillColor: wDisabled == true
                                      ? MaterialStatePropertyAll(Colors.white38)
                                      : MaterialStatePropertyAll(Colors.white),
                                  value: Aceitesw[3],
                                  groupValue: opcAceiteW,
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
                          Container(
                            padding: EdgeInsets.only(left: 40),
                            child: Row(
                              children: [
                                Text(
                                  "10w/30",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 18),
                                ),
                                Radio(
                                  fillColor: wDisabled == true
                                      ? MaterialStatePropertyAll(Colors.white38)
                                      : MaterialStatePropertyAll(Colors.white),
                                  value: Aceitesw[1],
                                  groupValue: opcAceiteW,
                                  onChanged: (value) {
                                    group05(value);
                                  },
                                ),
                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(right: 40),
                            child: Row(
                              children: [
                                Text(
                                  "15w/50",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 18),
                                ),
                                Radio(
                                  fillColor: wDisabled == true
                                      ? MaterialStatePropertyAll(Colors.white38)
                                      : MaterialStatePropertyAll(Colors.white),
                                  value: Aceitesw[4],
                                  groupValue: opcAceiteW,
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
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Texto_parte(texto: 'Carbcln'),
                          Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Radio(
                                  fillColor: wDisabled == true
                                      ? MaterialStatePropertyAll(Colors.white38)
                                      : MaterialStatePropertyAll(Colors.white),
                                  value: Carbcln[0],
                                  groupValue: opcCarbcln,
                                  onChanged: (value) {
                                    group06(value);
                                  },
                                ),
                                Radio(
                                  fillColor: wDisabled == true
                                      ? MaterialStatePropertyAll(Colors.white38)
                                      : MaterialStatePropertyAll(Colors.white),
                                  value: Carbcln[1],
                                  groupValue: opcCarbcln,
                                  onChanged: (value) {
                                    group06(value);
                                  },
                                ),
                                Radio(
                                  fillColor: wDisabled == true
                                      ? MaterialStatePropertyAll(Colors.white38)
                                      : MaterialStatePropertyAll(Colors.white),
                                  value: Carbcln[2],
                                  groupValue: opcCarbcln,
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
                          Texto_parte(texto: 'Cables'),
                          Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Radio(
                                  fillColor: wDisabled == true
                                      ? MaterialStatePropertyAll(Colors.white38)
                                      : MaterialStatePropertyAll(Colors.white),
                                  value: Cables[0],
                                  groupValue: opcCables,
                                  onChanged: (value) {
                                    group07(value);
                                  },
                                ),
                                Radio(
                                  fillColor: wDisabled == true
                                      ? MaterialStatePropertyAll(Colors.white38)
                                      : MaterialStatePropertyAll(Colors.white),
                                  value: Cables[1],
                                  groupValue: opcCables,
                                  onChanged: (value) {
                                    group07(value);
                                  },
                                ),
                                Radio(
                                  fillColor: wDisabled == true
                                      ? MaterialStatePropertyAll(Colors.white38)
                                      : MaterialStatePropertyAll(Colors.white),
                                  value: Cables[2],
                                  groupValue: opcCables,
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
                          Texto_parte(texto: 'Tapa'),
                          Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Radio(
                                  fillColor: wDisabled == true
                                      ? MaterialStatePropertyAll(Colors.white38)
                                      : MaterialStatePropertyAll(Colors.white),
                                  value: Tapa[0],
                                  groupValue: opcTapa,
                                  onChanged: (value) {
                                    group08(value);
                                  },
                                ),
                                Radio(
                                  fillColor: wDisabled == true
                                      ? MaterialStatePropertyAll(Colors.white38)
                                      : MaterialStatePropertyAll(Colors.white),
                                  value: Tapa[1],
                                  groupValue: opcTapa,
                                  onChanged: (value) {
                                    group08(value);
                                  },
                                ),
                                Radio(
                                  fillColor: wDisabled == true
                                      ? MaterialStatePropertyAll(Colors.white38)
                                      : MaterialStatePropertyAll(Colors.white),
                                  value: Tapa[2],
                                  groupValue: opcTapa,
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
                          Texto_parte(texto: 'PCV'),
                          Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Radio(
                                  fillColor: wDisabled == true
                                      ? MaterialStatePropertyAll(Colors.white38)
                                      : MaterialStatePropertyAll(Colors.white),
                                  value: PCV[0],
                                  groupValue: opcPCV,
                                  onChanged: (value) {
                                    group09(value);
                                  },
                                ),
                                Radio(
                                  fillColor: wDisabled == true
                                      ? MaterialStatePropertyAll(Colors.white38)
                                      : MaterialStatePropertyAll(Colors.white),
                                  value: PCV[1],
                                  groupValue: opcPCV,
                                  onChanged: (value) {
                                    group09(value);
                                  },
                                ),
                                Radio(
                                  fillColor: wDisabled == true
                                      ? MaterialStatePropertyAll(Colors.white38)
                                      : MaterialStatePropertyAll(Colors.white),
                                  value: PCV[2],
                                  groupValue: opcPCV,
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
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Texto_parte(texto: 'Rotor'),
                          Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Radio(
                                  fillColor: wDisabled == true
                                      ? MaterialStatePropertyAll(Colors.white38)
                                      : MaterialStatePropertyAll(Colors.white),
                                  value: Rotor[0],
                                  groupValue: opcRotor,
                                  onChanged: (value) {
                                    group10(value);
                                  },
                                ),
                                Radio(
                                  fillColor: wDisabled == true
                                      ? MaterialStatePropertyAll(Colors.white38)
                                      : MaterialStatePropertyAll(Colors.white),
                                  value: Rotor[1],
                                  groupValue: opcRotor,
                                  onChanged: (value) {
                                    group10(value);
                                  },
                                ),
                                Radio(
                                  fillColor: wDisabled == true
                                      ? MaterialStatePropertyAll(Colors.white38)
                                      : MaterialStatePropertyAll(Colors.white),
                                  value: Rotor[2],
                                  groupValue: opcRotor,
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
                          Texto_parte(texto: 'Liq. Inj'),
                          Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Radio(
                                  fillColor: wDisabled == true
                                      ? MaterialStatePropertyAll(Colors.white38)
                                      : MaterialStatePropertyAll(Colors.white),
                                  value: LiqInj[0],
                                  groupValue: opcLiqInj,
                                  onChanged: (value) {
                                    group11(value);
                                  },
                                ),
                                Radio(
                                  fillColor: wDisabled == true
                                      ? MaterialStatePropertyAll(Colors.white38)
                                      : MaterialStatePropertyAll(Colors.white),
                                  value: LiqInj[1],
                                  groupValue: opcLiqInj,
                                  onChanged: (value) {
                                    group11(value);
                                  },
                                ),
                                Radio(
                                  fillColor: wDisabled == true
                                      ? MaterialStatePropertyAll(Colors.white38)
                                      : MaterialStatePropertyAll(Colors.white),
                                  value: LiqInj[2],
                                  groupValue: opcLiqInj,
                                  onChanged: (value) {
                                    group11(value);
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
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Texto_parte(texto: 'Anticongelante'),
                          Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Radio(
                                  fillColor: wDisabled == true
                                      ? MaterialStatePropertyAll(Colors.white38)
                                      : MaterialStatePropertyAll(Colors.white),
                                  value: Anticongelante[0],
                                  groupValue: opcAnticongelante,
                                  onChanged: (value) {
                                    group12(value);
                                  },
                                ),
                                Radio(
                                  fillColor: wDisabled == true
                                      ? MaterialStatePropertyAll(Colors.white38)
                                      : MaterialStatePropertyAll(Colors.white),
                                  value: Anticongelante[1],
                                  groupValue: opcAnticongelante,
                                  onChanged: (value) {
                                    group12(value);
                                  },
                                ),
                                Radio(
                                  fillColor: wDisabled == true
                                      ? MaterialStatePropertyAll(Colors.white38)
                                      : MaterialStatePropertyAll(Colors.white),
                                  value: Anticongelante[2],
                                  groupValue: opcAnticongelante,
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
                          Texto_parte(texto: 'Aceite Direccion Hidraulica'),
                          Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Radio(
                                  fillColor: wDisabled == true
                                      ? MaterialStatePropertyAll(Colors.white38)
                                      : MaterialStatePropertyAll(Colors.white),
                                  value: AceiteDr_Hidra[0],
                                  groupValue: opcAceiteHidra,
                                  onChanged: (value) {
                                    group13(value);
                                  },
                                ),
                                Radio(
                                  fillColor: wDisabled == true
                                      ? MaterialStatePropertyAll(Colors.white38)
                                      : MaterialStatePropertyAll(Colors.white),
                                  value: AceiteDr_Hidra[1],
                                  groupValue: opcAceiteHidra,
                                  onChanged: (value) {
                                    group13(value);
                                  },
                                ),
                                Radio(
                                  fillColor: wDisabled == true
                                      ? MaterialStatePropertyAll(Colors.white38)
                                      : MaterialStatePropertyAll(Colors.white),
                                  value: AceiteDr_Hidra[2],
                                  groupValue: opcAceiteHidra,
                                  onChanged: (value) {
                                    group13(value);
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
                          Texto_parte(texto: 'Aceite Transmision Automatica'),
                          Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Radio(
                                  fillColor: wDisabled == true
                                      ? MaterialStatePropertyAll(Colors.white38)
                                      : MaterialStatePropertyAll(Colors.white),
                                  value: AceiteTran_Auto[0],
                                  groupValue: opcAceiteTran,
                                  onChanged: (value) {
                                    group14(value);
                                  },
                                ),
                                Radio(
                                  fillColor: wDisabled == true
                                      ? MaterialStatePropertyAll(Colors.white38)
                                      : MaterialStatePropertyAll(Colors.white),
                                  value: AceiteTran_Auto[1],
                                  groupValue: opcAceiteTran,
                                  onChanged: (value) {
                                    group14(value);
                                  },
                                ),
                                Radio(
                                  fillColor: wDisabled == true
                                      ? MaterialStatePropertyAll(Colors.white38)
                                      : MaterialStatePropertyAll(Colors.white),
                                  value: AceiteTran_Auto[2],
                                  groupValue: opcAceiteTran,
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
                      ss.addAfinacion(
                          widget.noOrden,
                          selectedItem!,
                          opcBujias!,
                          selectedItemB!,
                          opcAire!,
                          opcAceite!,
                          opcGasolina!,
                          selectedItemC!,
                          opcAceiteW!,
                          opcCarbcln!,
                          opcCables!,
                          opcTapa!,
                          opcPCV!,
                          opcRotor!,
                          opcLiqInj!,
                          opcAnticongelante!,
                          opcAceiteHidra!,
                          opcAceiteTran!,
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
                SizedBox(height: 10),
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
