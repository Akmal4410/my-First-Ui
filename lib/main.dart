import 'package:design_ui/screen/createNewAccount.dart';
import 'package:design_ui/screen/forgetPassword.dart';
import 'package:design_ui/screen/logInPage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FoodByte',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: "/",
      routes: {
        "/": (context) => LogInPage(),
        "ForgetPassword": (context) => ForgetPassword(),
        "CreateNewAccount": (context) => CreateNewAccount(),
      },
    );
  }
}
