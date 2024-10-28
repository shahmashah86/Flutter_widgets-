import 'package:flutter/material.dart';
import 'package:widgets_in_flutter/rotatedbox.dart';
class Button1 extends StatelessWidget {
  final String data;
  const Button1({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          backgroundColor: const Color.fromARGB(255, 224, 211, 255),
          child: Icon(Icons.alarm),
          onPressed: () {}),
      backgroundColor: const Color.fromARGB(255, 127, 184, 186),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(108, 36, 36, 36),
      ),
      body: Padding(
        padding: const EdgeInsets.all(50),
        child: Column(
          children: [Text(data),
            // FloatingActionButton.large(onPressed:(){}),
            Container(
              margin: const EdgeInsets.all(20),
              width: double.infinity,
              height: 150,
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 174, 103, 213),
                  borderRadius: BorderRadius.circular(20)),
              child: const Padding(
                padding: EdgeInsets.all(10),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Quote:",
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.w400),
                        ),
                        Text("1",
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.w400))
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.all(12),
                      child: Text('"you are enough just as you are"',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w400,
                              fontStyle: FontStyle.italic)),
                    )
                  ],
                ),
              ),
            ),
            Container
            (
                margin: const EdgeInsets.all(20),
                width: double.infinity,
                height: 150,
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 222, 185, 52),
                    borderRadius: BorderRadius.circular(20)),
                child: const Padding(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Quote:",
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.w400),
                          ),
                          Text("2",
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.w400))
                        ],
                      ),
                      Text('"There is no place like home"',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w400,
                              fontStyle: FontStyle.italic))
                    ],
                  ),
                )),
            // Container(
            //     margin: const EdgeInsets.all(20),
            //     width: double.infinity,
            //     height: 100,
            //     decoration: BoxDecoration(
            //         color: const Color.fromARGB(255, 131, 84, 213),
            //         borderRadius: BorderRadius.circular(20)),
            //     child: const Center(
            //         child: Text(
            //       "GoodMorning",
            //       style: TextStyle(fontSize: 25, fontWeight: FontWeight.w400),
            //     ))),
            // TextButton(
            //     onPressed: () {
            //       Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>Calculator()),(Route)=>false);
            //     },
            //     style: TextButton.styleFrom(
            //         backgroundColor: const Color.fromARGB(255, 61, 148, 188),
            //         foregroundColor: const Color.fromARGB(255, 35, 32, 24)),
            //     child: const Text(
            //       "LAST",
            //       style: TextStyle(fontSize: 20),
            //     )),
            ElevatedButton(
              onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context)=>Rotatedbox1()));},
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueAccent,
                  // fixedSize: const Size(150,130)
                  ),
              child: const Text(
                "Go to the screen of qoutes with use of rotated box",
                style: TextStyle(color: Colors.deepOrangeAccent),
              ),
            ),

            const ElevatedButton(onPressed: null, child: Text("Disable")),
            IconButton(
              style: IconButton.styleFrom(backgroundColor: Colors.blueGrey),
              onPressed: () {},
              icon: const Icon(Icons.newspaper),
              color: const Color.fromARGB(255, 219, 234, 246),
            )
          ],
        ),
      ),
    );
  }
}
