import 'package:flutter/material.dart';
import 'package:widgets_in_flutter/stack.dart';

class Expanded1 extends StatelessWidget {
  const Expanded1({super.key});

 @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title:const Text("Expanded"),
        ),
        body: Column(
          children: [
            Expanded(
              flex: 3,
              child: Container(
                width: double.infinity,
                color: Colors.red,
                child: const Text("data"),
              ),
            ),
            Expanded(flex: 2,
              child: Container(
                color: Colors.blue,
               width: double.infinity,
                child: const Text("data"),
              ),
            ),
           ElevatedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder:(context)=>Stack1()));}, child: Text("Go to thr screen with stack widget"))],
        ),

        
      ),
    );
}
}