import 'package:flutter/material.dart';
import 'package:my_trips/screens/Home_Screens.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MyTrips',
      theme: ThemeData(
        primarySwatch: Colors.cyan
      ),
      home: HomeScreen(),
    );
  }
}
