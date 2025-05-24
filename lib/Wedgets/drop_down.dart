import 'package:flutter/material.dart';

class DropDownWideget extends StatefulWidget {
  const DropDownWideget({super.key});

  @override
  State<DropDownWideget> createState() => _DropDownWidegetState();
}

class _DropDownWidegetState extends State<DropDownWideget> {
  String selectedValue='select';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(            
        title: Text('Drop Down Widget',style: TextStyle(color: Colors.white),),
        backgroundColor: Theme.of(context).primaryColor),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          DropdownButton<String>(
            dropdownColor: Colors.green,
            isExpanded: false,
            value: selectedValue,
            icon: Icon(Icons.arrow_circle_down_outlined),
            items:<String>[
              'select',
            'Orange',
            'banana',
            'mango',
            'grabes',
            'apple'].map<DropdownMenuItem<String>>((String value)
          {return DropdownMenuItem<String>(
            value: value,
            child:Text(value));}).toList(),onChanged:(String? newvalue){
              setState(() {
                selectedValue=newvalue!;
              });
            })
        ],),
      ),
    );
  }
}