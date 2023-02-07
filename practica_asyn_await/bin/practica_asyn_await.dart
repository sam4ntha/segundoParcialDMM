void main(List<String> arguments) async{
  //Programa asincrono que deba esperar a que el hilo secundario termine 

  //Acciones del hilo principal
  //print('Antes de la petición de datos');
  //print('Esperando el nombre del usuario...');

  //Peticiones al hilo secundario
  //print(getNombre(18)); Así no regresa el valor de la función, solo la instancia.
  //getNombre(18).then(print); Este llamado se comporta como un future normal
  //final userName = await getNombre(18);
  //print('El nombre del usuario es: $userName');

  //Más acciones del hilo principal
  //print('Aquí continuamos con el hilo principal.');

  print('Función asíncrona para saber si son números primos los números dados.');
  final numeroPrimo = await getNumero(4);
  print('¿El número 4 es un número primo?: $numeroPrimo');
}

/*Future<String> getNombre(int id) async{
  return Future.delayed(Duration(seconds: 20), (){
    return 'Margarita';
  }); //Future.delayed
}*/

Future<bool> getNumero(int num) {
  return Future.delayed(Duration(seconds: 4), (){
    int divisor;
    for(divisor = num-1; divisor>1; divisor--){
      if(num % divisor == 0){
        return false;
      }
    }
    return true;
  });
}
