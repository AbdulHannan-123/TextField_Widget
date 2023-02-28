import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const TextFieldWidgets(),
    );
  }
}

class TextFieldWidgets extends StatefulWidget {
  const TextFieldWidgets({super.key});

  @override
  State<TextFieldWidgets> createState() => _TextFieldWidgetsState();
}

class _TextFieldWidgetsState extends State<TextFieldWidgets> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}