import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    home: MyDialog(),
  )
  );
}
 
class MyDialog extends StatefulWidget {
  MyDialog({Key key}) : super(key: key);

  @override
  _MyDialogState createState() => _MyDialogState();
 
}
enum DialogActions{
  yes,
  no
}
class _MyDialogState extends State<MyDialog> {

String _inputValue = '';

void _alertResult(DialogActions actions){


}

void  _onChanged(String value){
    setState(() {
      _inputValue = value;
    });
}
   void _mostrarDialog(String value){ //Metodo creado para mostrar la alerta
     AlertDialog dialog = new AlertDialog(
      content: Text(value),
      actions: <Widget>[
        FlatButton(onPressed: (){_alertResult(DialogActions.yes );},
         child: new Text('Si')
         ),
         FlatButton(onPressed: (){_alertResult(DialogActions.no);},
         child: new Text('No')
         )
      ],
     );

     showDialog(context: context, child: dialog );
   }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
         title:Text('Alert Dialog'),
       ),

      body: new Container(
        child: new Center(
          child: Column(
          children: <Widget>[
            new TextField(
              decoration: new InputDecoration(
                hintText:'Ingrese su Texto'
              ),

              onChanged: (String valor){
                 _onChanged(valor);
                },
            ),
            new RaisedButton(
              child: Text('Mostrar Alerta'),
             
              onPressed: () { // onPressed funcion que se ejecuta al  presionar boton
                _mostrarDialog(_inputValue);
                } 
              )
          ],
          ),
        ),
      ),
    );
  }
}