# Flutter Learning Notes

## Day 1: Getting Started

### What is Flutter?
- Open-source UI framework by Google
- Cross-platform development (iOS, Android, Web, Desktop)
- Single codebase for multiple platforms
- Uses Dart programming language

### Key Concepts

#### Widgets
- Everything is a widget in Flutter
- Two main types: StatelessWidget and StatefulWidget
- Widget tree represents the UI structure

#### StatelessWidget
- Immutable widgets
- Cannot change their state once created
- Examples: Text, Icon, Image

#### StatefulWidget
- Mutable widgets
- Can change their state during the widget's lifetime
- Have a separate State class
- Examples: Checkbox, TextField, Counter

### Development Environment
- Flutter SDK
- Dart SDK (included with Flutter)
- IDE: Android Studio, VS Code, IntelliJ
- Emulators or physical devices for testing

## Day 2: Basic Widgets

### Layout Widgets
- **Container**: Box model widget with decoration, padding, margins
- **Row**: Arranges children horizontally
- **Column**: Arranges children vertically
- **Stack**: Overlays widgets on top of each other
- **Expanded**: Takes available space in Row/Column

### Material Design Widgets
- **MaterialApp**: App wrapper with Material Design
- **Scaffold**: Basic layout structure
- **AppBar**: Top navigation bar
- **FloatingActionButton**: Floating circular button
- **Card**: Material Design card

### Text and Input
- **Text**: Display text with styling
- **TextField**: User input field
- **RichText**: Text with multiple styles

## Common Patterns

### State Management with setState()
```dart
class _MyWidgetState extends State<MyWidget> {
  int counter = 0;
  
  void incrementCounter() {
    setState(() {
      counter++; // This triggers a rebuild
    });
  }
}
```

### Widget Lifecycle
1. createState() - creates State object
2. initState() - initialization
3. build() - builds widget tree
4. setState() - triggers rebuild
5. dispose() - cleanup

## Tips for Beginners

1. **Start Small**: Begin with simple widgets and gradually add complexity
2. **Hot Reload**: Use hot reload for fast development iterations
3. **Widget Inspector**: Use Flutter Inspector to understand widget tree
4. **Read Documentation**: Flutter docs are excellent and comprehensive
5. **Practice Layouts**: Master Row, Column, Container, and Padding
6. **Understand State**: Learn when to use StatelessWidget vs StatefulWidget

## Useful Resources

- [Flutter Documentation](https://flutter.dev/docs)
- [Dart Language Tour](https://dart.dev/guides/language/language-tour)
- [Flutter Widget Catalog](https://flutter.dev/docs/development/ui/widgets)
- [Material Design Guidelines](https://material.io/design)

## Next Learning Goals

- [ ] Navigation between screens
- [ ] Forms and user input validation
- [ ] HTTP requests and API integration
- [ ] Local storage (SharedPreferences)
- [ ] State management patterns (Provider, Bloc)
- [ ] Animations and transitions