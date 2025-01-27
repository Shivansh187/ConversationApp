import 'package:flutter/material.dart';
import 'pages/login_page.dart';
import 'pages/registration_page.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'services/navigation_service.dart';
import 'pages/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Conversation',
      navigatorKey: NavigationService.instance.navigatorKey,
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Color.fromRGBO(42, 117, 188, 1),
        accentColor: Color.fromRGBO(42, 117, 188, 1),
        backgroundColor: Colors.deepPurple[900],
      ),
      initialRoute: "login",
      routes: {
        "login": (BuildContext _context) => LoginPage(),
        "register": (BuildContext _context) => RegistrationPage(),
        "home": (BuildContext _context) => HomePage(),
      },
    );
  }
}
