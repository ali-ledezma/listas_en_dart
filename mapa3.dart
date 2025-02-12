void main() {
  // Crear un Map para representar un producto
  Map<String, dynamic> producto = {
    'id_producto': 101, // ID del producto
    'nombre': 'Laptop Gamer', // Nombre del producto
    'marca': 'TechMaster', // Marca del producto
    'stock': 50, // Cantidad en stock
    'id_proveedor': 789, // ID del proveedor
    'notas': 'Producto con garantía de 1 año', // Notas adicionales
    'id_sucursal': 3 // ID de la sucursal
  };
 print("Diego Ali Ledezma Carbajal 22808051281229 gpo 6to J");
  // Imprimir la información del producto usando un ciclo for
  print('Información del producto:');
  for (var clave in producto.keys) {
    print('$clave: ${producto[clave]}');
  }

  // Modificar un valor existente (por ejemplo, el stock)
  producto['stock'] = 45; // Reducción de stock
  print('\nStock actualizado: ${producto['stock']}');

  // Agregar un nuevo campo (por ejemplo, precio)
  producto['precio'] = 1500.00; // Precio del producto
  print('Precio agregado: \$${producto['precio']}');

  // Imprimir la información actualizada del producto usando un ciclo for
  print('\nInformación actualizada del producto:');
  for (var clave in producto.keys) {
    print('$clave: ${producto[clave]}');
  }
}