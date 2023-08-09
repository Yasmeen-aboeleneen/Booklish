import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:free_books/Core/Utils/App_Router.dart';
import 'package:go_router/go_router.dart';
import 'package:neon_widgets/neon_widgets.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 19, vertical: 15),
      child: Row(
        children: [
          NeonText(
            text: "BOOKLISH",
            spreadColor: const Color.fromARGB(255, 235, 229, 231),
            blurRadius: 30,
            textSize: 24,
            textColor: Colors.white,
            fontFamily: 'RobotoSlab-Bold',
          ),
          Spacer(),
          IconButton(
            onPressed: () {
              GoRouter.of(context).push(AppRouter.KsearchScreen);
            },
            icon: Icon(
              FontAwesomeIcons.magnifyingGlass,
              size: 24,
            ),
          )
        ],
      ),
    );
  }
}
