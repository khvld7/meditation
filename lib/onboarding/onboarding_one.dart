import 'package:flutter/material.dart';
import 'package:meditation/components/style.dart';

class OnboardingOne extends StatelessWidget {
  const OnboardingOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            left: MediaQuery.sizeOf(context).width / 6,
            child: Image.asset('assets/images/color/blue.png'),
          ),
          Positioned(
              top: MediaQuery.sizeOf(context).height / 5,
              right: MediaQuery.sizeOf(context).width / 4,
              child: Image.asset('assets/images/color/yellow.png')),
          Positioned(
            top: MediaQuery.sizeOf(context).height / 5,
            left: MediaQuery.sizeOf(context).width / 4,
            child: Image.asset('assets/images/color/red.png'),
          ),
          Padding(
            padding: EdgeInsets.only(left: 24, top: 10, bottom: 30, right: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Медитация',
                  style: TextStyle(fontFamily: 'Nunito', fontWeight: FontWeight.w400, fontSize: 31),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: Text(
                    'Это практика, которая используется для духовного развития и улучшения здоровья. Она включает в себя ряд психических упражнений, которые помогают достичь особого психического состояния. Медитация может быть рассмотрена как вид созерцания, который позволяет человеку обрести внутренний покой и гармонию.',
                    style: onboardingText,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: MediaQuery.sizeOf(context).width / 15,
              right: MediaQuery.sizeOf(context).width / 7,
              top: MediaQuery.sizeOf(context).height / 3.5,
            ),
            child: Positioned(
              child: Image.asset(
                'assets/images/onboarding_one/star.png',
                width: MediaQuery.sizeOf(context).width / 2,
                height: MediaQuery.sizeOf(context).height / 2,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: MediaQuery.sizeOf(context).width / 2,
              top: MediaQuery.sizeOf(context).height / 3.5,
            ),
            child: Positioned(
              child: Image.asset(
                'assets/images/onboarding_one/rectangle.png',
                width: MediaQuery.sizeOf(context).width / 2,
                height: MediaQuery.sizeOf(context).height / 2,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: MediaQuery.sizeOf(context).width / 4.2,
              top: MediaQuery.sizeOf(context).height / 1.75,
            ),
            child: Positioned(
              child: Image.asset(
                'assets/images/onboarding_one/ellipse.png',
                width: MediaQuery.sizeOf(context).width / 2,
                height: MediaQuery.sizeOf(context).height / 2,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
