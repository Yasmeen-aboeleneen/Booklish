import 'package:flutter/material.dart';
import 'package:free_books/Core/Utils/App_Router.dart';
import 'package:free_books/Core/Utils/styles.dart';
import 'package:free_books/Features/Home/presentation/views/Widgets/BookRating.dart';
import 'package:go_router/go_router.dart';

class MostPopularItem extends StatelessWidget {
  const MostPopularItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouter.KbookDetailsScreen);
      },
      child: SizedBox(
        height: 130,
        child: Row(
          children: [
            AspectRatio(
              aspectRatio: 2.4 / 3,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.blue,
                  image: const DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage('Assets/Images/download.jpeg')),
                ),
              ),
            ),
            const SizedBox(
              width: 30,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                      width: MediaQuery.of(context).size.width * .5,
                      child: const Text(
                        'Our Last Summer  ',
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: styles.generalFont,
                      )),
                  const SizedBox(
                    height: 3,
                  ),
                  const Text(
                    'Elli Jhon ',
                    style: styles.SmallFont,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Text(
                        '13.5 p',
                        style: styles.Font,
                      ),
                      const Spacer(),
                      BookRating()
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
