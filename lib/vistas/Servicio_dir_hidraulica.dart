import 'package:flutter/material.dart';

class Servicio_dir_hidraulica extends StatefulWidget {
  const Servicio_dir_hidraulica({super.key});

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
  String? opcFuga;
  String? opcConRuido;
  String? opcAltaPresion;
  String? opcRetorno;
  String? opcLcremallera;
  String? opcRcremallera;

  void group01(values) {
    setState(() {
      opcFuga = values.toString();
    });
  }

  void group02(values) {
    setState(() {
      opcConRuido = values.toString();
    });
  }

  void group03(values) {
    setState(() {
      opcAltaPresion = values.toString();
    });
  }

  void group04(values) {
    setState(() {
      opcRetorno = values.toString();
    });
  }

  void group05(values) {
    setState(() {
      opcLcremallera = values.toString();
    });
  }

  void group06(values) {
    setState(() {
      opcRcremallera = values.toString();
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
                                  fillColor:
                                      MaterialStatePropertyAll(Colors.white),
                                  value: Fuga[0],
                                  groupValue: opcFuga,
                                  onChanged: (value) {
                                    group01(value);
                                  },
                                ),
                                Radio(
                                  fillColor:
                                      MaterialStatePropertyAll(Colors.white),
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
                                  fillColor:
                                      MaterialStatePropertyAll(Colors.white),
                                  value: ConRuido[0],
                                  groupValue: opcConRuido,
                                  onChanged: (value) {
                                    group02(value);
                                  },
                                ),
                                Radio(
                                  fillColor:
                                      MaterialStatePropertyAll(Colors.white),
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
                                  fillColor:
                                      MaterialStatePropertyAll(Colors.white),
                                  value: AltaPresion[0],
                                  groupValue: opcAltaPresion,
                                  onChanged: (value) {
                                    group03(value);
                                  },
                                ),
                                Radio(
                                  fillColor:
                                      MaterialStatePropertyAll(Colors.white),
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
                                  fillColor:
                                      MaterialStatePropertyAll(Colors.white),
                                  value: Retorno[0],
                                  groupValue: opcRetorno,
                                  onChanged: (value) {
                                    group04(value);
                                  },
                                ),
                                Radio(
                                  fillColor:
                                      MaterialStatePropertyAll(Colors.white),
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
                                  fillColor:
                                      MaterialStatePropertyAll(Colors.white),
                                  value: Lcremallera[0],
                                  groupValue: opcLcremallera,
                                  onChanged: (value) {
                                    group05(value);
                                  },
                                ),
                                Radio(
                                  fillColor:
                                      MaterialStatePropertyAll(Colors.white),
                                  value: Lcremallera[1],
                                  groupValue: opcLcremallera,
                                  onChanged: (value) {
                                    group05(value);
                                  },
                                ),
                                Radio(
                                  fillColor:
                                      MaterialStatePropertyAll(Colors.white),
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
                                  fillColor:
                                      MaterialStatePropertyAll(Colors.white),
                                  value: Rcremallera[0],
                                  groupValue: opcRcremallera,
                                  onChanged: (value) {
                                    group06(value);
                                  },
                                ),
                                Radio(
                                  fillColor:
                                      MaterialStatePropertyAll(Colors.white),
                                  value: Rcremallera[1],
                                  groupValue: opcRcremallera,
                                  onChanged: (value) {
                                    group06(value);
                                  },
                                ),
                                Radio(
                                  fillColor:
                                      MaterialStatePropertyAll(Colors.white),
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
