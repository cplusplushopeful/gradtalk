import 'package:flutter/material.dart';
import 'package:gradtalk/widgets/NavBar.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: NavBar(),
        appBar: AppBar(
          title: Text("GraduTalk"),
        ),
        body: Center(child: Text("Profile"))
    );
  }
}