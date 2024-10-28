import 'package:flutter/material.dart';

class Gridview1 extends StatelessWidget {
  const Gridview1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(),body:
     GridView.count(crossAxisCount: 3,crossAxisSpacing: 6,mainAxisSpacing: 10,
    children: List.generate(60, (index){
      return Container(decoration: BoxDecoration(color: Colors.amber[100*(index+1)],borderRadius: BorderRadius.circular(8)),
      child:Center(child: Text("Item $index"),
      ) 
      );
  })
    ),

  // GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,crossAxisSpacing: 8,mainAxisSpacing: 8), itemBuilder:(context,index){return Container(decoration: ,)} )
    );
  }
}