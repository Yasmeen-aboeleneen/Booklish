import 'package:flutter/material.dart';
import 'package:free_books/Core/Utils/App_Router.dart';
import 'package:go_router/go_router.dart';

import 'package:neon_widgets/neon_widgets.dart';

class SplashScreenBody extends StatefulWidget {
  const SplashScreenBody({super.key});

  @override
  State<SplashScreenBody> createState() => _SplashScreenBodyState();
}

class _SplashScreenBodyState extends State<SplashScreenBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;

  @override
  void initState() {
    super.initState();
    initSlidingAnimation();
    NavigateToHomeScreen();
  }

  void initSlidingAnimation() {
    animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 1));
    slidingAnimation = Tween<Offset>(begin: Offset(1, 0), end: Offset.zero)
        .animate(animationController);
    animationController.forward();
  }

  void NavigateToHomeScreen() {
    Future.delayed(const Duration(seconds: 2), () {
      // Get.to(() => const HomeScreen(),
      //     transition: Transition.zoom, duration: Ktransition);
      GoRouter.of(context).push(AppRouter.KhomeScreen);
    });
  }

  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          NeonText(
            text: "BOOKLISH",
            spreadColor: const Color.fromARGB(255, 235, 229, 231),
            blurRadius: 30,
            textSize: 60,
            textColor: Colors.white,
            fontFamily: 'RobotoSlab-Bold',
          ),
          SizedBox(
            height: 7,
          ),
          SlidingText(slidingAnimation: slidingAnimation),
        ],
      ),
    ));
  }
}

class SlidingText extends StatelessWidget {
  const SlidingText({
    super.key,
    required this.slidingAnimation,
  });

  final Animation<Offset> slidingAnimation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: slidingAnimation,
        builder: (context, _) {
          return SlideTransition(
            position: slidingAnimation,
            child: NeonText(
              text: "Enjoy Reading",
              fontFamily: 'RobotoSlab-Bold',
              spreadColor: const Color.fromARGB(255, 235, 229, 231),
              blurRadius: 30,
              textSize: 20,
              textColor: Colors.white,
            ),
          );
        });
  }
}
