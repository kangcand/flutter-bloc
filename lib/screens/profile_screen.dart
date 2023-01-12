import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        height: MediaQuery.of(context).size.height * 1,
        width: MediaQuery.of(context).size.height * 1,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/background.png"),
              fit: BoxFit.cover),
        ),
        child: SingleChildScrollView(
          primary: false,
          child: Column(
            children: [
              Text("Home"),
            ],
          ),
        ),
      ),
    );
  }
}
