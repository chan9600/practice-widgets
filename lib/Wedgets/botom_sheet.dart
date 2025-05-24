import 'package:flutter/material.dart';

class BottomSheetWidget extends StatelessWidget {
  const BottomSheetWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Bottom Sheet Widget',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              showModalBottomSheet(
                  elevation: 0,
                  isDismissible: true,
                  enableDrag: true,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20))),
                  backgroundColor: Theme.of(context).primaryColor,
                  context: context,
                  builder: (context) {
                    return Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        ListTile(
                          title: Text('Orange'),
                          subtitle: Text('Chandru'),
                        ),
                        ListTile(
                          title: Text('Apple'),
                          subtitle: Text('Patrick'),
                        ),
                        ListTile(
                          title: Text('Banana'),
                          subtitle: Text('Aravind'),
                        ),
                        ListTile(
                          title: Text('Grabs'),
                          subtitle: Text('Karikalan'),
                        ),
                        ListTile(
                          title: Text('Papaya'),
                          subtitle: Text('Raja'),
                        ),
                      ],
                    );
                  });
            },
            child: Text('Show Bottom Sheet')),
      ),
    );
  }
}
