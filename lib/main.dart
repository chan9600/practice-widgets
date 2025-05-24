// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_1/Wedgets/Drawer.dart';
import 'package:flutter_application_1/Wedgets/botom_sheet.dart';
import 'package:go_router/go_router.dart';
void main()=>runApp( MyApp());

class MyApp extends StatelessWidget {
   MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Go Router',
      routerConfig: _router,


    );
  }
  final GoRouter _router=GoRouter(
    // initialLocation: "/Drawer",
    routes: [
    GoRoute(path: '/',builder: ((context, state) => BottomSheetWidget()),),
    GoRoute(path: '/Drawer',builder: ((context, state) => DrawerWidget(
    )))
  ]);

}

