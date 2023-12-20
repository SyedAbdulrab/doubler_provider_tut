import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tut_provider/home.dart';
import 'package:tut_provider/numbersListProvider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MultiProvider(
      providers: [
        ChangeNotifierProvider<NumbersListProvider>(create: (context) => NumbersListProvider(),)
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'FLutter Provider Tut',
        home: Home(),
      ),
    );
  }
}
