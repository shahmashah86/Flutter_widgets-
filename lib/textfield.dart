import 'package:flutter/material.dart';
import 'package:widgets_in_flutter/listview.dart';

class Textfield1 extends StatefulWidget {
  const Textfield1({super.key});

  @override
  State<Textfield1> createState() => _Textfield1State();
}

class _Textfield1State extends State<Textfield1> {
   final _textController = TextEditingController();
   String? _value;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
        ),
        body:Column(
          children: [
            TextField(
              controller:_textController,

            ),
            TextButton(
                onPressed: () {
                  print(_textController.text);
                  setState(() {
                      _value=_textController.text;
                  });

                
                },
                style: const ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(
                        const Color.fromARGB(255, 179, 212, 212))),
                child: const Text('Done')),
            Text("Text will be displayed here: $_value")
          , ElevatedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>ListView1()));}, child: Text("Go to screen of listview widget"))],
        ));
  }
}