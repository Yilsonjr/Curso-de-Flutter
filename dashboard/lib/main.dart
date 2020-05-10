import 'package:flutter/material.dart';
import 'dashboard.dart';
import 'Escritorio.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title:'Dashboard' ,
      home: Escritorio(),
    );
  }
}

