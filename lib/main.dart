import 'package:chat_ui/screens/login.dart';
import 'package:chat_ui/screens/register.dart';
import 'package:flutter/material.dart';
import 'package:chat_ui/screens/home_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chat UI',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.redAccent,
        colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Colors.white),
      ),
      initialRoute: 'Dashboard',
      routes: {
        'Login': (context) => const MyLogin(),
        'Register': (context) => const Register(),
        'Dashboard': (context) => const HomeScreen(),
      },
    );
  }
}
