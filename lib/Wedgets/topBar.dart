import 'package:flutter/material.dart';

class TapBarWidget extends StatelessWidget {
  const TapBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 4,
      child:Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Text('WhatsApp'),
          bottom: TabBar(
            indicatorColor: Colors.black,
            labelColor: Colors.black,
            indicatorWeight: 10,
            tabs: [
              Tab(icon:Icon( Icons.chat,),text: 'CHATS',),
              Tab(icon:Icon( Icons.update),text: 'STATUS',),
              Tab(icon:Icon( Icons.groups_3,),text: 'COMMUNITIES',),
              Tab(icon:Icon( Icons.call,),text: 'CALLS',)
          ]),
        ),
        body: TabBarView(children: [
          Container(child: Center(child: Text('CHATS',style: TextStyle(fontSize: 30),),),),
          Container(child: Center(child: Text('STATUS',style: TextStyle(fontSize: 30),),),),
          Container(child: Center(child: Text('COMMUNITIES',style: TextStyle(fontSize: 30),),),),
          Container(child: Center(child: Text('CALLS',style: TextStyle(fontSize: 30),),),)
        ]),
      ) ,
    );
  }
}