import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:meditation/components/style.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:meditation/timer.dart';

class ResonantBreathing extends StatelessWidget {
  const ResonantBreathing({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 48,
        leading: Container(
          padding: EdgeInsets.only(left: 24),
          child: RawMaterialButton(
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            onPressed: () => Navigator.pop(context),
            child: SvgPicture.asset('assets/icons/back_button.svg'),
          ),
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              child: Text(
                maxLines: 2,
                softWrap: true,
                'Резонансное когерентное дыхание',
                style: appBarText,
              ),
            ),
          ],
        ),
        actions: [
          RawMaterialButton(
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            hoverColor: Colors.transparent,
            onPressed: () {showAdaptiveDialog(
                context: context,
                builder: (BuildContext context) {
                  return BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 30.0, sigmaY: 30.0),
                    child: TimerWidget(),
                  );
                },
              );},
            child: SvgPicture.asset('assets/icons/timer.svg'),
          )
        ],
      ),
      body: Stack(
        children: [
          Positioned(
            bottom: MediaQuery.sizeOf(context).height / 5,
            right: MediaQuery.sizeOf(context).width / 4,
            child: Image.asset('assets/images/color/blue.png'),
          ),
          Positioned(
              bottom: MediaQuery.sizeOf(context).height / 7,
              left: MediaQuery.sizeOf(context).width / 10,
              child: Image.asset('assets/images/color/yellow.png')),
          Positioned(
            bottom: MediaQuery.sizeOf(context).height / 3,
            left: MediaQuery.sizeOf(context).width / 5,
            child: Image.asset('assets/images/color/red.png'),
          ),
          ListView(
            padding: EdgeInsets.symmetric(vertical: 15, horizontal: 24),
            children: [
              Text(
                'Автор методики — Вим Хоф. Базовая техника подразумевает медленные вдохи и выдохи одинаковой продолжительности: шесть секунд на вдох и шесть секунд на выдох.\n\nАвтор ссылается на исследования, доказывающие, что данная техника выравнивает работу нервной системы. Но по опыту применения хочу отметить, что на фоне других методик она выглядит менее эффективной.',
                style: onboardingText,
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 15),
                child: ClipRRect(
                  child: Image.asset(
                    width: double.infinity,
                    fit: BoxFit.fitWidth,
                    'assets/images/exercises/exercises_seven.jpeg',
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 5),
                child: Text(
                  'Как выполнять',
                  style: programHeader,
                ),
              ),
              Text(
                'Как я уже писала выше, необходимо делать вдохи и выдохи одинаковой продолжительности: шесть секунд на вдох и столько же на выдох. \nНа мой взгляд, за счёт отсутствия паузы может быть трудно расслабиться. Особенно в стрессовом состоянии, когда сложно выдержать равномерный темп дыхания, повторяющий одинаковые промежутки вдохов и выдохов.\nБолее того, если слишком поторопиться, можно случайно организовать себе гипервентиляцию и даже спровоцировать паническую атаку. Как мы можем увидеть, не все дыхательные техники одинаково полезны. И без практики можно себе навредить. Так что осторожно подходите к выбору способа успокоения и прислушивайтесь к своим ощущениям.',
                style: onboardingText,
              ),
            ],
          )
        ],
      ),
    );
  }
}
