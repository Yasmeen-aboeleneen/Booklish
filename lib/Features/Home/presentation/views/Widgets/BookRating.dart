import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:free_books/Core/Utils/styles.dart';

class BookRating extends StatelessWidget {
  BookRating({super.key, this.mainAxisAlignment = MainAxisAlignment.start});
  final MainAxisAlignment mainAxisAlignment;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        Icon(
          FontAwesomeIcons.solidStar,
          color: Color.fromARGB(255, 241, 227, 94),
          size: 15,
        ),
        SizedBox(
          width: 4.5,
        ),
        Text(
          '4.8',
          style: styles.Font,
        ),
        SizedBox(
          width: 3.2,
        ),
        Text(
          '(2545)',
          style: styles.SmallFont.copyWith(fontWeight: FontWeight.w100),
        ),
      ],
    );
  }
}
