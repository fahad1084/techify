import 'package:flutter/material.dart';
import 'package:techify/pages/login_page.dart';
import 'package:techify/pages/register_page.dart';

class LoginOrRegister extends StatefulWidget{
  const LoginOrRegister({super.key});

  @override
  State<LoginOrRegister> createState() => _LoginOrRegisterState();
}

class _LoginOrRegisterState extends State<LoginOrRegister> {
  // initially show Login Page
  bool showLoginPage = true;

  // toggle between login and register page
void togglePages(){
  setState(() {
    showLoginPage = !showLoginPage;
  });
}

@override
  Widget build(BuildContext context) {
  if (showLoginPage) {
    return LogInPage(onTap: togglePages);
  } else {
    return RegisterPage(onTap: togglePages);
  }
}
}