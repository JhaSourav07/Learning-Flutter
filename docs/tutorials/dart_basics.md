# Dart Programming Basics for Flutter

Before diving into Flutter, it's essential to understand Dart programming language fundamentals.

## What is Dart?

Dart is a client-optimized programming language developed by Google. It's the language used to build Flutter applications.

## Key Features
- **Object-oriented** with classes and mixins
- **Strongly typed** with type inference
- **Null safety** (sound null safety)
- **Asynchronous programming** support
- **Garbage collected**

## Basic Syntax

### Variables and Data Types

```dart
// Variable declarations
String name = 'Flutter';
int age = 5;
double height = 1.75;
bool isAwesome = true;

// Type inference (var keyword)
var language = 'Dart'; // String
var year = 2023; // int

// Final and const
final currentTime = DateTime.now(); // Runtime constant
const pi = 3.14159; // Compile-time constant

// Nullable types (null safety)
String? nullableName; // Can be null
String nonNullableName = 'Must have a value';
```

### Functions

```dart
// Basic function
String greet(String name) {
  return 'Hello, $name!';
}

// Arrow functions (for single expressions)
String greetShort(String name) => 'Hello, $name!';

// Optional parameters
void introduce(String name, {int? age, String? city}) {
  print('I am $name');
  if (age != null) print('I am $age years old');
  if (city != null) print('I live in $city');
}

// Default parameter values
void createUser(String name, {bool isActive = true}) {
  print('User: $name, Active: $isActive');
}

// Required named parameters
void login({required String email, required String password}) {
  // Login logic here
}
```

### Classes and Objects

```dart
class Person {
  String name;
  int age;
  
  // Constructor
  Person(this.name, this.age);
  
  // Named constructor
  Person.child(this.name) : age = 0;
  
  // Method
  void introduce() {
    print('Hi, I\'m $name and I\'m $age years old');
  }
  
  // Getter
  bool get isAdult => age >= 18;
  
  // Setter
  set updateAge(int newAge) {
    if (newAge >= 0) age = newAge;
  }
}

// Usage
var person = Person('Alice', 25);
person.introduce(); // Hi, I'm Alice and I'm 25 years old
print(person.isAdult); // true
```

### Collections

```dart
// Lists
List<String> fruits = ['apple', 'banana', 'orange'];
var numbers = [1, 2, 3, 4, 5]; // List<int>

// Maps
Map<String, int> ages = {
  'Alice': 25,
  'Bob': 30,
  'Charlie': 35,
};

// Sets
Set<String> uniqueNames = {'Alice', 'Bob', 'Charlie'};
```

### Control Flow

```dart
// If-else
if (age >= 18) {
  print('Adult');
} else if (age >= 13) {
  print('Teenager');
} else {
  print('Child');
}

// Switch
switch (grade) {
  case 'A':
    print('Excellent');
    break;
  case 'B':
    print('Good');
    break;
  default:
    print('Needs improvement');
}

// Loops
for (int i = 0; i < 5; i++) {
  print(i);
}

for (String fruit in fruits) {
  print(fruit);
}

// While loop
int count = 0;
while (count < 3) {
  print('Count: $count');
  count++;
}
```

### Asynchronous Programming

```dart
// Future - represents a potential value or error
Future<String> fetchUserName() async {
  // Simulate network delay
  await Future.delayed(Duration(seconds: 2));
  return 'John Doe';
}

// Using async/await
void main() async {
  print('Fetching user...');
  String name = await fetchUserName();
  print('User: $name');
}

// Stream - sequence of asynchronous events
Stream<int> countStream() async* {
  for (int i = 1; i <= 5; i++) {
    await Future.delayed(Duration(seconds: 1));
    yield i;
  }
}

// Listening to streams
void listenToStream() {
  countStream().listen((number) {
    print('Number: $number');
  });
}
```

## Flutter-Specific Dart Concepts

### Widget Classes
```dart
// StatelessWidget - immutable
class MyWidget extends StatelessWidget {
  final String title;
  
  const MyWidget({Key? key, required this.title}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Text(title);
  }
}

// StatefulWidget - mutable
class Counter extends StatefulWidget {
  @override
  _CounterState createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int _count = 0;
  
  void _increment() {
    setState(() {
      _count++;
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Count: $_count'),
        ElevatedButton(
          onPressed: _increment,
          child: Text('Increment'),
        ),
      ],
    );
  }
}
```

### Callback Functions
```dart
// Function as parameter
typedef VoidCallback = void Function();
typedef ValueChanged<T> = void Function(T value);

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  
  const CustomButton({
    Key? key,
    required this.text,
    required this.onPressed,
  }) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text(text),
    );
  }
}
```

## Common Dart Patterns in Flutter

### Null Safety
```dart
// Null-aware operators
String? name;
print(name?.length); // Safe navigation
String displayName = name ?? 'Unknown'; // Null coalescing
name ??= 'Default'; // Null-aware assignment

// Null assertion (use carefully!)
String definitelyNotNull = name!;
```

### String Interpolation
```dart
String name = 'Flutter';
int version = 3;
print('Hello $name $version!'); // Hello Flutter 3!
print('Length: ${name.length}'); // Length: 7
```

### Collection Operations
```dart
List<int> numbers = [1, 2, 3, 4, 5];

// Map
List<int> doubled = numbers.map((n) => n * 2).toList();

// Filter
List<int> evenNumbers = numbers.where((n) => n % 2 == 0).toList();

// Reduce
int sum = numbers.reduce((a, b) => a + b);

// Any/Every
bool hasEven = numbers.any((n) => n % 2 == 0);
bool allPositive = numbers.every((n) => n > 0);
```

## Best Practices

1. **Use final and const** when variables won't change
2. **Prefer late initialization** for expensive operations
3. **Use meaningful names** for variables and functions
4. **Handle null safety** properly
5. **Use async/await** for asynchronous operations
6. **Follow Dart naming conventions** (camelCase for variables, PascalCase for classes)

## Next Steps

After mastering these Dart basics:
1. Practice with DartPad online editor
2. Build simple Dart console applications
3. Start with Flutter widgets
4. Learn Flutter-specific patterns
5. Explore advanced Dart features (mixins, extensions, generics)

Remember: Dart is designed to be familiar to developers coming from other languages like Java, C#, or JavaScript, so many concepts will feel natural!