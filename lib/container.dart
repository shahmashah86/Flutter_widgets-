import 'package:flutter/material.dart';
import 'package:widgets_in_flutter/counter.dart';

class Container1 extends StatelessWidget {
   Container1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 70, 182, 185),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(110, 0, 0, 0),
      ),
      body: Padding(
        padding: const EdgeInsets.all(50),
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.all(20),
              width: double.infinity,
              height: 150,
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 147, 30, 210),
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
                    Text('"you are enough just as you are"',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                            fontStyle: FontStyle.italic))
                  ],
                ),
              ),
            ),
            Container(
                margin: const EdgeInsets.all(20),
                width: double.infinity,
                height: 150,
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 217, 176, 29),
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
            Container(
                margin: const EdgeInsets.all(20),
                width: double.infinity,
                height: 100,
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 131, 84, 213),
                    borderRadius: BorderRadius.circular(20)),
                child: const Center(
                    child: Text(
                  "GoodMorning",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w400),
                )))
          ,ElevatedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Counter()));}, child: Text("Go to counter page"))],
        ),
      ),
    );
  }
}