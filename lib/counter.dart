import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:widgets_in_flutter/buttons.dart';
class Counter extends StatefulWidget {
  const Counter({super.key});

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int _counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreen,
        title: const Text("Counter"),
        centerTitle: true,
        leading: Row(children: [IconButton(onPressed: (){
          Navigator.of(context).pop();
          // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Counter()));
        }, icon: const Icon(Icons.access_alarm)),],),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          log("on pressed");
          _counter=_counter+1;
          setState(() {
              
          });
        
        },
        child: const Icon(Icons.add),
      ),
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Number of times the button pressed is',
            style: TextStyle(
                fontSize: 18, color: const Color.fromARGB(192, 150, 46, 5)),
          ),
          Text(_counter.toString())
        ,TextButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Button1(data: "Hello fom counter screen")));}, child: Text("Go to screen consist of differnt buttons"))
        ,ElevatedButton(onPressed: (){
          Navigator.pop(context,'/home');
        }, child: Text("Go Back")),
        ],
      
      )
      ),
    );
  }
}