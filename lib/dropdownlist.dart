import 'package:flutter/material.dart';
class Dropdownlist1 extends StatefulWidget {
  const Dropdownlist1({super.key});

  @override
  State<Dropdownlist1> createState() => _Dropdownlist1State();
}

class _Dropdownlist1State extends State<Dropdownlist1> {
   String? _selectedValue;
   final List<String> _items = ["Apple", "Banana", "Orange", "Mango"];
    @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      appBar: AppBar(
        title:const Text("Dropdown list"),
      ),
      body: DropdownButton(
          value: _selectedValue,
          hint:const Text('Select a fruit'),
          items: _items.map((String value) {
            return DropdownMenuItem(
              value: value,
              child: Text(value),
            );
          }).toList(),
          onChanged: (String? newValue) {
            setState(() {
              _selectedValue = newValue;
            });
          }),
    );
  }
}
