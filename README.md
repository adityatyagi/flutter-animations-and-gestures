# Flutter Animations And Gestures

This project consists of a flutter app called "Square" which includes user gestures and animations.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

# CREATING SHAPES
In order to create a shape, we need to use `Stack` and `Positioned` widgets.  

STACK - A widget that positions its children relative to the edges of its box. STACK is one of the many Layout Widgets present out there. Other Layout widgets are - Column, Row, ListView.  

POSITIONED - A widget that contrls where a child of stack is positioned.  This is used inside a stack. It has properties like top, bottom, left, right.  

## GET CURRENT ORIENTATION and SIZE of the Mobile Screen
To get the width and height of the mobile screen can be taken from `MediaQuery.of(context)`. This will give us the size and current orientation of the app.

# GESTURE DETECTOR
A `GestureDetector()` is a widget that detects gestures. Gestures like:  
1. onTap()  
2. onDoubleTap()  
3. onLongPress()  
4. onVerticalDragUpdate()  
5. onHorizontalDragUpdate()  



