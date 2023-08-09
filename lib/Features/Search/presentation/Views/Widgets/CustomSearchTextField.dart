import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:neon_widgets/neon_widgets.dart';

class CustomSearchTextField extends StatelessWidget {
  const CustomSearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return NeonSearchBar(
      hint: 'Search',
      hintColor: Color.fromARGB(255, 220, 217, 217),
      borderColor: Colors.white,
      spreadColor: const Color.fromARGB(255, 190, 187, 187),
      lightBlurRadius: 120,
      lightSpreadRadius: 1,
      hintFontWeight: FontWeight.bold,
      icon: FontAwesomeIcons.magnifyingGlass,
      iconColor: Color.fromARGB(255, 220, 217, 217),
      iconSize: 18,
      width: double.infinity,
      onSearchTap: () {},
    );
  }
}
