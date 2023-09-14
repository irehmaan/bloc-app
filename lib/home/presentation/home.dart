import 'package:detailsapp/home/widgets/input.dart';
import 'package:detailsapp/home/widgets/output.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Scaffold(
      body: const SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [InputUserDetails(), OutPutDetails()],
        ),
      )),
    );
  }
}
