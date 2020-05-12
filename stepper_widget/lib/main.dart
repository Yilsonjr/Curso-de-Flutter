import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
   home: MyStepper(),
  ));
}
class MyStepper extends StatefulWidget {
  @override
  _MyStepperState createState() => _MyStepperState();
}

class _MyStepperState extends State<MyStepper> {
  int _currentStep = 0;
  List<Step> mySteps = [
    new Step(
        title: new Text("Paso 1", style: TextStyle(fontSize: 26),),
        content: new Text("Aprender flutter", style: TextStyle(fontSize: 26,color: Colors.deepOrange,fontWeight: FontWeight.bold)),
    ),
    new Step(
      title: new Text("Paso 2", style: TextStyle(fontSize: 26),),
      content: new Text("Desarrollar App", style: TextStyle(fontSize: 26,color: Colors.deepOrange,fontWeight: FontWeight.bold)),
    ),
    new Step(
      title: new Text("Paso 3", style: TextStyle(fontSize: 26),),
      content: new Text("Publicar Aplicacion", style: TextStyle(fontSize: 26,color: Colors.deepOrange,fontWeight: FontWeight.bold)),
    ),
    new Step(
      title: new Text("Paso 4", style: TextStyle(fontSize: 26),),
      content: new Text("Ganar Dinero Manitooo..", style: TextStyle(fontSize: 26,color: Colors.deepOrange,fontWeight: FontWeight.bold)),
    )
  ];
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("Utilizando Stepper")
      ),
      body: new Container(
          child: new Stepper(
            steps: mySteps,
            currentStep:this._currentStep , // Nos indica cual es el estado actual del Stepper
            onStepContinue: (){
              setState(() {

                if(_currentStep < mySteps.length -1) { _currentStep++;}
                else{_currentStep = 0;}
              });
            },
            onStepTapped: (step){
              setState(() {
                _currentStep = step;
              });
            },
            onStepCancel: (){
              setState(() {
                if(_currentStep > 0){
                  _currentStep = _currentStep -1;
                }else{
                  _currentStep = 0;
                }

              });
            },
          ),
      ),
    );
  }
}
