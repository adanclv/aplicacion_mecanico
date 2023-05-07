import 'package:flutter/material.dart';
import '../vistas/Registro_clientes.dart';
import 'botton_add_icon.dart';

class Mostrar_BottomSheet extends StatefulWidget {
  @override
  State<Mostrar_BottomSheet> createState() =>
      Mostrar_BottomSheetMyWidgetState();

  void mostrarBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      backgroundColor: Color(0xFFE6EFFF),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(20), topLeft: Radius.circular(20)),
      ),
      builder: (BuildContext context) {
        return Container(
          height: 350,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                padding: EdgeInsets.only(right: 15, top: 10, left: 15),
                height: 40,
                child: GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(Icons.close)),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFFE6EFFF), elevation: 0),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Registro_clientes(opcion: 1),
                    ),
                  ).whenComplete(() => Navigator.pop(context));
                },
                child: BottonAddIcon(
                    iconName: Icons.account_circle_rounded,
                    textName: 'Crear Cliente'),
              ),
              SizedBox(height: 3),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFFE6EFFF), elevation: 0),
                onPressed: () {},
                child: BottonAddIcon(
                    iconName: Icons.airport_shuttle_sharp,
                    textName: 'Agregar Vehiculo'),
              ),
              SizedBox(height: 3),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFFE6EFFF), elevation: 0),
                onPressed: () {},
                child: BottonAddIcon(
                    iconName: Icons.build_circle, textName: 'Agregar Servicio'),
              ),
            ],
          ),
        );
      },
    );
  }
}

class Mostrar_BottomSheetMyWidgetState extends State<Mostrar_BottomSheet> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
