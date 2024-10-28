import 'package:flutter/material.dart';
import 'package:widgets_in_flutter/expanded.dart';

class ListView1  extends StatelessWidget {
  const ListView1 ({super.key});

 
 @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: 
          
         
              Column(
                children: [
                  Expanded(
                    child: ListView.separated(itemBuilder: (context,int a){
                       return const ListTile(title: Text("Name"),subtitle: Text("How arre you"),trailing: Text("4:00"),
                        leading:CircleAvatar(backgroundColor: Colors.red,child:Image(image:AssetImage('assets/images/person.jpg') ,),)
                      );
                    }, separatorBuilder: (context,int b){
                      return  Divider();
                    } ,itemCount:4),
                  ),
                Expanded(child: ElevatedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder:(context)=>Expanded1()));}, child:Text("Click and go to the screen with expanded widget")))
                ],
              ),
              
          //     ListView.builder(
          //       itemCount: 5,
          //       itemBuilder: 
          //     (context,int){
          //       return const Column(
          //         children: [
          //           ListTile(title: Text("Name"),subtitle: Text("How arre you"),trailing: Text("4:00"),
          //             leading:CircleAvatar(backgroundColor: Colors.red,)
          //           ),
          //           Divider()
          //         ],
          //       );
          //     }),
            
          // )
        //   ListView(
        // children: List.generate(100, (int) {
        //   return const Text("home");
        // }),)
      // Column(children: [ List.generate(3,(int)=>Text("Hi");)],)
      
      ) 
      
    );
  }
}
