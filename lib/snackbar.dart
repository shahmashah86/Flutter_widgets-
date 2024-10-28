import 'package:flutter/material.dart';
import 'package:widgets_in_flutter/alertdialog.dart';

class Snackbar1 extends StatelessWidget {
  const Snackbar1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Snackbar Demo'),
        ),
        floatingActionButton:FloatingActionButton(onPressed: (){}) ,
        body: Column(
          children: [
     
            SnackbarExample(),

            ElevatedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Alertdialog1()));}, child:const Text("Switch to the screen of AlertDialogbox"))
          ],
        ));
  }
}

class SnackbarExample extends Snackbar1 {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {
          final snackBar = SnackBar(
            backgroundColor: const Color.fromARGB(255, 51, 81, 78),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            behavior: SnackBarBehavior.floating,
            duration: const Duration(seconds: 1),
            content: const Text("This is a snackbar"),
            action: SnackBarAction(label: 'Undo', onPressed: () {}),
          );
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        },
        child: const Text('Show Snackbar'));
  }
}
