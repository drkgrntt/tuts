import 'package:flovider/counter_view_model.dart';
import 'package:flovider/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<CounterViewModel>(
      create: (BuildContext context) => CounterViewModel(),
      child: MaterialApp(
        title: 'Flovider',
        theme: ThemeData(
          primarySwatch: Colors.cyan,
        ),
        home: const HomePage(title: 'Flovider'),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
