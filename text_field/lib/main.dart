import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
   home: MyTextfield(),
  ));
}

class MyTextfield extends StatefulWidget {
  MyTextfield({Key key}) : super(key: key);

  @override
  _MyTextfieldState createState() => _MyTextfieldState();
}

class _MyTextfieldState extends State<MyTextfield> {
  final TextEditingController controller = TextEditingController();
  String inputValue = "";

   void onSubmitted(String value) {
      setState(() {
        inputValue =  inputValue + "\n" + value;
        controller.text = "";
      });
    }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title:new Text(
          'EditText'
          ),
          backgroundColor: Colors.indigo,
      ),
      body: new Container(
        padding: EdgeInsets.all(20.0),
        child:new Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          
          children: <Widget>[
            TextField(
              decoration: new InputDecoration(hintText: "Introduzca su texto") ,
              onSubmitted: (String value) {onSubmitted(value);},
              controller: controller,
             ),

                  new Text(inputValue,
                  style:TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.red,
                  ) ,
                  ),
                 ],
               ) ,
            )
         );
      }
              
}