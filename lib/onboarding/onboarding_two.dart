import 'package:flutter/material.dart';
import 'package:meditation/components/style.dart';

class OnboardingTwo extends StatefulWidget {
  const OnboardingTwo({super.key});

  @override
  State<OnboardingTwo> createState() => _OnboardingTwoState();
}

class _OnboardingTwoState extends State<OnboardingTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 50,
            right: MediaQuery.sizeOf(context).width / 4,
            child: Image.asset('assets/images/color/blue.png'),
          ),
          Positioned(
            left: MediaQuery.sizeOf(context).width / 6,
            child: Image.asset('assets/images/color/yellow.png'),
          ),
          Positioned(
            top: MediaQuery.sizeOf(context).height / 5,
            left: MediaQuery.sizeOf(context).width / 6,
            child: Image.asset('assets/images/color/red.png'),
          ),
          Padding(
            padding: EdgeInsets.only(left: 24, top: 10, bottom: 30, right: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20.0),
                  child: Text(
                    'Это практика, которая используется для духовного развития и улучшения здоровья. Она включает в себя ряд психических упражнений, которые помогают достичь особого психического состояния. Медитация может быть рассмотрена как вид созерцания, который позволяет человеку обрести внутренний покой и гармонию.',
                    style: onboardingText,
                  ),
                )
              ],
            ),
          ),
          Positioned(
            top: MediaQuery.sizeOf(context).height / 1.85,
            left: -175,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(250),
              child: Image.asset(
                width: 350,
                'assets/images/onboarding_two/onboarding_image.png',
              ),
            ),
          ),
          Positioned(
            bottom: MediaQuery.sizeOf(context).height / 5,
            right: -175,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(250),
              child: Image.asset(
                width: 350,
                'assets/images/onboarding_two/onboarding_image.png',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
