import 'package:flutter/material.dart';
import 'package:gradtalk/widgets/NavBar.dart';

class MentorProfilePage extends StatelessWidget {
  const MentorProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: NavBar(),
        appBar: AppBar(
          title: Text("GraduTalk"),
        ),
        body: Center(child: Text("Mentor profile"))
    );
  }
}

