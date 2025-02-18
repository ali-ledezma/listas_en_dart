import 'dart:io';

class Empleado {
  int? id_empleado;
  String? telefono;
  double? salario;
  String? nombre;
  String? correo;
  String? direccion;
  static int cantidad_empleados = 0;

  // Función para capturar datos desde la interfaz
  void capturarDatos() {
    print("Ingrese el ID del empleado:");
    id_empleado = int.parse(stdin.readLineSync()!);

    print("Ingrese el teléfono:");
    telefono = stdin.readLineSync()!;

    print("Ingrese el salario:");
    salario = double.parse(stdin.readLineSync()!);

    print("Ingrese el nombre:");
    nombre = stdin.readLineSync()!;

    print("Ingrese el correo:");
    correo = stdin.readLineSync()!;

    print("Ingrese la dirección:");
    direccion = stdin.readLineSync()!;

    cantidad_empleados++; // Incrementar la cantidad de empleados
  }
}

// Clase Pedro que hereda de Empleado
class Pedro extends Empleado {
  // Función para mostrar los datos
  void mostrarDatos() {
    print("\nDatos del empleado Pedro:");
    print("ID: $id_empleado");
    print("Teléfono: $telefono");
    print("Salario: $salario");
    print("Nombre: $nombre");
    print("Correo: $correo");
    print("Dirección: $direccion");
    print("Cantidad de empleados registrados: ${Empleado.cantidad_empleados}");
  }
}

void main() {
  // Crear una instancia de Pedro
  Pedro pedro = Pedro();

  // Capturar los datos del empleado Pedro
  print("Captura de datos para Pedro:");
  pedro.capturarDatos();

  // Mostrar los datos de Pedro
  pedro.mostrarDatos();
}