void main(){
  var details = {
    'name' : 'raman', // key : value
    'age' : 21,
    'section' : 'A',
    'isMale' : true
  };

  print(details); // print full map
  print(details.runtimeType); // print type of map
  print(details.length); // print length of map
  print(details.keys); // print all keys
  print(details.values); // print all values
  print(details['name']);
  print(details['age']);
  print(details['section']);
  print(details['isMale']);
}