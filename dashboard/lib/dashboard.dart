import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  var _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dashboard"),
        backgroundColor: Colors.black54,
      ),
      body: getBodyWidget() ,
    );
  }

  getBodyWidget() {
return (_currentIndex == 0 ? Principal():Container());
  }
}
//var assetImage = new AssetImage('image/laptop.png');
//var image = new Image(image: assetImage);  paso la direecion del icono en una variable

class Principal extends StatelessWidget {
  var misTextosMenu = [
    "Productos",
    "Ventas",
    "Clientes",
    "Acerca de",
  ];
  var misIconos = [
    "assets/img/products.png",
    "assets/img/sales.png",
    "assets/img/client.png",
    "assets/img/about.png",
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(8),
        child:  GridView.builder(

        itemCount: misTextosMenu.length,

        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: MediaQuery.of(context).size.width / MediaQuery.of(context).size.height / 0.5,
        ),
        itemBuilder: (BuildContext context, int index){
          return Card(
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 20,
                ),
                Image.asset(misIconos[index], height: 80, width: 80,),
               Padding(
                   padding: EdgeInsets.all(16),
                 child: Text(misTextosMenu[index],style: TextStyle(fontSize: 18,height: 1.2,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
               ) ,
              ],
            ),
          );
        }
        )
    );
  }
}
