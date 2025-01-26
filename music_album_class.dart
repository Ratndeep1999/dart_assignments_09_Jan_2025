

/*
2. MusicAlbum Class

- Properties: albumName, artist, releaseYear
- Constructors:
  - Default (with all three properties)
  - Named constructor MusicAlbum.currentHit() that sets releaseYear to the current year by default
- Methods:
  - play(): Prints "Now playing [albumName] by [artist]..."
  - albumAge(): Prints "Album is X years old." based on the current year.

 */



class MusicAlbum {

  // Blueprints of class Properties
  String albumName ;
  String artist ;
  int releaseYear ;

  // Constructor
  MusicAlbum(this.albumName, this.artist, this.releaseYear );

  currentHit(){
    // initializes the properties without Values
//     albumName ;
//     artist ;  if we not given this then also OK
    releaseYear = DateTime.now().year ;
  }

  void play(){
    print('Now playing $albumName by $artist ...');
  }

  void albumAge(){
    int currentYear = DateTime.now().year ;
    int age = currentYear  - releaseYear ;
    print('Album is $age years Old.');
  }
}

// main Function
void main(){

  dynamic musicAlbum = MusicAlbum('"Thoda Toda Payr Houa Tumse...."', 'Ratndeep', 2021);
  print(musicAlbum);

  //
  musicAlbum.play();

  //
  musicAlbum.albumAge();
}

/*
 Instance of 'MusicAlbum'
 Now playing "Thoda Toda Payr Houa Tumse...." by Ratndeep ...
 Album is 4 years Old.
*/
