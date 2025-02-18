import 'dart:io';

class Proveedor {
  int? id_proveedor;
  String? nombre;
  String? rfc;
  String? telefono;
  String? direccion;

  // Función para capturar datos del proveedor
  void capturarDatosProveedor() {
    print("Ingrese el ID del proveedor:");
    id_proveedor = int.parse(stdin.readLineSync()!);

    print("Ingrese el nombre del proveedor:");
    nombre = stdin.readLineSync()!;

    print("Ingrese el RFC del proveedor:");
    rfc = stdin.readLineSync()!;

    print("Ingrese el teléfono del proveedor:");
    telefono = stdin.readLineSync()!;

    print("Ingrese la dirección del proveedor:");
    direccion = stdin.readLineSync()!;
  }

  // Función para mostrar datos del proveedor
  void mostrarDatosProveedor() {
    print("\nDatos del proveedor:");
    print("ID: $id_proveedor");
    print("Nombre: $nombre");
    print("RFC: $rfc");
    print("Teléfono: $telefono");
    print("Dirección: $direccion");
  }
}

class Producto extends Proveedor {
  int? id_producto;
  String? nombreProducto;
  String? marca;
  int? stock;
  String? notas;
  int? id_sucursal;
  static int cantidad_productos = 0;

  // Función para capturar datos del producto
  void capturarDatosProducto() {
    // Capturar datos del proveedor (heredado)
    capturarDatosProveedor();

    print("Ingrese el ID del producto:");
    id_producto = int.parse(stdin.readLineSync()!);

    print("Ingrese el nombre del producto:");
    nombreProducto = stdin.readLineSync()!;

    print("Ingrese la marca del producto:");
    marca = stdin.readLineSync()!;

    print("Ingrese el stock del producto:");
    stock = int.parse(stdin.readLineSync()!);

    print("Ingrese las notas del producto:");
    notas = stdin.readLineSync()!;

    print("Ingrese el ID de la sucursal:");
    id_sucursal = int.parse(stdin.readLineSync()!);

    cantidad_productos++; // Incrementar la cantidad de productos
  }

  // Función para mostrar datos del producto
  void mostrarDatosProducto() {
    // Mostrar datos del proveedor (heredado)
    mostrarDatosProveedor();

    print("\nDatos del producto:");
    print("ID: $id_producto");
    print("Nombre: $nombreProducto");
    print("Marca: $marca");
    print("Stock: $stock");
    print("Notas: $notas");
    print("ID Sucursal: $id_sucursal");
    print("Cantidad de productos registrados: ${Producto.cantidad_productos}");
  }
}

class ProductoEspecifico extends Producto {
  // Función para mostrar todos los datos (proveedor y producto)
  void mostrarTodosDatos() {
    mostrarDatosProducto(); // Llama al método de la clase base (Producto)
  }
}

void main() {
  // Crear una instancia de ProductoEspecifico
  ProductoEspecifico productoEspecifico = ProductoEspecifico();

  // Capturar los datos del producto y proveedor
  print("Captura de datos para el producto y proveedor:");
  productoEspecifico.capturarDatosProducto();

  // Mostrar todos los datos (proveedor y producto)
  productoEspecifico.mostrarTodosDatos();
}