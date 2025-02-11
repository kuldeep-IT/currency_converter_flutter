import 'package:flutter/material.dart';
import 'package:jai_dada/currency_converter_material_app.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp( 
        home: CurrencyConverterMaterialApp()
    );
  }
}
