import 'package:flutter/material.dart';

class MyStateLessWidget extends StatelessWidget {
  const MyStateLessWidget({super.key}){
    print("First constructor called");
  }

  @override
  Widget build(BuildContext context) {
    print("Build called");
    return const Placeholder();
  }
}