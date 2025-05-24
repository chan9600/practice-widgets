import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';


class DrawerWidget extends StatefulWidget {
   // ignore: prefer_const_constructors_in_immutables
   DrawerWidget({super.key});

  @override
  State<DrawerWidget> createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Container(child: ListView(
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: Container(
              color: Colors.grey,
              padding: EdgeInsets.all(10),
              child: Row(
                children: [
                  CircleAvatar(radius: 40,
                  backgroundImage: 
                  NetworkImage('data:image/jpeg;base64,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'),)
                  ,SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                    Text('Ratan Naval Tata', style: TextStyle(fontSize: 16,fontWeight: FontWeight.w900), ),
                    Text('tata143@gmail.com',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w900),)
                  ],)

                ],
              ),
            ))
            ,ListTile(
              leading: Icon(Icons.folder),
              title: Text('My Files'),),
              ListTile(
              leading: Icon(Icons.group),
              title: Text('Shared with me'),),
              ListTile(
              leading: Icon(Icons.star),
              title: Text('Starred'),),
              ListTile(
              leading: Icon(Icons.delete),
              title: Text('Trash'),),
              ListTile(
              leading: Icon(Icons.upload),
              title: Text('Uploads'),),
              Divider(),
              ListTile(
              leading: Icon(Icons.share),
              title: Text('Share'),),
              ListTile(
              leading: Icon(Icons.logout),
              title: Text('Logout'),)
          ],
        ),
          color: Theme.of(context).primaryColor
        ),),
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: Text('Drawer Widgets'),
      ),
      body: Container(
        child: Center(child: ElevatedButton(onPressed: (){
          GoRouter.of(context).go('/');
        }, child: Text('Snack Bar')),
        ),
      ),
    );
  }
}