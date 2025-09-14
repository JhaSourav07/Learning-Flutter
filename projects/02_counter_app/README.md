# Counter App

A classic Flutter counter application demonstrating state management with StatefulWidget.

## Learning Objectives

- Understanding StatefulWidget vs StatelessWidget
- Using setState() for state management
- Handling user interactions
- Working with FloatingActionButton
- Layout widgets (Row, Column)

## Features

- ✅ Increment counter
- ✅ Decrement counter (with validation)
- ✅ Reset counter to zero
- ✅ Visual feedback with Material Design

## Key Concepts Learned

### 1. StatefulWidget
- Widgets that maintain mutable state
- Separate State class for business logic
- Lifecycle methods (initState, dispose, etc.)

### 2. setState() Method
- Triggers widget rebuild when state changes
- Essential for reactive UI updates
- Should be called when modifying state variables

### 3. Event Handling
- onPressed callbacks for button interactions
- Method invocation on user actions
- State modification based on user input

### 4. Widget Lifecycle
- createState() - creates State object
- build() - constructs widget tree
- setState() - schedules rebuild

## Code Structure

```
lib/
└── main.dart    # Counter app with StatefulWidget
```

## Enhanced Features

This counter app includes:
- Three action buttons (increment, decrement, reset)
- Input validation (prevents negative numbers)
- Visual styling with colors and icons
- Learning notes embedded in the UI

## How to Run

1. Navigate to the project directory:
   ```bash
   cd projects/02_counter_app
   ```

2. Get dependencies:
   ```bash
   flutter pub get
   ```

3. Run the app:
   ```bash
   flutter run
   ```

## Next Steps

- [ ] Add persistence (save counter value)
- [ ] Multiple counters
- [ ] Counter with custom step values
- [ ] Animations for state changes