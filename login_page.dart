import 'package:flutter/material.dart';
import 'package:gradtalk/widgets/NavBar.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("GraduTalk"),
        ),
        body: Center(child: Text("Login"))
    );
  }
}