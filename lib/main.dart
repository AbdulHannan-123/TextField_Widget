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

  final _controller = TextEditingController();
  var _countertext = "";  // how many characters user has entered


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title:const Text("TEXT_FIELD_WIDGET"),
        ),
        body: Column(
          children: [
            Container(
              color: Colors.grey,
              padding: EdgeInsets.all(8),
              child: TextField(

                controller: _controller,       // the value you typed is stored here

                onChanged: (value) {          // notify each strike value
                  setState(() {
                    // _countertext = (10 - value.length).toString();   // limit the character to be enter in the textfield
                  });
                },

                // maxLength: 10,      // its is the max charector length you chan enter

                // autocorrect: true,           // auto correct and auto complete the world

                // autofillHints: ,   // it req the list of ristricted words to auto complete fill in iterable form
                
                // autofocus: true,    // to get the keyboard focus

                // buildCounter: ,
               
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              child: Text(_controller.text,textAlign: TextAlign.center,),
            )
          ],
        ),
      ),
    );
  }
}
