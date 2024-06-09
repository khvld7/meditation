import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:meditation/components/style.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:meditation/timer.dart';

class BreathingAromaticOils extends StatelessWidget {
  const BreathingAromaticOils({super.key});

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
                'Дыхание с аромамаслами',
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
                'Исследования говорят о благоприятном влиянии запахов на восстановительные процессы организма. Также существует связь и с нормализацией состояния нервной системы. Помимо самого процесса дыхания, эфирные масла могут оказать успокоительный эффект.',
                style: onboardingText,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Text(
                  'Эфирные масла помогают',
                  style: programSubtitle,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5, bottom: 5),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 10),
                      child: Text('1.', style: onboardingText),
                    ),
                    Expanded(
                      child: Text(
                        'Лучше концентрироваться.',
                        style: onboardingText,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 5),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 10),
                      child: Text('2.', style: onboardingText),
                    ),
                    Expanded(
                      child: Text(
                        'Расслабиться или стимулировать работу психики..',
                        style: onboardingText,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 5),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 10),
                      child: Text('3.', style: onboardingText),
                    ),
                    Expanded(
                      child: Text(
                        'Снять тревогу или страх..',
                        style: onboardingText,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 5),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 10),
                      child: Text('4.', style: onboardingText),
                    ),
                    Expanded(
                      child: Text(
                        'Вызвать воспоминания: здесь нужно быть осторожным, чтобы не сделать себе хуже, потому что на ум могут прийти как позитивные, так и негативные воспоминания..',
                        style: onboardingText,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 15),
                child: ClipRRect(
                  child: Image.asset(
                    width: double.infinity,
                    fit: BoxFit.fitWidth,
                    'assets/images/exercises/exercises_eight.jpeg',
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
                'При использовании в работе психолога обязательно следует учитывать тот факт, что воздействие определённого аромата на психику человека неоднозначно и многогранно, поэтому должно тщательно контролироваться. Ведь реакция у разных людей может быть индивидуальной. Более того, у каждого человека могут быть свои ассоциации с определёнными ароматами. Это также нужно учитывать. И сначала важно подробно собрать информацию о прошлом опыте клиента.',
                style: onboardingText,
              ),
            ],
          )
        ],
      ),
    );
  }
}
