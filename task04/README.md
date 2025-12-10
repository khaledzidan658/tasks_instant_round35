# Task 4: Flutter Student Code Screen

## 📱 Project Description
Create a Flutter application that displays a student's unique code in the top-left corner of the screen. The application consists of two main Dart files with a simple file structure.

## 🎯 Objectives
- Practice basic Flutter project structure
- Create multi-file Flutter application
- Understand widget positioning without centering
- Implement simple screen layouts

## 📋 Requirements

### 1. File Structure
```
lib/
├── main.dart          # Application entry point
└── 35_00.dart         # Student screen widget (named after student ID)
```

### 2. App Structure
- **main.dart**: Contains the `MaterialApp` and main widget
- **35_00.dart**: Contains the student screen widget

### 3. Screen Design
- **AppBar**: 
  - Title: "instant" (centered)
  - Search icon in top right corner
  - Default blue background
  
- **Body**:
  - Single `Text` widget displaying: `35_00`
  - Text appears in **top-left corner** of the body
  - No `Center` widget wrapping the text
  - No additional styling (use default text style)
  - No padding or margins (text should start at top-left edge)


## 📝 File Specifications

### File 1: `lib/35_00.dart`
- **Class Name**: `StudentScreen35_00`
- **Type**: `StatelessWidget`
- **Body Content**: Direct `Text('35_00')` widget (not wrapped in any layout widget)
- **AppBar**: Centered "instant" title with search icon
- **Key Point**: Body contains only `Text('35_00')` with no parent widgets

### File 2: `lib/main.dart`
- **Class Name**: `StudentCodeApp`
- **Type**: `StatelessWidget`
- **Purpose**: Application entry point
- **Imports**: `35_00.dart` file
- **Home Screen**: `StudentScreen35_00()`

## ✅ Acceptance Criteria

- [ ] Two Dart files exist: `main.dart` and `35_00.dart`
- [ ] `35_00.dart` contains a complete `StatelessWidget`
- [ ] `main.dart` imports and uses the widget from `35_00.dart`
- [ ] AppBar displays "instant" centered
- [ ] Search icon appears in AppBar actions
- [ ] Body contains ONLY a `Text('35_00')` widget
- [ ] Text is **NOT** wrapped in `Center`, `Container`, `Padding`, or any other widget
- [ ] Text appears in the top-left corner of the screen
- [ ] Text has no custom styling (uses defaults)
- [ ] App compiles and runs without errors

## 📱 Expected Output

```
┌─────────────────────────────────┐
│       [instant]        [🔍]     │
├─────────────────────────────────┤
│35_00                            │ ← Text starts at top-left corner
│                                 │
│                                 │
│                                 │
│                                 │
│                                 │
│                                 │
│                                 │
│                                 │
└─────────────────────────────────┘
```

**Important**: The text "35_00" should appear exactly in the top-left corner of the body area, immediately below the AppBar, starting at the left edge.

## 🎯 Learning Objectives

1. **Widget Behavior**: Understanding how widgets position themselves by default
2. **File Organization**: Working with multiple Dart files
3. **Minimal UI**: Creating screens with minimal widgets
4. **Default Positioning**: Observing Flutter's default widget alignment
5. **Import System**: Connecting files through imports

## ⚠️ Key Concept
In Flutter, when you place a `Text` widget directly in the `body` of a `Scaffold` without any layout widget wrapping it:
- The text will align to the **top-left corner** by default
- It will use the default text style
- It will have no padding or margins
- This demonstrates Flutter's default widget positioning behavior

## 🔧 Troubleshooting Tips

1. **Text Not Visible**: Ensure `Text('35_00')` is directly in the `body` property
2. **Import Error**: Check both files are in the same `lib` directory
3. **Hot Reload**: Save both files and use hot reload
4. **Position Check**: Text should be at top-left, not centered

## 📚 Understanding the Layout
By using only a `Text` widget without wrappers, you're observing:
- Flutter's default alignment (top-left for non-layout widgets in Scaffold body)
- The natural flow of widgets in the widget tree
- How minimal widget trees behave

This task focuses on understanding basic widget positioning and file structure in Flutter without complex layouts or styling.