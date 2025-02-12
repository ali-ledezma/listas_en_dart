void main() {
  // Crear un Map con claves de tipo String y valores de tipo dynamic
  Map<String, dynamic> empleado = {
    'nombre': 'DIEGO ALI LEDEZMA CARBAJAL', // Nombre del empleado
    'id_empleado': 12345, // ID del empleado
    'telefono': '987-654-3210', // Teléfono del empleado
    'salario': 25000.50, // Salario del empleado
    'curp': 'GOZM800101HDFLRN02', // CURP del empleado
    'fecha_ingreso': '2020-05-15', // Fecha de ingreso (formato YYYY-MM-DD)
    'id_sucursal': 789, // ID de la sucursal
    'puesto': 'Desarrolladora Senior' // Puesto del empleado
  };

  // Imprimir el Map completo usando un ciclo for
  print('Información del empleado:');
  for (var clave in empleado.keys) {
    print('$clave: ${empleado[clave]}');
  }

  // Modificar un valor existente (por ejemplo, el salario)
  empleado['salario'] = 27000.75; // Aumento de salario
  print('\nSalario actualizado: \$${empleado['salario']}');

  // Agregar un nuevo campo (por ejemplo, email)
  empleado['email'] = 'maria.gonzalez@empresa.com';
  print('Email agregado: ${empleado['email']}');

  // Imprimir el Map actualizado usando un ciclo for
  print('\nInformación actualizada del empleado:');
  for (var clave in empleado.keys) {
    print('$clave: ${empleado[clave]}');
  }
}