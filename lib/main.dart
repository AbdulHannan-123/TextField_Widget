import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
              // color: Colors.grey,
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
                  //         gapPadding: 1000
                  //         ),

                  // constraints: BoxConstraints(     // height widht for the text field
                  //   maxWidth: 50,
                  //   maxHeight: 10,
                  //   minWidth: 20
                  // ),

                  // contentPadding: EdgeInsets.all(8)     // the padding under the text field

                  // counter: Text("666") ,

                  // disabledBorder: InputBorder(           //you can change the setting of the border
                  //   borderSide: BorderSide.strokeAlignCenter.
                  // ),

                  // enabled: true      // this help to show the hint/counter/... text to display

                  // prefixIcon: const Icon(Icons.person),        // to show something in start
                  //   prefixIconColor:
                  //       MaterialStateColor.resolveWith((Set<MaterialState> states) { // in order to check the state of the text field
                  //     if (states.contains(MaterialState.focused)) {     // the field is focus then perform this
                  //       return Colors.green;
                  //     }
                  //     if (states.contains(MaterialState.error)) {      // if field gets error perform this
                  //       return Colors.red;
                  //     }
                  //     return Colors.grey;                            // rest of the time
                  //   }), 

                  // enabledBorder: UnderlineInputBorder(      the line under the field at bottom
                  //   borderRadius: BorderRadius.circular(100),
                  //   borderSide: BorderSide(
                  //     color: Colors.red,
                  //     width: 1.0
                  //   )
                  // )

                  // errorMaxLines: 1      // just to show the how manay lines errors have

                  // errorStyle: TextStyle()  // style of the error text

                  // errorText: "error"            // error to be shown

                  // fillColor: Colors.red,           // the field background color 

                  // filled: false               // fill color work on the behalf of this

                  // floatingLabelAlignment: FloatingLabelAlignment.center,    // when focus on field where the label should go

                  // floatingLabelBehavior: FloatingLabelBehavior.always ,     // means lable is alwasy on float

                  // floatingLabelStyle: TextStyle()              // the label text stle colors

                  // focusColor: Colors.amberAccent,//// yhis ignore by the textfield and text form field

                  // focusedBorder: OutlineInputBorder(      // when focus on text field
                  //   borderSide: BorderSide(
                  //     color: Colors.green,
                  //     width: 5
                  //   )
                  // )

                  // focusedErrorBorder:            // when some error is get in it

                  // helperText: " hannan here"           // also a kind of hint text at start 

                  // helperMaxLines: 2            // line you  want to give to helper text

                  // helperStyle: TextStyle()       // text stle of helper text

                  // hintText: "enter here"        // the field name to show as hint

                  // hintMaxLines: 1             //line to give your hint in text field,

                  // hintTextDirection: TextDirection.ltr         // hint text to show ltr for urdu rtr for english

                  // hoverColor: Colors.red         // not for mobile i guess for web

                  // icon: Icon(Icons.abc)          // to show the icon at start

                  // iconColor: Colors.amber              // color of the upper icon

                  // isCollapsed: false               //A collapsed decoration cannot have labelText, errorText, an icon.

                  // isDense: true                        // minimise the vertical space from top and bottom

          //         label: Text.rich(                     //the user name just like the hint text
          //   TextSpan(
          //     children: <InlineSpan>[
          //       WidgetSpan(
          //         child: Text(
          //           'Username',
          //         ),
          //       ),
          //       WidgetSpan(
          //         child: Text(
          //           '*',
          //           style: TextStyle(color: Colors.red),
          //         ),
          //       ),
          //     ],
          //   ),
          // ), 

          // prefixIcon: Icon(Icons.abc)  // diff from icon property its inside the text field and the icon property is outside

          // prefixIconColor: Colors.amber     //color of the prifix icon

          // prefixIconConstraints: BoxConstraints()         // the size of the icons flexible

          // prefixText: "hello"             // again in textfield as a stemp

          // prefixStyle: TextStyle()                     //textstyle of the prefixtext

          // semanticCounterText: "nikl nilkkk",

          // suffix: Text("hannan here again")         // widget you want to show at the end

          // suffixIcon: Icon(Icons.abc)           // icons at the end

          // suffixIconColor: Colors.amber         // color of the suffix icon

          // suffixIconConstraints: BoxConstraints()       // flexible the size of the icon

          // suffixStyle: TextStyle()                      // suffix text style foe the text

          // suffixText: "suffic text"            /// suffix text to show at the end
                ),

                // enableIMEPersonalizedLearning: true,    //enable that the IME update personalized data such as typing history and user dictionary data.   when false no typing histry is recorded

                // enableInteractiveSelection: false,      ///  show you the properties of cut paste  when true if false the text cant be copiet

                // enableSuggestions: false,     // works when auto correct is true and help you o complete the sentence

                // enabled: false ,          // when false you cant type in textfield

                // expands: true,          // over flows the parent height

                // maxLines: 2,     //  number of line need to show in text field

                // minLines: null,        // lesser amount of lines

                // focusNode: FocusScope.of(context).,    // the keyboard active  propert automatically work when tap on field

                // keyboardAppearance: Brightness.dark,   // work on ios

                // keyboardType:TextInputType.number ,     //when want specific kind of keyboard to enter text

                // magnifierConfiguration: TextMagnifierConfiguration.disabled,      // create sensitive kind of touch to perform some task

                // maxLengthEnforcement: MaxLengthEnforcement.enforced,         // it is the native behavior of the android

                // obscureText: true,         // **** character for the passwords

                // obscuringCharacter: "^",    // the chrecter you want to show on ****

                // readOnly:  true,           // is true the text cant be selected

                // onAppPrivateCommand: AppPrivateCommandCallback.(p0, p1) {},   // This can be used to provide domain-specific features that are only known between certain input methods and their clients.

                // onEditingComplete: () {                         // perform action on done in keyboard
                //   print("======================================");
                // },

                // onSubmitted: (value) {      // print the complete value or you can do many task with that value
                //   print(value);
                // },

                // onTap: () => FocusScope.of(context).unfocus(),     // tap on field will unfocus the keyboard

                // onTapOutside: (event) => FocusScope.of(context).unfocus(),   // infouc the keyboard of many action when tap outside the widget

                // restorationId: " hannannnnn",       // dont exactly know its working

                // scribbleEnabled: ,             // only works in i pad so not sure

  //               scrollController: ScrollController(
              //                  initialScrollOffset: 0.0,
              //  keepScrollOffset: false,
              //               ),

              // scrollPhysics: ScrollPhysics().parent,   // enter on scroll or use when vertically scrolling the input.

              // selectionControls: MyTextSelectionControls ,  // custum styel

              // textAlign: TextAlign.end,    // alignment to type from

              // textAlignVertical: TextAlignVertical.bottom,    the alignment of text to type

              // textCapitalization: TextCapitalization.sentences,    // give te req to type formally or else

              // textDirection: TextDirection.rtl,     // when want to type in urdu or arabic

              // textInputAction:TextInputAction.newline ,   // The type of action button to use for the keyboard.

              // toolbarOptions: ,     // its depricated  //If not set, select all and paste will default to be enabled. Copy and cut will be disabled if obscureText is true. If readOnly is true, paste and cut will be disabled regardless.
 

  
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
