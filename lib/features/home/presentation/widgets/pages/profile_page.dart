import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF1F6F4),
      appBar: PreferredSize(
        preferredSize: const Size(double.infinity, 10),
        child: AppBar(
          backgroundColor: const Color(0xffF1F6F4),
          elevation: 0,
        ),
      ),
      body: const Center(
        child: Text(
          '3',
          style: TextStyle(color: Colors.black),
        ),
      ),
    );
  }
}
