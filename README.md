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

# ANIMATIONS
We use `AnimationController` and `CurvedAnimation` to create animations.  

AnimationController - It generates a new value whenever the hardware is ready for a new frame. It generates number from 0.0 to 1.0  
The `vsync` property makes sure that if the object is not visible, it doesnt waste resources.  

CurvedAnimation - It defines the animation's progress as a Num-Linear curve. 

`addListner()` is called whenever the value of the animation changes. Here we call `setState()` to update the UI.  

`forward()` begins the animation.  

![image](https://user-images.githubusercontent.com/18363595/79575905-203b2c80-80e0-11ea-89c9-b5fd2ee2dcd5.png)


## STATEFUL WIDGET LIFECYCLE  

1. initState - When the state is created. Used to perform initializations. Called only once.  

2. build - Everytime you call the `setState()`, the build is called.  

3. dispose - At the end of the lifetime, we can override the dispose method. Helps to free resources.  

![image](https://user-images.githubusercontent.com/18363595/79576305-aeafae00-80e0-11ea-8cee-005e5d0db2fa.png)  

# MIXINS
In OOP, a MIXIN is a class that contains methods that can be used by other classes without having to be the parent class of those other classes. That's why we use `with` keyword while using a MIXIN in Flutter, because in a way we are INCLUDING a class and not INHERTING from it.  

For example:  

The `SingleTickerProviderStateMixin` mixin provides a single `ticker`. The `ticker` calls its callback once per animation frame.  
   

