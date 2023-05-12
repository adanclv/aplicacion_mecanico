import 'dart:io';
import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hive/hive.dart';
import 'package:open_file/open_file.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pdf/pdf.dart';
import 'package:printing/printing.dart';
import 'package:pdf/widgets.dart' as pw;

import '../modelo/Terminado.dart';
import '../modelo/final.dart';
import 'mycategory.dart';
import '../util/container_Facturacion.dart';

List<Finals> lista = [];
String vehiculo = '';
String nombre = '';
String noOrden = '';
String total = '';

void aver() {
  Box<Terminado> box = Hive.box<Terminado>('terminadosBox');
  List<Terminado> sortedList = box.values.toList();

  Terminado ultimoTerminado = sortedList.last;
  vehiculo = ultimoTerminado.vehiculo;
  nombre = ultimoTerminado.nombre;
  noOrden = ultimoTerminado.noOrden;
  lista = ultimoTerminado.lista;
  total = ultimoTerminado.total.toString();
  print(lista);
  //return vehiculo;
}

final headers = ['Descripcion', 'Precio'];
final data = lista.map((e) {
  return [e.dato, e.precio];
}).toList();

Future<Uint8List> generatePdf(final PdfPageFormat format) async {
  final doc = pw.Document(title: 'Flutter School');
  final logoImage = pw.MemoryImage(
      (await rootBundle.load('assets/logo_sociedad.png')).buffer.asUint8List());
  final logoMeca = pw.MemoryImage(
      (await rootBundle.load('assets/logo_meca.png')).buffer.asUint8List());
  final footerImage = pw.MemoryImage(
      (await rootBundle.load('assets/piedepagina.jpg')).buffer.asUint8List());
  final logope = pw.MemoryImage(
      (await rootBundle.load('assets/logo_size.jpg')).buffer.asUint8List());
  final font = await rootBundle.load('assets/open-sans.regular.ttf');
  final ttf = pw.Font.ttf(font);
  aver();
  final pageTheme = await _myPageTheme(format);
  doc.addPage(
    pw.MultiPage(
      pageTheme: pageTheme,
      header: (final context) => pw.Row(
        mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
        children: [
          pw.Image(
            alignment: pw.Alignment.topLeft,
            logoMeca,
            fit: pw.BoxFit.contain,
            width: 180,
          ),
          pw.Column(
            children: [
              pw.Text(
                'Servicio Mecanico\nAUTOMOTRIZ MARTINEZ',
                style: pw.TextStyle(font: ttf, fontSize: 15),
              ),
            ],
          ),
          pw.Container(
            child: pw.Column(
              children: [
                pw.Container(
                  child: pw.Text(
                    'Factura',
                    style: pw.TextStyle(font: ttf, fontSize: 10),
                  ),
                ),
                pw.Container(
                  child: pw.Text(
                    'No. $noOrden',
                    style: pw.TextStyle(font: ttf, fontSize: 10),
                  ),
                ),
              ],
            ),
          ),
          pw.SizedBox(width: 20),
        ],
      ),
      footer: (final context) =>
          pw.Image(footerImage, fit: pw.BoxFit.scaleDown),
      build: (final context) => [
        pw.Container(
          padding: const pw.EdgeInsets.only(left: 30, bottom: 20),
          child: pw.Column(
            crossAxisAlignment: pw.CrossAxisAlignment.center,
            mainAxisAlignment: pw.MainAxisAlignment.start,
            children: [
              pw.Padding(padding: const pw.EdgeInsets.only(top: 20)),
              pw.Row(
                crossAxisAlignment: pw.CrossAxisAlignment.start,
                mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                children: [
                  pw.Column(
                    crossAxisAlignment: pw.CrossAxisAlignment.start,
                    children: [
                      pw.Text(
                          'Direccion: Oaxaca #501, Col. Fco. Javier Mina, 89318, Tampico, Tams'),
                      pw.Text('Telefonos: 833-228-8884  y  833-267-6594'),
                      pw.Text(
                          'Reparacion de Motores, Suspensiones, Servicios de Frenos, Afinaciones FuelInjection, \nDiagnostico con Scanner OBD, Juntas Homocineticas, Bombas Hidraulicas y \nCremalleras de Direccion'),
                    ],
                  ),

                  pw.SizedBox(height: 70),
                  // pw.Column(
                  //   crossAxisAlignment: pw.CrossAxisAlignment.start,
                  //   children: [
                  //     pw.Text('0012 345 6789'),
                  //     UrlText('myFlutterSchool', 'myFlutterSchool@gmail.com'),
                  //     UrlText('flutter tutorial', '@flutter jijja'),
                  //   ],
                  // ),
                  pw.SizedBox(height: 70),
                  pw.BarcodeWidget(
                    data: 'Flutter School',
                    width: 40,
                    height: 40,
                    barcode: pw.Barcode.qrCode(),
                    drawText: false,
                  ),
                  pw.Padding(padding: pw.EdgeInsets.zero),
                ],
              ),
            ],
          ),
        ),
        pw.Padding(
          padding: pw.EdgeInsets.only(left: 25),
          child: pw.Text(
            'Cotizacion para Suspension, Condiciones de Motor y Sistema de Enfriamiento',
            style: pw.TextStyle(font: ttf, fontSize: 15),
          ),
        ),
        pw.Padding(
          padding: pw.EdgeInsets.only(left: 25),
          child: pw.Text(
            'Vehiculo:',
            style: pw.TextStyle(
              font: ttf,
              fontSize: 8,
            ),
          ),
        ),
        pw.Padding(
          padding: pw.EdgeInsets.only(left: 25),
          child: pw.Text(
            '$vehiculo',
            style: pw.TextStyle(
              font: ttf,
              fontSize: 15,
            ),
          ),
        ),
        pw.Padding(
          padding: pw.EdgeInsets.only(left: 25),
          child: pw.Text(
            'Cliente:',
            style: pw.TextStyle(
              font: ttf,
              fontSize: 8,
            ),
          ),
        ),
        pw.Padding(
          padding: pw.EdgeInsets.only(left: 25),
          child: pw.Text(
            '$nombre',
            style: pw.TextStyle(font: ttf, fontSize: 15),
          ),
        ),
        pw.SizedBox(height: 20),
        pw.Padding(
          padding: pw.EdgeInsets.symmetric(horizontal: 25),
          child: pw.Table.fromTextArray(
              data: data,
              headers: headers,
              border: null,
              headerStyle: pw.TextStyle(fontWeight: pw.FontWeight.bold),
              headerDecoration: pw.BoxDecoration(
                color: PdfColor.fromInt(0xFFE6EFFF),
              ),
              cellAlignments: {
                0: pw.Alignment.centerLeft,
                1: pw.Alignment.center,
              }),
        ),
        pw.SizedBox(height: 10),
        pw.Container(
          alignment: pw.Alignment.centerRight,
          padding: pw.EdgeInsets.only(right: 70),
          child: pw.Text(
            'Total: \$$total',
            style: pw.TextStyle(
                font: ttf, fontSize: 18, fontWeight: pw.FontWeight.bold),
          ),
        ),
      ],
    ),
  );
  return doc.save();
}

Future<pw.PageTheme> _myPageTheme(PdfPageFormat format) async {
  final logoImage = pw.MemoryImage(
      (await rootBundle.load('assets/logo_sociedad.png')).buffer.asUint8List());
  return pw.PageTheme(
    margin: const pw.EdgeInsets.symmetric(
        horizontal: 1 * PdfPageFormat.cm, vertical: 0.5 * PdfPageFormat.cm),
    textDirection: pw.TextDirection.ltr,
    orientation: pw.PageOrientation.portrait,
    buildBackground: (final context) => pw.FullPage(
      ignoreMargins: true,
      child: pw.Watermark(
        angle: 20,
        child: pw.Opacity(
          opacity: 05,
          child: pw.Image(
              alignment: pw.Alignment.center, logoImage, fit: pw.BoxFit.cover),
        ),
      ),
    ),
  );
}

Future<void> saveAsFile(
  final BuildContext context,
  final LayoutCallback build,
  final PdfPageFormat pageFormat,
) async {
  final bytes = await build(pageFormat);

  final appDocDir = await getApplicationDocumentsDirectory();
  final appDocPath = appDocDir.path;
  final file = File('$appDocPath/document.pdf');
  print('save as file ${file.path}....');
  await file.writeAsBytes(bytes);
  await OpenFile.open(file.path);
}

void showPrintedToast(final BuildContext context) {
  ScaffoldMessenger.of(context).showSnackBar(
    const SnackBar(
      content: Text('Document printed successfully'),
    ),
  );
}

void showSharedToast(final BuildContext context) {
  ScaffoldMessenger.of(context).showSnackBar(
    const SnackBar(
      content: Text('Document shared successfully'),
    ),
  );
}
