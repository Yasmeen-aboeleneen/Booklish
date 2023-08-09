import 'package:flutter/material.dart';

class CustomItemOfListView extends StatelessWidget {
  const CustomItemOfListView({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.5 / 3,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(9),
          color: Colors.blue,
          image: const DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage('Assets/Images/download.jpeg')),
        ),
      ),
    );
  }
}
