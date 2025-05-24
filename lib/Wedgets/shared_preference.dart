import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferenceWidget extends StatefulWidget {
  const SharedPreferenceWidget({super.key});

  @override
  State<SharedPreferenceWidget> createState() => _SharedPreferenceWidgetState();
}

class _SharedPreferenceWidgetState extends State<SharedPreferenceWidget> {
  String local='Flutter';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shared Preference'),
        backgroundColor: const Color.fromARGB(255, 167, 25, 192),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(local),
          ElevatedButton(onPressed: (){writeData();
          print('Success');
          }, child: Text("Write Data"),),
          SizedBox(height: 20,),
          ElevatedButton(onPressed: (){readData();}, child: Text("Read Data"),),
          SizedBox(height: 20,),
          ElevatedButton(onPressed: (){updateData();}, child: Text("Update Data"),),
          SizedBox(height: 20,),
          ElevatedButton(onPressed: (){deleteData();}, child: Text("Delete Data"),)
        ],),
      ),

    );
  }

  void writeData()async{
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  await prefs.setString('name', "chandru");
}

void readData()async{
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  final String? action = prefs.getString('name');
  setState(() {
    local=action!;
  });
}

void updateData()async{
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  await prefs.setString('name', "chan");

}

void deleteData()async{
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  await prefs.remove('name');
  setState(() {
    local='Flutter';
  });
}
}

