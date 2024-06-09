import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:meditation/components/style.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:meditation/timer.dart';

class Breath extends StatelessWidget {
  const Breath({super.key});

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
                'Дыхание 4-7-8',
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
            onPressed: () {
              showAdaptiveDialog(
                context: context,
                builder: (BuildContext context) {
                  return BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 30.0, sigmaY: 30.0),
                    child: TimerWidget(),
                  );
                },
              );
            },
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
                'Метод создан доктором Эндрю Вейлом, экспертом по вопросам здравоохранения. Техника хорошо помогает в борьбе со стрессом и бессонницей. Она представляет собой контролируемое дыхание, состоящее из глубокого вдоха, долгого выдоха и задержки дыхания.',
                style: onboardingText,
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 15),
                child: ClipRRect(
                  child: Image.asset(
                    width: double.infinity,
                    fit: BoxFit.fitWidth,
                    'assets/images/exercises/exercises_five.jpeg',
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
                'Четыре секунды делаем глубокий вдох, семь секунд задерживаем дыхание, восемь секунд длится выдох.\n\nНо важно отметить, что техника достаточно сложная и не очень хорошо подходит для кризисных ситуаций. Рекомендую её как вариант, который поможет подготовить организм ко сну. \n\nНормально, если поначалу у вас ничего не будет получаться: не хватать воздуха на долгие паузы и выдохи. Здесь нет строгих правил, и можно экспериментировать, подобрав себе оптимальное время на выполнение каждого этапа упражнения.\n\nТехника хорошо помогает при нарушениях сна, нервном перенапряжении, дистрессе.',
                style: onboardingText,
              ),
            ],
          )
        ],
      ),
    );
  }
}
