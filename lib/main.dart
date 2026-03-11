import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:railplot/home.dart';
import 'package:railplot/signup.dart';
import 'package:railplot/login.dart';
import 'package:railplot/logindata.dart';
import 'package:railplot/welcome.dart';
import 'package:railplot/profile.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => LoginData(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: 'home',
        routes: {
          'home': (context) => Home(),
          'signup': (context) => Signup(),
          'login': (context) => Login(),
          'welcome': (context) => Welcome(),
          'profile': (context) => Profile(),
        },
      ),
    ),
  );
}
