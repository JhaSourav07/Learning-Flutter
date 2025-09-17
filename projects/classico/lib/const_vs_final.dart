void main(){
  final details = [
    "Raman", // key : value
    21,
    'A',
    true
  ];


  details.add("sourav");
  print(details);

  print("=================================================");

  const info = [
    "Raman", // key : value
    21,
    'A',
    true
  ];
  // info.add("sourav"); // Error: Can't add to a const list
  // info.add("sourav");
  print(info);
}