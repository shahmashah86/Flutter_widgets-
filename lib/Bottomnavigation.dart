

import 'package:flutter/material.dart';
import 'package:widgets_in_flutter/Singlechildscroll.dart';

class Bottom extends StatefulWidget {
  const Bottom({super.key});

  @override
  State<Bottom> createState() => _BottomState();
}

class _BottomState extends State<Bottom> {
 int _selectedIndex = 0;
  static  List<Widget> _pages = <Widget>[
    //  Column(
    //   children: [
    //      ElevatedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder:(context)=>Singlechildscroll1()));}, child: const Text("Go to screen with scrolling widget")),
       const Text("HomeScreen"),
    //   ],
    // ),
    const Text("Profile Screen"),
    const Text(("Settings Screen"))
  ];
  void _onitemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(title: const Text("Bottom Navigation Example")),
          body: 
          Column(
            children: [ElevatedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder:(context)=>Singlechildscroll1()));}, child: const Text("Go to screen with scrolling widget")),
              Center(child: _pages.elementAt(_selectedIndex)),
            ],
          ),
          bottomNavigationBar: BottomNavigationBar(
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: "Profile",
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.settings), label: "Settings"),
                  
            ],
            currentIndex: _selectedIndex,
            onTap: _onitemTapped,
          )
          ),
    );
  }
}