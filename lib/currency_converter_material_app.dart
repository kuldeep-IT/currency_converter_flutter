import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class CurrencyConverterMaterialApp extends StatefulWidget {
  CurrencyConverterMaterialApp({super.key}) {
    print("constructor");
  }

  @override
  State<CurrencyConverterMaterialApp> createState() {
    print("create state");
    return _CurrencyConverterMaterialAppState();
  }
}

class _CurrencyConverterMaterialAppState
    extends State<CurrencyConverterMaterialApp> {
  double result = 0;
  final TextEditingController textEditingController = TextEditingController();

  @override
  void initState() {
    print("init state rebuilt");
    super.initState();
  }

  @override
  void dispose() {
    textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    print(" built");

    final border = OutlineInputBorder(
      borderSide: const BorderSide(width: 2.0, style: BorderStyle.solid),
      borderRadius: BorderRadius.all(Radius.circular(10)),
    );

    return Scaffold(
      backgroundColor: Colors.amber,
      appBar: AppBar(
        backgroundColor: Colors.amber,
        elevation: 0,
        title: Text(
          "Jai Dada",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "INR ${result != 0 ? result.toStringAsFixed(2) : result.toStringAsFixed(0)}",
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                style: const TextStyle(color: Colors.black),
                controller: textEditingController,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.monetization_on_outlined),
                  prefixIconColor: const Color.fromARGB(255, 0, 0, 0),
                  filled: true,
                  fillColor: Colors.white,
                  hintText: "Please enter dollar amount",
                  hintStyle: const TextStyle(color: Colors.black),
                  focusedBorder: border,
                  enabledBorder: border,
                ),
                keyboardType: const TextInputType.numberWithOptions(
                    decimal: true, signed: false),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextButton(
                  onPressed: () {
                    if (kDebugMode) {
                      print("Jai Dada!!! ${textEditingController.text}");
                    }
                    setState(() {
                      result = double.parse(textEditingController.text) * 88;
                    });
                    print(result);
                  },
                  // style:  ButtonStyle(
                  //   backgroundColor: WidgetStatePropertyAll(Colors.black),
                  //   foregroundColor: WidgetStatePropertyAll(Colors.amberAccent),
                  //   minimumSize: const WidgetStatePropertyAll(
                  //     Size(double.infinity, 50),
                  //   ),
                  //   shape: WidgetStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)))
                  // ),
                  style: TextButton.styleFrom(
                      backgroundColor: Colors.black,
                      foregroundColor: Colors.white,
                      minimumSize: Size(double.infinity, 50),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                  child: Text("Let's covert!!!")),
            )
          ],
        ),
      ),
    );
  }
}

class CurrencyConverterMaterialAppp extends StatelessWidget {
  const CurrencyConverterMaterialAppp({super.key});

  @override
  Widget build(BuildContext context) {
    double result = 0;
    final TextEditingController textEditingController = TextEditingController();
    final border = OutlineInputBorder(
      borderSide: const BorderSide(width: 2.0, style: BorderStyle.solid),
      borderRadius: BorderRadius.all(Radius.circular(10)),
    );

    return Scaffold(
      backgroundColor: Colors.amber,
      appBar: AppBar(
        backgroundColor: Colors.amber,
        elevation: 0,
        title: Text(
          "Jai Dada",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "INR ${result != 0 ? result.toStringAsFixed(2) : result.toStringAsFixed(0)}",
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                style: const TextStyle(color: Colors.black),
                controller: textEditingController,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.monetization_on_outlined),
                  prefixIconColor: const Color.fromARGB(255, 0, 0, 0),
                  filled: true,
                  fillColor: Colors.white,
                  hintText: "Please enter dollar amount",
                  hintStyle: const TextStyle(color: Colors.black),
                  focusedBorder: border,
                  enabledBorder: border,
                ),
                keyboardType: const TextInputType.numberWithOptions(
                    decimal: true, signed: false),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextButton(
                  onPressed: () {
                    if (kDebugMode) {
                      print("Jai Dada!!! ${textEditingController.text}");
                    }
                    result = double.parse(textEditingController.text) * 88;
                    print(result);
                  },
                  // style:  ButtonStyle(
                  //   backgroundColor: WidgetStatePropertyAll(Colors.black),
                  //   foregroundColor: WidgetStatePropertyAll(Colors.amberAccent),
                  //   minimumSize: const WidgetStatePropertyAll(
                  //     Size(double.infinity, 50),
                  //   ),
                  //   shape: WidgetStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)))
                  // ),
                  style: TextButton.styleFrom(
                      backgroundColor: Colors.black,
                      foregroundColor: Colors.white,
                      minimumSize: Size(double.infinity, 50),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                  child: Text("Let's covert!!!")),
            )
          ],
        ),
      ),
    );
  }
}
