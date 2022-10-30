import 'package:flutter/material.dart';
import 'package:gradtalk/widgets/NavBar.dart';

class ReportPage extends StatelessWidget {
  const ReportPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: NavBar(),
        appBar: AppBar(
          title: Text("GraduTalk"),
        ),
        body: Center(child: Text("Report"))
    );
  }
}