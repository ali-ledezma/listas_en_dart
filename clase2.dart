import 'dart:io';

class Producto {
  // Atributos de la clase
  int id_productos;
  String nombre;
  String marca;
  int stock;
  int id_proovedor;
  String notas;
  int id_sucursal;

  // Constructor
  Producto({
    required this.id_productos,
    required this.nombre,
    required this.marca,
    required this.stock,
    required this.id_proovedor,
    required this.notas,
    required this.id_sucursal,
  });

  // Función para capturar datos
  void capturarDatos() {
    print("Ingrese los datos del producto:");

    stdout.write("ID del producto: ");
    id_productos = int.parse(stdin.readLineSync()!);

    stdout.write("Nombre: ");
    nombre = stdin.readLineSync()!;

    stdout.write("Marca: ");
    marca = stdin.readLineSync()!;

    stdout.write("Stock: ");
    stock = int.parse(stdin.readLineSync()!);

    stdout.write("ID del proveedor: ");
    id_proovedor = int.parse(stdin.readLineSync()!);

    stdout.write("Notas: ");
    notas = stdin.readLineSync()!;

    stdout.write("ID de la sucursal: ");
    id_sucursal = int.parse(stdin.readLineSync()!);
  }

  // Función para mostrar datos
  void mostrarDatos() {
    print("\nDatos del producto:");
    print("ID del producto: $id_productos");
    print("Nombre: $nombre");
    print("Marca: $marca");
    print("Stock: $stock");
    print("ID del proveedor: $id_proovedor");
    print("Notas: $notas");
    print("ID de la sucursal: $id_sucursal");
  }
}

void main() {
  // Crear un objeto Producto
  Producto producto = Producto(
    id_productos: 0,
    nombre: '',
    marca: '',
    stock: 0,
    id_proovedor: 0,
    notas: '',
    id_sucursal: 0,
  );

  // Llamar a la función para capturar datos
  producto.capturarDatos();

  // Llamar a la función para mostrar datos
  producto.mostrarDatos();
}