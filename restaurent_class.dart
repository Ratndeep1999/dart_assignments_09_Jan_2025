

/*
3. Restaurant Class

- Properties: name, location, openedYear
- Constructors:
  - Default (with all three properties)
  - Named constructor Restaurant.newBranch(this.name, this.location) that sets openedYear to the current year
- Methods:
  - openDoor(): Prints a message such as "Restaurant [name] is now open for service at [location]."
  - yearsInBusiness(): Prints how many years the restaurant has been operating

 */



class Restaurant {

  // Blueprints os class Property
  String name ;
  String location ;
  int openedYear ;

  /*
   mandetory to create because Values always pass from here from main function,      Where we create Objects (see in main() function)
   */

  Restaurant(this.name, this.location, this.openedYear );


  //
  Restaurant.newBranch(this.name, this.location, this.openedYear ){
    //
    name ;
    location ;
    openedYear = DateTime.now().year ;
  }

  //
  openDoor(){
    print('Restaurant $name is now open for service at $location.');
  }

  //
  yearsInBusiness(){
    int currentYear = DateTime.now().year ;
    int years = currentYear - openedYear ;
    print('Restaurant has been operating from last $years years ');
  }

}

void main(){

  //
  var restaurent1 = Restaurant('" Garlic_Pest "', 'KK Market, Kattraj road, near main market', 2021);

  /* if i give Restaurant.newBranch(Parameters pass) and pass values from here then it's always takes values to that function
  ex. [var restaurent1 = Restaurant.newBranch('" Garlic_Pest "', 'KK Market, Kattraj road, near main market', 2021);] So, 2021 not taken from here default value takes from that function and it will print.
  */


  //
  print(restaurent1);

  //
  restaurent1.openDoor();

  //
  restaurent1.yearsInBusiness();

}


/*
Instance of 'Restaurant'
Restaurant " Garlic_Pest " is now open for service at KK Market, Kattraj road, near main market.
Restaurant has been operating from last 4 years
*/
