
import 'package:flutter/material.dart';
import 'package:widgets_in_flutter/container.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "DATA",
          ),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Container(
              width: double.infinity,
              height: 29,
              color: Colors.amber,
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("BIODATA",
                      style: TextStyle(
                          color: Color.fromARGB(255, 0, 0, 0), fontSize: 20)),
                ],
              ),
            ),

            Container(
              padding: const EdgeInsets.all(10),
              margin:const EdgeInsets.all(5) ,
              width: double.infinity,
              color: Colors.red,
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Name:",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15)),
                      Text("Shahma")
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Place:",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                      Text("Elamkulam"),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Contact:",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                      Text("7994672982")
                    ],
                  ),
                ]
              ),
            ),
            ElevatedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Container1()));}, child:Text("Go to Containers conist of qoutes"))
          ],
        ),
      );
  }
}