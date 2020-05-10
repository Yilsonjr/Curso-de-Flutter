import 'package:flutter/material.dart';

class Escritorio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Escritorio"),
        backgroundColor: Colors.black54,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top:15.0),
        child: GridView.count( //crea un diseño con un número fijo de mosaicos
          crossAxisCount: 2,
          children: <Widget>[
            Card(
              elevation: 10,
              child: InkWell( //Clase InkWell Un área rectangular de un material que responde al tacto.
                splashColor: Colors.blue.withAlpha(30),

                child: ListTile(
                   title: Text(
                    'Productos',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                  ),
                  subtitle: Image(
                    image: AssetImage("assets/img/products.png"),
                  ),
                ),
              ),
            ),
            Card(
              elevation: 10,
              child: InkWell(
                splashColor: Colors.blue.withAlpha(30),

                child: ListTile(
                  title: Text(
                    'Ventas',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                  ),
                  subtitle: Image(
                    image: AssetImage("assets/img/sales.png"),
                  ),
                ),
              ),
            ),
            Card(
              elevation: 10,
              child: InkWell(
                splashColor: Colors.blue.withAlpha(30),

                child: ListTile(
                  title: Text(
                    'Clientes',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                  ),
                  subtitle: Image(
                    image: AssetImage("assets/img/client.png"),
                  ),
                ),
              ),
            ),
            Card(
              elevation: 10,
              child: InkWell(
                splashColor: Colors.blue.withAlpha(30),
                child: ListTile(
                  title: Text(
                    'Acerca de',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                  ),
                  subtitle: Image(
                    image: AssetImage("assets/img/about.png"),
                  ),
                ),
              ),
            ),
//            const Text.rich(TextSpan( TRABAJANDO PARA PONERLE UN TEXTO DEBAJO
//              text: 'Acerca de',
//            ))
          ],
          crossAxisSpacing: 2,
        ),
      ),
    );
  }
}
