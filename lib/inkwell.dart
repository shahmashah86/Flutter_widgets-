import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:widgets_in_flutter/gesture.dart';

class Inkwell1 extends StatelessWidget {
  const Inkwell1({super.key});

 @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Center(
            child: Column(
              children: [
                InkWell(
                          onTap: () => log("container Tap"),
                          // radius: 67,
                
                          // borderRadius: BorderRadius.circular(30),
                          splashColor: Colors.red,
                          highlightColor: Colors.indigo,
                          child: Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  // color: const Color.fromARGB(255, 199, 209, 193),
                ),
                child: Center(child: Text("Tap on Me")),
                          ),
                        ),
              ElevatedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Gesture1()));}, child: Text("Gesture screen"))
              
              ],
            )),
      ),
    );
  }
}
