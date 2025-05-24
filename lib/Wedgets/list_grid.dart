// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';

class ListGrid extends StatefulWidget {
  const ListGrid({super.key});

  @override
  State<ListGrid> createState() => _ListGridState();
}

class _ListGridState extends State<ListGrid> {
  List<String> fruits=['Orange','Apple','Mango','Banana','Graps','Orange','Apple','Mango','Banana','Graps'];
  Map fruits_person={
    'fruits':['Orange','Apple','Mango','Banana','Graps','Orange','Apple','Mango','Banana','Graps'],
    'names':['chandru','patrick','aravind','karikalan','raja','chandru','patrick','aravind','karikalan','raja']

  };
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List and   Grid'),
        backgroundColor: Colors.red,
        elevation: 0,
      ),

      body: Container(
        /*child: ListView.builder(
          itemCount: fruits.length,
          itemBuilder: (context, index){ return Card(
            child: ListTile(
              onTap: (){
                print((fruits_person['fruits'][index]));
              },
              title: Text(fruits_person['fruits'][index]),
              subtitle: Text(fruits_person['names'][index]),
              leading: Icon(Icons.person),
            ),
          );}
         /* children: [
            Card(
              child: ListTile(
                title: Text('Orange'),
                subtitle: Text('Chandru'),
              ),
            ),

            Card(
              child: ListTile(
                title: Text('Orange'),
                subtitle: Text('Chandru'),
              ),
            ),

            Card(
              child: ListTile(
                title: Text('Orange'),
                subtitle: Text('Chandru'),
              ),
            ),
            Card(
              child: ListTile(
                title: Text('Orange'),
                subtitle: Text('Chandru'),
              ),
            ),
            Card(
              child: ListTile(
                title: Text('Orange'),
                subtitle: Text('Chandru'),
              ),
            ),
            Card(
              child: ListTile(
                title: Text('Orange'),
                subtitle: Text('Chandru'),
              ),
            ),
            Card(
              child: ListTile(
                title: Text('Orange'),
                subtitle: Text('Chandru'),
              ),
            ),
            Card(
              child: ListTile(
                title: Text('Orange'),
                subtitle: Text('Chandru'),
              ),
            ),
            Card(
              child: ListTile(
                title: Text('Orange'),
                subtitle: Text('Chandru'),
              ),
            ),
            Card(
              child: ListTile(
                title: Text('Orange'),
                subtitle: Text('Chandru'),
              ),
            ),
            Card(
              child: ListTile(
                title: Text('Orange'),
                subtitle: Text('Chandru'),
              ),
            )
            
          ],*/
        ),*/
        /*child: GridView(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount:3,crossAxisSpacing: 20,mainAxisSpacing: 30,childAspectRatio: 2/3),
        children: [Card(child: Center(child: Text('oRANGE'))),
        Card(child: Center(child: Text('oRANGE'))),
        Card(child: Center(child: Text('oRANGE'))),
        Card(child: Center(child: Text('oRANGE'))),
        Card(child: Center(child: Text('oRANGE'))),
        Card(child: Center(child: Text('oRANGE'))),
        Card(child: Center(child: Text('oRANGE'))),
        Card(child: Center(child: Text('oRANGE'))),
        ],),*/
      child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4), 
      itemCount: fruits.length,
      itemBuilder: (context,index){
        return Card(child: Center(child: Text(fruits[index]),),);
      }
      ),
      ),
    );
  }
}