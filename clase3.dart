import 'dart:io';

class Sucursal {
  // Atributos de la clase
  String direccion;
  int numero;
  String correo;
  String telefono;
  String nombre;
  int cantidad_empleados;

  // Constructor
  Sucursal({
    required this.direccion,
    required this.numero,
    required this.correo,
    required this.telefono,
    required this.nombre,
    required this.cantidad_empleados,
  });

  // Función para capturar datos
  void capturarDatos() {
    print("Ingrese los datos de la sucursal:");

    stdout.write("Dirección: ");
    direccion = stdin.readLineSync()!;

    stdout.write("Número: ");
    numero = int.parse(stdin.readLineSync()!);

    stdout.write("Correo: ");
    correo = stdin.readLineSync()!;

    stdout.write("Teléfono: ");
    telefono = stdin.readLineSync()!;

    stdout.write("Nombre: ");
    nombre = stdin.readLineSync()!;

    stdout.write("Cantidad de empleados: ");
    cantidad_empleados = int.parse(stdin.readLineSync()!);
  }

  // Función para mostrar datos
  void mostrarDatos() {
    print("\nDatos de la sucursal:");
    print("Dirección: $direccion");
    print("Número: $numero");
    print("Correo: $correo");
    print("Teléfono: $telefono");
    print("Nombre: $nombre");
    print("Cantidad de empleados: $cantidad_empleados");
  }
}

void main() {
  // Crear un objeto Sucursal
  Sucursal sucursal = Sucursal(
    direccion: '',
    numero: 0,
    correo: '',
    telefono: '',
    nombre: '',
    cantidad_empleados: 0,
  );

  // Llamar a la función para capturar datos
  sucursal.capturarDatos();

  // Llamar a la función para mostrar datos
  sucursal.mostrarDatos();
}