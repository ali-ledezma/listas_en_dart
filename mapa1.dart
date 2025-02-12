
void main(){
   print("Diego Ali Ledezm Carbajal 22808051281229 gpo 6to J");
   Map<int, String> alumnos = {
     1: "Diego",
     2: "Ali",
     3: "Ledezma"};

     print("mapa de alumnos: ");
     print(alumnos);

     print("iterar un map forEach");
      alumnos.forEach((key, value) {
        print("$key, $value");
      });

      print("iterar un map usando ciclo for");
      for (int key in alumnos.keys) {
        print(" ${alumnos[key]}");
      }
     }
