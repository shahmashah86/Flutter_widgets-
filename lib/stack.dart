import 'package:flutter/material.dart';
import 'package:widgets_in_flutter/Bottomnavigation.dart';

class Stack1 extends StatelessWidget {
  const Stack1({super.key});

  
   @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.greenAccent[400],
              leading: IconButton(onPressed: (){
                Navigator.pop(context);
              }, icon: Icon(Icons.back_hand)),
            ), //AppBar
            body: 
            
// Stack(
//   children: <Widget>[
//     Container(color: Colors.red, width: 100, height: 100),
//     Positioned(
//       left: 20,
//       top: 20,
//       child: Container(color: Colors.blue, width: 50, height: 50),
//     ),
//   ],
// )

                //     Stack(
                //   children: [
                //     Container(
                //       width: 300,
                //       height: 500,
                //       color: Colors.blueGrey,
                //     ),
                //     Positioned(
                //         left: 20,
                //         top: 10,
                //         child: Container(
                //           width: 200,
                //           height: 400,
                //           color: Colors.blue,
                //         )
                //         ),
                //   Positioned(top: 40,right: 80, child: Text("Heloo"))
                //   ],
                // )


            //     Stack(
            //   children: [
            //     Container(
            //       width: 300,
            //       height: 300,
            //       color: Colors.blueGrey,
            //     ),Align(alignment: Alignment.bottomLeft,child: Container(width: 50,height: 50,color: Colors.amberAccent,))
            //   ],
            // )


        //     Center(
        // child: Stack(
        //   children: [
        //     Container(
        //       width: 300,
        //       height: 300,
        //       color: Colors.blueAccent,
        //     ),
        //     Align(
        //       alignment: Alignment.topRight,
        //       child: Container(
        //         width: 50,
        //         height: 50,
        //         color: Colors.red,
        //       ),
        //     ),
        //     Align(
        //       alignment: Alignment.bottomLeft,
        //       child: Container(
        //         width: 50,
        //         height: 50,
        //         color: Colors.green,
        //       ),
        //     ),
        //   ],


            
        //     ))
            



            Column(
              children: [
                Stack(children: [
                  // Image.network('https://tse3.mm.bing.net/th?id=OIP.BD-axKm2_LAjwrhrwg-JoAHaE8&pid=Api&P=0&h=180',width: 340,height: 340,fit: BoxFit.cover)
                // Stack(children: [Image.network('https://tse3.mm.bing.net/th?id=OIP.BD-axKm2_LAjwrhrwg-JoAHaE8&pid=Api&P=0&h=180',width: 340,height: 340,fit: BoxFit.cover,)],)
                
                
                  Container(height: 400,width: 500,decoration: BoxDecoration(color: Colors.red,image: DecorationImage(image:NetworkImage('https://tse3.mm.bing.net/th?id=OIP.BD-axKm2_LAjwrhrwg-JoAHaE8&pid=Api&P=0&h=180') )),)],),
              ElevatedButton(onPressed:(){Navigator.push(context, MaterialPageRoute(builder: (context)=>Bottom()));}, child:Text("Go and see the bottomnavigation screen"))],
            )
            
            
            ) //Scaffold

        );
  }
}