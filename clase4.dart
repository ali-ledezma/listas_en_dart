import 'dart:io';

class Cliente {
  // Atributos de la clase
  int id_cliente;
  String nombre;
  String rfc;
  String correo;

  // Constructor
  Cliente({
    required this.id_cliente,
    required this.nombre,
    required this.rfc,
    required this.correo,
  });

  // Función para capturar datos
  void capturarDatos() {
    print("Ingrese los datos del cliente:");

    stdout.write("ID del cliente: ");
    id_cliente = int.parse(stdin.readLineSync()!);

    stdout.write("Nombre: ");
    nombre = stdin.readLineSync()!;

    stdout.write("RFC: ");
    rfc = stdin.readLineSync()!;

    stdout.write("Correo: ");
    correo = stdin.readLineSync()!;
  }

  // Función para mostrar datos
  void mostrarDatos() {
    print("\nDatos del cliente:");
    print("ID del cliente: $id_cliente");
    print("Nombre: $nombre");
    print("RFC: $rfc");
    print("Correo: $correo");
  }
}

void main() {
  // Crear un objeto Cliente
  Cliente cliente = Cliente(
    id_cliente: 0,
    nombre: '',
    rfc: '',
    correo: '',
  );

  // Llamar a la función para capturar datos
  cliente.capturarDatos();

  // Llamar a la función para mostrar datos
  cliente.mostrarDatos();
}