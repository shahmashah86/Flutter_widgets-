import "package:flutter/material.dart";
import "package:widgets_in_flutter/inkwell.dart";


class Singlechildscroll1 extends StatefulWidget {
  const Singlechildscroll1({super.key});

  @override
  State<Singlechildscroll1> createState() => _Singlechildscroll1State();
}

class _Singlechildscroll1State extends State<Singlechildscroll1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: 
        Column(
          children: [ElevatedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Inkwell1()));
            }, child: Text("Screen with inkwell widget")),
            Expanded(
              child: SingleChildScrollView(
                // reverse: true,
                // scrollDirection: Axis.horizontal,
                
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child:
                  // Row(
                  //   children: [Text("LLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLL"),
                      Center(
                        child: Column(
                          children: List.generate(100, (index)
                              // SingleChildScrollView(child:Column(children: [List.generate(30, (index)////will not work use gridview for both dircetion scrolloing
                              {
                            return const Padding(
                              padding: EdgeInsets.symmetric(
                                vertical: 8,
                              ),
                              child: Text("Index:${1}"),
                            );
                          }),
                          // ]
                          // )
                                            //   ),
                                            // ],
                                          ),
                      ),
                ),
              ),
            ),
          ],
        )
        );
  }
}
