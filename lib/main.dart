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

              // buildCounter: (context,                                 // help you to make the limit in text field entering charracter
              //     {required currentLength, required isFocused, maxLength}) {
              //   return Container(
              //     transform: Matrix4.translationValues(0, -kToolbarHeight, 0),
              //     child: Text("$currentLength/$maxLength"),
              //   );
              // },

                // clipBehavior: Clip.antiAlias,      // widget should clip its content at the boundaries of the widget, with a smooth anti-aliased edge.
                // clipBehavior: Clip.hardEdge,          //widget should clip its content at the boundaries of the widget, with a hard edge.

                // cursorColor: Colors.red,          // change the color of the curser

                // cursorHeight: 100,                 // heaight of the curser at start

                // cursorRadius: Radius.circular(100),   // give the smooth curves to the curser

                // cursorWidth: 30,      // give curser some width

                decoration: InputDecoration(
                  // alignLabelWithHint:  true,    // to make the label in the place of hint or in the center

                  // labelText: "Descreva aqui o motivo",  // normal label of the textfield

                  // border: OutlineInputBorder(
                  //           borderSide: BorderSide(    
                  //           color: Colors.blue,     // color of border line
                  //           width: 0.3,              // how thick the border is
                  //           strokeAlign: 0.5         // gives the padding
                  //         ),
                  //         borderRadius: BorderRadius.circular(20),    // gives the radius to the sides of the border
                          // gapPadding: 1000
                          //)

                  // constraints: BoxConstraints(     // height widht for the text field
                  //   maxWidth: 50,
                  //   maxHeight: 10,
                  //   minWidth: 20
                  // ),

                  // contentPadding: EdgeInsets.all(8)     // the padding under the text field

                  // counter: 

                ),

               
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
