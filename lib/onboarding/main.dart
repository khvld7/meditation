import 'package:flutter/material.dart';
import 'package:meditation/onboarding/onboarding_four.dart';
import 'package:meditation/onboarding/onboarding_one.dart';
import 'package:meditation/onboarding/onboarding_three.dart';
import 'package:meditation/onboarding/onboarding_two.dart';

class MainOnboarding extends StatefulWidget {
  const MainOnboarding({super.key});

  @override
  State<MainOnboarding> createState() => _MainOnboardingState();
}

class _MainOnboardingState extends State<MainOnboarding> {
  int active_screen_id = 0;
  PageController controller = PageController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 30,
          title: Row(
            children: [
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(left: 4),
                  height: 4,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                      color: active_screen_id == 0 ? Color.fromRGBO(204, 204, 204, 1) : Color.fromRGBO(0, 0, 0, 0.04)),
                ),
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(left: 4),
                  height: 4,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                      color: active_screen_id == 1 ? Color.fromRGBO(204, 204, 204, 1) : Color.fromRGBO(0, 0, 0, 0.04)),
                ),
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(left: 4),
                  height: 4,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                      color: active_screen_id == 2 ? Color.fromRGBO(204, 204, 204, 1) : Color.fromRGBO(0, 0, 0, 0.04)),
                ),
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(left: 4),
                  height: 4,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                      color: active_screen_id == 3 ? Color.fromRGBO(204, 204, 204, 1) : Color.fromRGBO(0, 0, 0, 0.04)),
                ),
              ),
            ],
          ),
        ),
        body: PageView(
          controller: controller,
          onPageChanged: (value) {
            setState(() {
              active_screen_id = value;
            });
          },
          children: [
            OnboardingOne(),
            OnboardingTwo(),
            OnboardingThree(),
            OnboardingFour(),
          ],
        ),
      ),
    );
  }
}
