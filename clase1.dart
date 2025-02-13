class figura {
  int _largo;
  int _ancho;

  figura(this._largo, this._ancho);

  void mostrar() {
    print("Largo: $_largo");
    print("Ancho: $_ancho");
  }
  void calcularArea() {
    int area = _largo * _ancho;
    print("Area: $area");
  }
  void calcularPerimetro() {
    int perimetro = 2 * _largo + 2 * _ancho;
    print("Perimetro: $perimetro");
  }
}
void main() {
  print("diego ali ledezma carbajal 22308051281229");
  var rectangulo = figura(10, 5);
  rectangulo.mostrar();
  rectangulo.calcularArea();
  rectangulo.calcularPerimetro();
}