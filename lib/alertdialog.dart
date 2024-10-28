import 'package:flutter/material.dart';
import 'package:widgets_in_flutter/animatedtext.dart';

class Alertdialog1 extends StatefulWidget {
  const Alertdialog1({super.key});

  @override
  State<Alertdialog1> createState() => _Alertdialog1State();
}

class _Alertdialog1State extends State<Alertdialog1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
      ),
      body: Column(
        children: [
          AlertDialogExample(),SizedBox(height: 100,),
        ElevatedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>AnimatedTextExample()));}, child: Text("Go to the animatedtext screen"))],
      ),
    );
  }
}

class AlertDialogExample extends StatelessWidget{
  
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {showDialog(context: context, builder: (BuildContext context){ return AlertDialog();});}, child: const Text("Show Alert Dialog"));
  }
}
