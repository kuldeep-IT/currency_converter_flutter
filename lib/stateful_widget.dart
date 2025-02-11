import 'package:flutter/material.dart';

class MyStateFulWidget extends StatefulWidget {
  MyStateFulWidget({super.key}) {
    print("First construcor called!");
  }

  @override
  State<MyStateFulWidget> createState(){
    print("create state called")
    return _MyStateFulWidgetState();
  }
}

class _MyStateFulWidgetState extends State<MyStateFulWidget> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    print("after create state => init state will be called");
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();

    print("after initstate => didChangeDependencies called");
  }

  @override
  void didUpdateWidget(covariant MyStateFulWidget oldWidget) {
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);

      print("after didChangeDependencies => didUpdateWidget called");
  }

  @override
  void dispose() {
    // TODO: implement dispose

    print("In the last dispose called for the remove all the listener and callbacks to avoid memory leak");

    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
