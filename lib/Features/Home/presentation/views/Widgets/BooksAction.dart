import 'package:flutter/material.dart';
import 'package:free_books/Core/Widgets/Custom_Button.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: const Row(
        children: [
          Expanded(
              child: CustomButton(
            backgroundColor: Colors.white,
            textColor: Colors.black,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(12),
              topLeft: Radius.circular(12),
            ),
            text: '13.5 P',
          )),
          Expanded(
            child: CustomButton(
              backgroundColor: Color.fromARGB(255, 101, 53, 76),
              textColor: Colors.white,
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(12),
                  bottomRight: Radius.circular(12)),
              text: 'Free Preview',
            ),
          )
        ],
      ),
    );
  }
}
