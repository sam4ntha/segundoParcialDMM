void main(List<String> arguments) {
  //Iniciando y usando un objeto de la clase Gato
  Gato garfield = Gato();
  print('Mi nombre es Garfield');
  garfield.yoSoy(); //Función de la clase Gato
  garfield.InfoAnimal(); //Función de la clase Animal
  garfield.InfoMamifero(); //Función de la clase Mamífero
  garfield.caminar(); //Función de la clase Caminante
  print('____________________________');
  Pato juan = Pato();
  print('Mi nombre es Juan');
  juan.yoSoy();
  juan.InfoAnimal();
  juan.InfoAve();
  juan.caminar();
  juan.nadar();
  juan.volar();
  print('_____________________________');
  Paloma gorogoro = Paloma();
  print('Mi nombre es Gorogoro');
  gorogoro.yoSoy();
  gorogoro.InfoAnimal();
  gorogoro.InfoAve();
  gorogoro.caminar();
  gorogoro.volar();
  //Cuando se escucha la palabra es, se utiliza extends / pertenece a esa clase
  //Cuando se escucha la palabra tiene, se utiliza la palabra with / la propiedad que pertenece a esa clase
  print('_____________________________');
  Murcielago noDracula = Murcielago();
  noDracula.yoSoy();
  noDracula.InfoAnimal();
  noDracula.InfoMamifero();
  noDracula.volar();
  print('_____________________________');
  Delfin elDelfin = Delfin();
  elDelfin.yoSoy();
  elDelfin.InfoAnimal();
  elDelfin.InfoMamifero();
  elDelfin.nadar();
  print('_____________________________');
  Tiburon lenny = Tiburon();
  lenny.yoSoy();
  lenny.InfoAnimal();
  lenny.infoPez();
  lenny.nadar();
  print('Soy un tiburón vegano, y mi amigo es Óscar. ');
  print('_____________________________');
  PezVolador invencible = PezVolador();
  invencible.yoSoy();
  invencible.InfoAnimal();
  invencible.infoPez();
  invencible.nadar();
  invencible.volar();
}

abstract class Animal{ //Contrato-Plantilla
  void InfoAnimal();
}

abstract class Mamifero extends Animal{
  void InfoMamifero();
}

abstract class Ave extends Animal{
  void InfoAve();
}

abstract class Pez extends Animal{
  void infoPez();
}

class Caminante{
  void caminar() => print('¡Puedo caminar!');
}

class Nadador{
  void nadar() => print('¡Puedo nadar!');
}

class Volador{
  void volar() => print('¡Puedo volar!');
}

//Creación de las clases de los tipos específicos de animales
class Gato extends Mamifero with Caminante{
  //Métodos heredados de Animal y Mamífero
  @override
  void InfoAnimal(){
    print('Soy un Animal');
  }
  @override
  void InfoMamifero(){
    print('Soy un Mamífero');
  }

  //Método de la clase gato
  void yoSoy() => print('Soy un Michi');
}

class Paloma extends Ave with Caminante, Volador{
  @override
  void InfoAnimal() {
    print('Soy un Animal');
  }

@override
void InfoAve(){
  print('Soy un Ave');
}

void yoSoy() => print('Soy una Paloma');
}

class Pato extends Ave with Caminante, Volador, Nadador{
  @override
  void InfoAnimal(){
    print('¡Soy un Animal!');
  }
  
  @override
  void InfoAve(){
    print('¡Soy un Ave!'); 
  }

  void yoSoy() => print('¡Soy un Patito!');
}

class Murcielago extends Mamifero with Volador{
  @override 
  void InfoAnimal(){
    print('Soy un Animal');
  }

  @override 
  void InfoMamifero(){
    print('Soy un Mamífero');
  }

  void yoSoy()=> print('Soy un Murciélago, pero no un vampiro.');
}

class Delfin extends Mamifero with Nadador{
  @override 
  void InfoAnimal(){
    print('Soy un Animal');
  }

  @override 
  void InfoMamifero(){
    print('Soy un mamífero');
  }

  void yoSoy() => print('Soy un delfín');
}

class Tiburon extends Pez with Nadador{
  @override 
  void InfoAnimal(){
    print('Soy un Animal');
  }

  @override 
  void infoPez(){
    print('Soy un pez');
  }

  void yoSoy() => print('Ningún óscar me asusta, soy un tiburón');
}

class PezVolador extends Pez with Nadador, Volador{
  @override 
  void InfoAnimal(){
    print('Soy un Animal');
  }

  @override 
  void infoPez(){
    print('Soy un Pez');
  }

  void yoSoy() => print('Soy un pez que vuela, invencible.');
}