import 'package:aplicacion_mecanico/controlador/Crear_cliente.dart';
import 'package:aplicacion_mecanico/util/container_lastServicio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';

import '../modelo/Terminado.dart';
import '../modelo/Vehiculos.dart';
import 'Registro_clientes.dart';

class Pantalla_clientesInfo extends StatefulWidget {
  final String nombre;
  final String telefono;
  final String calle;
  final String numero;
  final String colonia;
  final String cp;
  const Pantalla_clientesInfo(
      {super.key,
      required this.nombre,
      required this.telefono,
      required this.calle,
      required this.numero,
      required this.colonia,
      required this.cp});

  @override
  State<Pantalla_clientesInfo> createState() => _Pantalla_clientesInfo();
}

List<Vehiculo> carros = [];
List<Terminado> last = [];

class _Pantalla_clientesInfo extends State<Pantalla_clientesInfo> {
  Crear_cliente cc = Crear_cliente();

  @override
  void initState() {
    super.initState();
    carros = cc.vehiculos(widget.nombre);
    if (cc.existeTer(widget.nombre)) {
      last = cc.listahistorial(widget.nombre);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: 10, top: 10, bottom: 5),
          child: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back_rounded,
              size: 25,
              color: Colors.black,
            ),
          ),
        ),
        shape: Border(bottom: BorderSide(color: Colors.white38, width: 0.2)),
        title: Text(
          'Cliente',
          style: TextStyle(color: Colors.black, fontSize: 26),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 20, top: 10, bottom: 10),
            child: TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Registro_clientes(
                      opcion: 2,
                      titulo: 'Agregar Vehiculo',
                    ),
                  ),
                );
              },
              child: Text(
                'Agregar\nVehiculo',
                style: TextStyle(
                    fontSize: 18, letterSpacing: 1, color: Colors.black54),
              ),
            ),
          ),
        ],
        toolbarHeight: 70,
        backgroundColor: Theme.of(context).secondaryHeaderColor,
        systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: Colors.transparent,
            statusBarIconBrightness: Brightness.dark,
            systemNavigationBarColor: Color.fromARGB(255, 19, 29, 39)),
      ),
      backgroundColor: Theme.of(context).secondaryHeaderColor,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            SizedBox(height: 15),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Cliente:',
                    style: TextStyle(fontSize: 16),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Column(
                          children: [
                            Text(
                              widget.nombre,
                              style: TextStyle(fontSize: 20),
                            ),
                            SizedBox(height: 12),
                          ],
                        ),
                      ),
                      Container(
                        child: Column(
                          children: [
                            Text(
                              widget.telefono, //$telefono
                              style: TextStyle(fontSize: 20),
                            ),
                            Text(
                              'Telefono',
                              style: TextStyle(fontSize: 12),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: Text(
                      'Domicilio:', //$domicilio3
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        '${widget.calle},  ',
                        style: TextStyle(fontSize: 20),
                      ),
                      Text(
                        widget.numero,
                        style: TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                  SizedBox(height: 2),
                  Text(
                    '${widget.colonia},  ',
                    style: TextStyle(fontSize: 20),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Text(
                            widget.cp,
                            style: TextStyle(fontSize: 20),
                          ),
                          SizedBox(height: 20),
                        ],
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          elevation: 5,
                          padding:
                              EdgeInsets.symmetric(horizontal: 15, vertical: 8),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15)),
                          backgroundColor: Color.fromARGB(255, 26, 190, 26),
                        ),
                        onPressed: () {
                          launch('tel:${widget.telefono}');
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(width: 5),
                                Text(
                                  'Llamar',
                                  style: TextStyle(
                                    fontSize: 17,
                                    color: Theme.of(context).primaryColor,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                    left: 0,
                                  ),
                                  child: Icon(
                                    Icons.phone_enabled,
                                    color: Colors.black,
                                    size: 17,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.spaceAround,
                  //   children: [
                  //     ElevatedButton(
                  //       style: ElevatedButton.styleFrom(
                  //           padding: EdgeInsets.symmetric(
                  //               horizontal: 15, vertical: 8),
                  //           shadowColor: Colors.transparent,
                  //           backgroundColor: Colors.transparent),
                  //       onPressed: () {},
                  //       child: Column(
                  //         mainAxisAlignment: MainAxisAlignment.center,
                  //         children: [
                  //           Row(
                  //             mainAxisAlignment: MainAxisAlignment.center,
                  //             children: [
                  //               Icon(
                  //                 Icons.delete,
                  //                 color: Colors.red,
                  //                 size: 17,
                  //               ),
                  //               SizedBox(width: 5),
                  //               Text(
                  //                 'Eliminar cliente',
                  //                 style: TextStyle(
                  //                   fontSize: 17,
                  //                   color: Colors.red,
                  //                 ),
                  //               ),
                  //             ],
                  //           ),
                  //         ],
                  //       ),
                  //     ),
                  //     ElevatedButton(
                  //       style: ElevatedButton.styleFrom(
                  //           padding: EdgeInsets.symmetric(
                  //               horizontal: 15, vertical: 8),
                  //           shadowColor: Colors.transparent,
                  //           backgroundColor: Colors.transparent),
                  //       onPressed: () {},
                  //       child: Column(
                  //         mainAxisAlignment: MainAxisAlignment.center,
                  //         children: [
                  //           Row(
                  //             mainAxisAlignment: MainAxisAlignment.center,
                  //             children: [
                  //               Icon(
                  //                 Icons.edit,
                  //                 color: Colors.black,
                  //                 size: 18,
                  //               ),
                  //               SizedBox(width: 5),
                  //               Text(
                  //                 'Editar cliente',
                  //                 style: TextStyle(
                  //                   fontSize: 17,
                  //                   color: Theme.of(context).primaryColor,
                  //                 ),
                  //               ),
                  //             ],
                  //           ),
                  //         ],
                  //       ),
                  //     ),
                  //   ],
                  // ),
                  Text(carros.length > 1 ? 'Vehiculos: ' : 'Vehiculo: ',
                      style: TextStyle(fontSize: 20)),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: carros
                        .map(
                          (e) => Text('${e.marca} ${e.modelo} ${e.year}',
                              style: TextStyle(fontSize: 20)),
                        )
                        .toList(),
                  ),
                  SizedBox(height: 10),
                ],
              ),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40)),
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 20, left: 25),
                          child: Text(
                            'Historial de Servicios',
                            style: TextStyle(
                                fontSize: 26,
                                color: Colors.white,
                                letterSpacing: 2),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    cc.existeTer(widget.nombre)
                        ? Column(
                            children: last
                                .map((e) => Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 20, vertical: 5),
                                      child: Container_lastServicio(
                                          noOrden: e.noOrden,
                                          vehiculo: e.vehiculo,
                                          vin: e.vin),
                                    ))
                                .toList())
                        : Center(
                            child: Text('hoasl'),
                          ),
                    // last.map((e) =>
                    // ElevatedButton(
                    //   onPressed: () {},
                    //   child:
                    //   Container_lastServicio(
                    //     last: last,
                    //   ),
                    // ),),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
