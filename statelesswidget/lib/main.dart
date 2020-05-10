import 'package:flutter/material.dart';

main() {
  runApp(new MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Usando Stateless Widget.."),
      ),

      body: new Container(
        child: new Center(
          child: new Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,

          children: <Widget>[
            new Padding(
              padding: EdgeInsets.only(top:10),
                child: new TitleEncabezado(),
            ),
             
             new MyCard(
              title: new Text("Laptop",
               style: TextStyle(
                       fontSize: 26,
                       fontWeight: FontWeight.bold
                       )
              ),
              
              icon:new NuevoIcono(),
            ),

            new MyCard(
              title: new Text("Ipad",
               style: TextStyle(
                       fontSize: 26,
                       fontWeight: FontWeight.bold
                      )                    
                    ),

              icon: 
                new NuevoIcono2(),
               
            ),

            new MyCard(
              title: new Text("smartwatch",
              
              style: TextStyle(
                       fontSize: 26,
                       fontWeight: FontWeight.bold
                       )
                  ),
              icon: new NuevoIcono3(),
                
            ),
          ],
        )),
      ),
    );
  }
}

class TitleEncabezado extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    var tituloEncabezado = new Text("Productos",
                  textDirection: TextDirection.ltr,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      backgroundColor: Colors.orangeAccent,
                  ),
          );
    return Container(
      //padding: EdgeInsets.only(top: 5,bottom: 5),
      decoration: new BoxDecoration(color: Colors.orangeAccent,
      borderRadius: BorderRadius.circular(10)),
      child:new Center(
      child: tituloEncabezado
    )
    );
  }
}

class NuevoIcono extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var assetImage = new AssetImage('image/laptop.png');
    var image = new Image(image: assetImage, width: 80.0, height: 80.0);

    return Container(
      child: image);
  }
}

class NuevoIcono2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var assetImage = new AssetImage('image/ipad.png');
    var image = new Image(image: assetImage, width: 80.0, height: 80.0);

    return Container(
      child: image);
  }
}

class NuevoIcono3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var assetImage = new AssetImage('image/reloj.png');
    var image = new Image(image: assetImage, width: 80.0, height: 80.0);

    return Container(
      child: image);
      
  }
}

class MyCard extends StatelessWidget {
  final Widget title;
  final Widget icon;


  MyCard({this.title, this.icon});

  @override
  Widget build(BuildContext context) {
    return new Container(
      padding: EdgeInsets.only(bottom:5),
      child: new Card(
        child: new Container(
        padding: EdgeInsets.all(15),
        
        child: Column(
          children: <Widget>[this.title,new Padding(padding:EdgeInsets.only(top:10) ), this.icon],
        ),
      ),
      )
    );
  }
}
