

void main(){

  var names = ['raman', 'rohit', 'rahul'];
  print(names);
  print(names.runtimeType);
  print(names[0]);
  print(names.length);
  print(names.isEmpty);
  print(names.isNotEmpty);
  names.add('ramesh');
  print(names);
  print(names.elementAt(1));
}