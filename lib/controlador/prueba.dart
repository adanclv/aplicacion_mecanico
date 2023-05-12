class Prueba {
  Map<String, dynamic> datos = {
    'afinacion': {'a': 89.9, 'b': 920},
    'frenos': {'c': 90, 'd': 83},
  };

  void imprimirDatos() {
    for (String key in datos.keys) {
      dynamic value = datos[key];
      if (value is dynamic) {
        print(value);
      }
    }
  }

  double sumar(Map<String, dynamic> a) {
    double sum = 0.0;
    for (var value in a.values) {
      //recorre todos los valores del Map
      print('valores $value');
      if (value is Map<String, dynamic>) {
        for (var subValue in value.values) {
          //recorre los valores de las subllaves
          print('Subvalores $subValue');
          if (subValue is double || subValue is int) {
            // verifica si el valor es double o int
            sum += subValue;
          }
        }
      }
    }

    //   if (value is Map<String, dynamic>) {
    //   for (var subKey in value.keys) {
    //     print("  " + subKey + ": " + value[subKey].toString()); // imprime el nombre de la subllave y su valor
    //   }
    // }

    print('La suma de los valores es: $sum');
    print(datos.values);
    return sum;
  }
}
