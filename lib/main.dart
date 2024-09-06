import 'package:flutter/material.dart';
import 'package:remedial_app/grid.dart';
import 'package:remedial_app/home.dart';
import 'package:remedial_app/list.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/start',
      routes: {
         '/start': (context) => const HomePage(),
         '/main': (context) => const GridPage(),
         '/list': (context) => const ListPage (),
      },
    );
  }
}
