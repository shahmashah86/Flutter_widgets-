import 'package:flutter/material.dart';
import 'package:widgets_in_flutter/dropdownlist.dart';

class Gesture1 extends StatelessWidget {
  const Gesture1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(),body: Column(
      children: [
        Center(child: GestureDetector(onTap: (){print("Container tapped!");},child: Container(height: 100,width:200,color: Colors.teal,child: Center(child: Text("Tap Me")),),),),
      ElevatedButton(onPressed: (){Navigator.push(context,MaterialPageRoute(builder:(context)=>Dropdownlist1()));}, child:const Text("go to screen with dropdownlist"))],
    ),);
  }
}