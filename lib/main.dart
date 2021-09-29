import 'package:flutter/material.dart';
import 'package:flutter_provider/provider/counter.dart';
import 'package:flutter_provider/provider/shopping_cart_provider.dart';
import 'package:flutter_provider/screens/first_screen.dart';
import 'package:flutter_provider/screens/second_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (_) => Counter()),
      ChangeNotifierProvider(create: (_) => ShoppingCart())
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(brightness: Brightness.dark),
      initialRoute: '/',
      routes: {
        '/': (context) => const FirstScreen(),
        '/second': (context) => const SecondScreen()
      },
    );
  }
}
