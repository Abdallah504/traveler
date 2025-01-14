class Favourites{
  int? id;
  String? name;
  String? flag;

  Favourites({this.id,this.name,this.flag});
  // convert model to map
  Map<String,dynamic>toMap(){
    return{
      'id':id,
      'name':name,
      'flag':flag
    };
  }


// Fetching data
  factory Favourites.fromMap(Map<String,dynamic>map){
    return Favourites(
        id: map['id'],
        name: map['name'],
        flag: map['flag']
    );
  }


}