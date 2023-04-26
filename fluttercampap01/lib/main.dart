import 'package:flutter/material.dart';
//import 'src/presentacion/LoginScreen.dart';
import 'src/presentacion/home_screen.dart';

//import 'package:fluttercampap01/src/presentacion/home_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Material App',
        home: HomeScreen(),
        //home: LoginScreen(),
        theme: ThemeData(useMaterial3: true));
  }
}


