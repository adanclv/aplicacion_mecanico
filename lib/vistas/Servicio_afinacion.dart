import 'package:flutter/material.dart';

class Servicio_afinacion extends StatefulWidget {
  const Servicio_afinacion({super.key});

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

List<String> Aceitesw = ['a', 'b', 'c', 'd', 'e'];
List<String> Anticongelante = ['cambio', 'mal', 'bien'];
List<String> AceiteDr_Hidra = ['cambio', 'mal', 'bien'];
List<String> AceiteTran_Auto = ['cambio', 'mal', 'bien'];

class _Servicio_afinacion extends State<Servicio_afinacion> {
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

  void group01(values) {
    //bujias
    setState(() {
      opcBujias = values.toString();
    });
  }

  void group02(values) {
    //aire
    setState(() {
      opcAire = values.toString();
    });
  }

  void group03(values) {
    //aceite
    setState(() {
      opcAceite = values.toString();
    });
  }

  void group04(values) {
    //gasolina
    setState(() {
      opcGasolina = values.toString();
    });
  }

  void group05(values) {
    //aceite W
    setState(() {
      opcAceiteW = values.toString();
    });
  }

  void group06(values) {
    //carbcln
    setState(() {
      opcCarbcln = values.toString();
    });
  }

  void group07(values) {
    //cables
    setState(() {
      opcCables = values.toString();
    });
  }

  void group08(values) {
    //tapa
    setState(() {
      opcTapa = values.toString();
    });
  }

  void group09(values) {
    //pcv
    setState(() {
      opcPCV = values.toString();
    });
  }

  void group10(values) {
    //rotor
    setState(() {
      opcRotor = values.toString();
    });
  }

  void group11(values) {
    //liq inj
    setState(() {
      opcLiqInj = values.toString();
    });
  }

  void group12(values) {
    //anitcongelante
    setState(() {
      opcAnticongelante = values.toString();
    });
  }

  void group13(values) {
    //aceite dr hidraulica
    setState(() {
      opcAceiteHidra = values.toString();
    });
  }

  void group14(values) {
    //aceite transmision automatica
    setState(() {
      opcAceiteTran = values.toString();
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
                                  fillColor:
                                      MaterialStatePropertyAll(Colors.white),
                                  value: Bujias[0],
                                  groupValue: opcBujias,
                                  onChanged: (value) {
                                    group01(value);
                                  },
                                ),
                                Radio(
                                  fillColor:
                                      MaterialStatePropertyAll(Colors.white),
                                  value: Bujias[1],
                                  groupValue: opcBujias,
                                  onChanged: (value) {
                                    group01(value);
                                  },
                                ),
                                Radio(
                                  fillColor:
                                      MaterialStatePropertyAll(Colors.white),
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
                                  fillColor:
                                      MaterialStatePropertyAll(Colors.white),
                                  value: Aire[0],
                                  groupValue: opcAire,
                                  onChanged: (value) {
                                    group02(value);
                                  },
                                ),
                                Radio(
                                  fillColor:
                                      MaterialStatePropertyAll(Colors.white),
                                  value: Aire[1],
                                  groupValue: opcAire,
                                  onChanged: (value) {
                                    group02(value);
                                  },
                                ),
                                Radio(
                                  fillColor:
                                      MaterialStatePropertyAll(Colors.white),
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
                                  fillColor:
                                      MaterialStatePropertyAll(Colors.white),
                                  value: Aceite[0],
                                  groupValue: opcAceite,
                                  onChanged: (value) {
                                    group03(value);
                                  },
                                ),
                                Radio(
                                  fillColor:
                                      MaterialStatePropertyAll(Colors.white),
                                  value: Aceite[1],
                                  groupValue: opcAceite,
                                  onChanged: (value) {
                                    group03(value);
                                  },
                                ),
                                Radio(
                                  fillColor:
                                      MaterialStatePropertyAll(Colors.white),
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
                                  fillColor:
                                      MaterialStatePropertyAll(Colors.white),
                                  value: Gasolina[0],
                                  groupValue: opcGasolina,
                                  onChanged: (value) {
                                    group04(value);
                                  },
                                ),
                                Radio(
                                  fillColor:
                                      MaterialStatePropertyAll(Colors.white),
                                  value: Gasolina[1],
                                  groupValue: opcGasolina,
                                  onChanged: (value) {
                                    group04(value);
                                  },
                                ),
                                Radio(
                                  fillColor:
                                      MaterialStatePropertyAll(Colors.white),
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
                                  fillColor:
                                      MaterialStatePropertyAll(Colors.white),
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
                                  fillColor:
                                      MaterialStatePropertyAll(Colors.white),
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
                                  fillColor:
                                      MaterialStatePropertyAll(Colors.white),
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
                                  fillColor:
                                      MaterialStatePropertyAll(Colors.white),
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
                                  fillColor:
                                      MaterialStatePropertyAll(Colors.white),
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
                                  fillColor:
                                      MaterialStatePropertyAll(Colors.white),
                                  value: Carbcln[0],
                                  groupValue: opcCarbcln,
                                  onChanged: (value) {
                                    group06(value);
                                  },
                                ),
                                Radio(
                                  fillColor:
                                      MaterialStatePropertyAll(Colors.white),
                                  value: Carbcln[1],
                                  groupValue: opcCarbcln,
                                  onChanged: (value) {
                                    group06(value);
                                  },
                                ),
                                Radio(
                                  fillColor:
                                      MaterialStatePropertyAll(Colors.white),
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
                                  fillColor:
                                      MaterialStatePropertyAll(Colors.white),
                                  value: Cables[0],
                                  groupValue: opcCables,
                                  onChanged: (value) {
                                    group07(value);
                                  },
                                ),
                                Radio(
                                  fillColor:
                                      MaterialStatePropertyAll(Colors.white),
                                  value: Cables[1],
                                  groupValue: opcCables,
                                  onChanged: (value) {
                                    group07(value);
                                  },
                                ),
                                Radio(
                                  fillColor:
                                      MaterialStatePropertyAll(Colors.white),
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
                                  fillColor:
                                      MaterialStatePropertyAll(Colors.white),
                                  value: Tapa[0],
                                  groupValue: opcTapa,
                                  onChanged: (value) {
                                    group08(value);
                                  },
                                ),
                                Radio(
                                  fillColor:
                                      MaterialStatePropertyAll(Colors.white),
                                  value: Tapa[1],
                                  groupValue: opcTapa,
                                  onChanged: (value) {
                                    group08(value);
                                  },
                                ),
                                Radio(
                                  fillColor:
                                      MaterialStatePropertyAll(Colors.white),
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
                                  fillColor:
                                      MaterialStatePropertyAll(Colors.white),
                                  value: PCV[0],
                                  groupValue: opcPCV,
                                  onChanged: (value) {
                                    group09(value);
                                  },
                                ),
                                Radio(
                                  fillColor:
                                      MaterialStatePropertyAll(Colors.white),
                                  value: PCV[1],
                                  groupValue: opcPCV,
                                  onChanged: (value) {
                                    group09(value);
                                  },
                                ),
                                Radio(
                                  fillColor:
                                      MaterialStatePropertyAll(Colors.white),
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
                                  fillColor:
                                      MaterialStatePropertyAll(Colors.white),
                                  value: Rotor[0],
                                  groupValue: opcRotor,
                                  onChanged: (value) {
                                    group10(value);
                                  },
                                ),
                                Radio(
                                  fillColor:
                                      MaterialStatePropertyAll(Colors.white),
                                  value: Rotor[1],
                                  groupValue: opcRotor,
                                  onChanged: (value) {
                                    group10(value);
                                  },
                                ),
                                Radio(
                                  fillColor:
                                      MaterialStatePropertyAll(Colors.white),
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
                                  fillColor:
                                      MaterialStatePropertyAll(Colors.white),
                                  value: LiqInj[0],
                                  groupValue: opcLiqInj,
                                  onChanged: (value) {
                                    group11(value);
                                  },
                                ),
                                Radio(
                                  fillColor:
                                      MaterialStatePropertyAll(Colors.white),
                                  value: LiqInj[1],
                                  groupValue: opcLiqInj,
                                  onChanged: (value) {
                                    group11(value);
                                  },
                                ),
                                Radio(
                                  fillColor:
                                      MaterialStatePropertyAll(Colors.white),
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
                                  fillColor:
                                      MaterialStatePropertyAll(Colors.white),
                                  value: Anticongelante[0],
                                  groupValue: opcAnticongelante,
                                  onChanged: (value) {
                                    group12(value);
                                  },
                                ),
                                Radio(
                                  fillColor:
                                      MaterialStatePropertyAll(Colors.white),
                                  value: Anticongelante[1],
                                  groupValue: opcAnticongelante,
                                  onChanged: (value) {
                                    group12(value);
                                  },
                                ),
                                Radio(
                                  fillColor:
                                      MaterialStatePropertyAll(Colors.white),
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
                                  fillColor:
                                      MaterialStatePropertyAll(Colors.white),
                                  value: AceiteDr_Hidra[0],
                                  groupValue: opcAceiteHidra,
                                  onChanged: (value) {
                                    group13(value);
                                  },
                                ),
                                Radio(
                                  fillColor:
                                      MaterialStatePropertyAll(Colors.white),
                                  value: AceiteDr_Hidra[1],
                                  groupValue: opcAceiteHidra,
                                  onChanged: (value) {
                                    group13(value);
                                  },
                                ),
                                Radio(
                                  fillColor:
                                      MaterialStatePropertyAll(Colors.white),
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
                                  fillColor:
                                      MaterialStatePropertyAll(Colors.white),
                                  value: AceiteTran_Auto[0],
                                  groupValue: opcAceiteTran,
                                  onChanged: (value) {
                                    group14(value);
                                  },
                                ),
                                Radio(
                                  fillColor:
                                      MaterialStatePropertyAll(Colors.white),
                                  value: AceiteTran_Auto[1],
                                  groupValue: opcAceiteTran,
                                  onChanged: (value) {
                                    group14(value);
                                  },
                                ),
                                Radio(
                                  fillColor:
                                      MaterialStatePropertyAll(Colors.white),
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
