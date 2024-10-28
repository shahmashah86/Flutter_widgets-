import 'package:flutter/material.dart';
import 'package:widgets_in_flutter/textfield.dart';

class Rotatedbox1 extends StatelessWidget {
  const Rotatedbox1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 229, 243, 105),
      appBar: AppBar(leading: Icon(Icons.home_outlined,size: 35,color: const Color.fromARGB(255, 0, 0, 0),),
        backgroundColor: const Color.fromARGB(255, 126, 111, 107),
      ),
      
      body: Row(
        children: [
          Container(
            margin: const EdgeInsets.all(20),
            width: 100,
            height: double.infinity,
            decoration: BoxDecoration(
                backgroundBlendMode: BlendMode.overlay,
                color: const Color.fromARGB(255, 130, 225, 225),
                borderRadius: BorderRadius.circular(10)),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: RotatedBox(
                  quarterTurns: 3,
                  child: Column(
                    children: [
                      const Text(
                        textAlign: TextAlign.center,
                        "Good Morning",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w800,
                            color: Color.fromARGB(255, 18, 43, 56),
                            fontFamily: 'Courier'),
                      ),ElevatedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Textfield1()));}, child:const Text("Go to textfield screen"))
                      
                    ],
                  ),),
            ),
          ),
          Container(
            margin: EdgeInsets.all(20),
            width: 100,
            height: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color.fromARGB(255, 234, 145, 175)),
            child: const Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                RotatedBox(
                    quarterTurns: 3,
                    child: Text("Quote:2",
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 25))),
                RotatedBox(
                  quarterTurns: 3,
                  child: Text(
                    '"you are enough just as you are"',
                    style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'Courier',
                        fontWeight: FontWeight.w700),
                  ),
                )
              ],
            ),
          ),
          Container(
              margin: EdgeInsets.all(20),
              width: 90,
              height: double.infinity,
              decoration: BoxDecoration(
                  backgroundBlendMode: BlendMode.exclusion,
                  borderRadius: BorderRadius.circular(10),
                  color: const Color.fromARGB(255, 110, 140, 201)),
              child: const Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  RotatedBox(
                      quarterTurns: 3,
                      child: Text("Quote:3",
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 25))),
                  RotatedBox(
                    quarterTurns: 3,
                    child: Text(
                      '"you are enough just as you are"',
                      style: TextStyle(
                          fontSize: 20,
                          fontFamily: 'Courier',
                          fontWeight: FontWeight.w700),
                    ),
                  )
                ],
              ))
        ],
      ),
    );
  }
}