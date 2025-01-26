/*
4. GameConsole Class

- Properties: brand, model, releaseYear, isOn
- Constructors:
  - Default (with all properties)
  - Named constructor GameConsole.latestEdition(this.brand, this.model) that defaults releaseYear to current year and isOn to false
- Methods:
  - powerOn(): Sets isOn to true and prints "The console is now ON."
  - powerOff(): Sets isOn to false and prints "The console is now OFF."

 */



class GameConsole{

  //blueprints of properties
  String brand ;
  String model ;
  int releaseYear ;
  bool isOn ;

  /*Constructor to takes (from main() Variable=class(1st_propertyValue, 2ndnd_propertyValue)) and assign the values using "this" keyword here
*/
  GameConsole(this.brand, this.model, this.releaseYear, this.isOn);

  // Remember of syntax to create Name constructor class_name.method_name(this.1st_property, this.2nd_property) , It is use to store
  GameConsole.latestEdition(this.brand, this.model ) :

        releaseYear = DateTime.now().year,
        isOn = false ;

  // powerOn method / function
  powerOn(){
    isOn = true ;
    print('The Console is now ON.');
  }


  // powerOff method / function
  powerOff(){
    isOn = false ;
    print('The Console is now OFF');
  }

}

// From Here main()
void main(){

  /* Taking Game1 = Contra, and values assign from here using variable "contra" to GameConsole_properties with the help of 'this' in constructor and syntax is Class_name(1st_property_value, 2nd_property_value); */
  var contra = GameConsole('Konami', 'Windows', 1987, false);

  /* Taking Game2 = SuperMario, and values assign from here using variable "superMario" to GameConsole_properties in Name constructor .latestEdition(this.brand, this.model) with the help of 'this' and syntax is Class_name.method_name(1st_property_value, 2nd_property_value) and remaining values directly taking from Name constructor GameConsole.latestEdition(): releasrYear, isOn ; and we can also pass this values to print() using syntax ${variable_name.that_property} */
  var superMario = GameConsole.latestEdition('Nintendo', 'Play Station 5');


  // Console ON and OFF of Game Contra,and to access values from main() use syntax ${variable.that_property}
  print('Contra of brand ${contra.brand} and model ${contra.model} releaser in ${contra.releaseYear}');
  contra.powerOn();
  contra.powerOff();

  print('\n'); // Use to create new line

  // Console ON and OFF of Game SuperMario,and to access values from main() use syntax ${variable.that_property}
  print('Super Mario of brand ${superMario.brand} and model ${superMario.model} releaser in ${superMario.releaseYear}');
  superMario.powerOn();
  superMario.powerOff();
}

/*
Contra of brand Konami and model Windows releaser in 1987
The Console is now ON.
The Console is now OFF


SuperMario of brand Nintendo and model Play Station 5 releaser in 2025
The Console is now ON.
The Console is now OFF
*/
