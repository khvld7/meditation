import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:meditation/components/style.dart';

class OnboardingThree extends StatefulWidget {
  const OnboardingThree({super.key});

  @override
  State<OnboardingThree> createState() => _OnboardingThreeState();
}

class _OnboardingThreeState extends State<OnboardingThree> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: MediaQuery.sizeOf(context).height / 10,
            right: MediaQuery.sizeOf(context).width / 4,
            child: Image.asset('assets/images/color/blue.png'),
          ),
          Positioned(
            top: MediaQuery.sizeOf(context).height / 10,
            left: MediaQuery.sizeOf(context).width / 4,
            child: Image.asset('assets/images/color/red.png'),
          ),
          Positioned(
            top: MediaQuery.sizeOf(context).height / 3,
            left: MediaQuery.sizeOf(context).width / 10,
            child: Image.asset('assets/images/color/yellow.png'),
          ),
          Padding(
            padding: EdgeInsets.only(left: 24, top: 10, bottom: 30, right: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Релаксация',
                  style: TextStyle(fontFamily: 'Nunito', fontWeight: FontWeight.w400, fontSize: 31),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15.0),
                  child: Text(
                    'Процесс снижения напряжения в скелетных мышцах. Этот физиологический процесс может происходить как естественным образом, так и быть вызванным различными методами.',
                    style: onboardingText,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15.0),
                  child: Text(
                    'Релаксация имеет важное значение для поддержания здоровья и благополучия человека, поскольку помогает снизить стресс, улучшить кровообращение и облегчить боли в мышцах.',
                    style: onboardingText,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            width: MediaQuery.sizeOf(context).width / 3,
            right: MediaQuery.sizeOf(context).width / 2.2,
            top: MediaQuery.sizeOf(context).height / 2,
            child: Image.asset('assets/images/onboarding_three/Ellipse.png'),
          ),
          Positioned(
            width: MediaQuery.sizeOf(context).width / 3,
            left: MediaQuery.sizeOf(context).width / 2,
            top: MediaQuery.sizeOf(context).height / 1.9,
            child: Image.asset('assets/images/onboarding_three/rectangle.png'),
          ),
          Positioned(
            width: MediaQuery.sizeOf(context).width / 3,
            left: MediaQuery.sizeOf(context).width / 4,
            top: MediaQuery.sizeOf(context).height / 1.55,
            child: Image.asset('assets/images/onboarding_three/star.png'),
          ),
        ],
      ),
    );
  }
}
