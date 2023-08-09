import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomBookDetailsAppBar extends StatelessWidget {
  const CustomBookDetailsAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.close_rounded,
            size: 30,
            color: Color.fromARGB(255, 101, 53, 76),
          ),
        ),
        Spacer(),
        IconButton(
          onPressed: () {},
          icon: const Icon(
            FontAwesomeIcons.cartShopping,
            color: Color.fromARGB(255, 101, 53, 76),
            size: 24,
          ),
        )
      ],
    );
  }
}
