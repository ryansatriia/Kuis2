import 'package:flutter/material.dart';
import 'package:flutter_demo_riverpod/screens/detail_screen.dart';
import 'package:flutter_demo_riverpod/screens/main_screen.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(
    ProviderScope(
      child: const MyApp(),
    ),
  );
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      routes: {
        MyHomePage.routeName: (context) => const MyHomePage(),
        DetailScreen.routeName: (context) => const DetailScreen(),
      },
    );
  }
}