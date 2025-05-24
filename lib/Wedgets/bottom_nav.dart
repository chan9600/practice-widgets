import 'package:flutter/material.dart';
import 'package:flutter_application_1/Wedgets/Dismissible.dart';
import 'package:flutter_application_1/Wedgets/alert.dart';
import 'package:flutter_application_1/Wedgets/rows_and_column.dart';
import 'package:flutter_application_1/Wedgets/snackbar.dart';


class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {

  int selectedindex=0;
  PageController pageController =PageController();

// List<Widget>widegets=[
//   Text('Home'),
//   Text('Search'),
//   Text('Add'),
//   Text('Profile')];
  void onTapped(int index){
    setState(() {
      selectedindex=index;
    });
    pageController.jumpToPage(index);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: pageController,
        children: [
          AlertWidget(),
          DismissibleWidget(),
          RowsCols(),
          SnackbarWidget()
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(items: const<BottomNavigationBarItem>[
        BottomNavigationBarItem(icon: Icon(Icons.home),
      label: 'Home'),
      BottomNavigationBarItem(icon: Icon(Icons.search),
      label: 'Search'),
      BottomNavigationBarItem(icon: Icon(Icons.add),
      label: 'Add'),
      BottomNavigationBarItem(icon: Icon(Icons.person),
      label: 'Profile'),
      ],
      
      currentIndex: selectedindex,
      selectedItemColor: Colors.orange,
      unselectedItemColor: Colors.grey,
      onTap: onTapped,
      ),
      // appBar: AppBar(            
      //   title: Text('Bottom Navigation',style: TextStyle(color: Colors.white),),
      //   backgroundColor: Theme.of(context).primaryColor,
      );
      
  }
}