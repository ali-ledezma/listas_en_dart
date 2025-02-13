class Producto {
  // Atributos de la clase
  int id_producto;
  String nombre;
  String marca;
  int stock;
  int id_proovedor;
  String notas;
  int id_sucursal;

  // Constructor
  Producto(this.id_producto, this.nombre, this.marca, this.stock, this.id_proovedor, this.notas, this.id_sucursal);

  // Función para capturar datos
  void capturarDatos(int id_producto, String nombre, String marca, int stock, int id_proovedor, String notas, int id_sucursal) {
    this.id_producto = id_producto;
    this.nombre = nombre;
    this.marca = marca;
    this.stock = stock;
    this.id_proovedor = id_proovedor;
    this.notas = notas;
    this.id_sucursal = id_sucursal;
  }

  // Función para mostrar datos
  void mostrarDatos() {
    print('ID Producto: $id_producto');
    print('Nombre: $nombre');
    print('Marca: $marca');
    print('Stock: $stock unidades');
    print('ID Proveedor: $id_proovedor');
    print('Notas: $notas');
    print('ID Sucursal: $id_sucursal');
  }
}

class Proveedor {
  // Atributos de la clase
  int id_proovedor;
  String nombre;
  String rfc;
  String telefono;
  String direccion;

  // Constructor
  Proveedor(this.id_proovedor, this.nombre, this.rfc, this.telefono, this.direccion);

  // Función para capturar datos
  void capturarDatos(int id_proovedor, String nombre, String rfc, String telefono, String direccion) {
    this.id_proovedor = id_proovedor;
    this.nombre = nombre;
    this.rfc = rfc;
    this.telefono = telefono;
    this.direccion = direccion;
  }

  // Función para mostrar datos
  void mostrarDatos() {
    print('ID Proveedor: $id_proovedor');
    print('Nombre: $nombre');
    print('RFC: $rfc');
    print('Teléfono: $telefono');
    print('Dirección: $direccion');
  }
}

class Cliente {
  // Atributos de la clase
  int id_cliente;
  String nombre;
  String rfc;
  String correo;

  // Constructor
  Cliente(this.id_cliente, this.nombre, this.rfc, this.correo);

  // Función para capturar datos
  void capturarDatos(int id_cliente, String nombre, String rfc, String correo) {
    this.id_cliente = id_cliente;
    this.nombre = nombre;
    this.rfc = rfc;
    this.correo = correo;
  }

  // Función para mostrar datos
  void mostrarDatos() {
    print('ID Cliente: $id_cliente');
    print('Nombre: $nombre');
    print('RFC: $rfc');
    print('Correo: $correo');
  }
}

void main() {
  // Crear un objeto de la clase Producto
  var producto = Producto(0, '', '', 0, 0, '', 0);

  // Capturar datos del producto
  producto.capturarDatos(
    1, // id_producto
    'Laptop HP', // nombre
    'HP', // marca
    50, // stock
    101, // id_proovedor
    'Producto en oferta', // notas
    1 // id_sucursal
  );

  // Mostrar los datos del producto
  print('Datos del Producto:');
  producto.mostrarDatos();
  print(''); // Espacio en blanco para separar las salidas

  // Crear un objeto de la clase Proveedor
  var proveedor = Proveedor(0, '', '', '', '');

  // Capturar datos del proveedor
  proveedor.capturarDatos(
    101, // id_proovedor
    'Tecnología S.A.', // nombre
    'TEC123456789', // rfc
    '555-1234-5678', // telefono
    'Calle Tecnológica 456' // direccion
  );

  // Mostrar los datos del proveedor
  print('Datos del Proveedor:');
  proveedor.mostrarDatos();
  print(''); // Espacio en blanco para separar las salidas

  // Crear un objeto de la clase Cliente
  var cliente = Cliente(0, '', '', '');

  // Capturar datos del cliente
  cliente.capturarDatos(
    1001, // id_cliente
    'Juan Pérez', // nombre
    'PERJ901234567', // rfc
    'juan.perez@example.com' // correo
  );

  // Mostrar los datos del cliente
  print('Datos del Cliente:');
  cliente.mostrarDatos();
}