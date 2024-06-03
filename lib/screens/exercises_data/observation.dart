import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:meditation/components/style.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Observation extends StatelessWidget {
  const Observation({super.key});

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
                'Наблюдение за процессом дыхания',
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
            onPressed: () {},
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
                'Техника осознанного дыхания, наблюдение за процессом дыхания, помогает человеку прийти в себя и заземлиться. Это упражнение рекомендуется выполнять ежедневно для достижения внутренней гармонии и спокойствия.',
                style: onboardingText,
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 15),
                child: ClipRRect(
                  child: Image.asset(
                    width: double.infinity,
                    fit: BoxFit.fitWidth,
                    'assets/images/exercises/exercises_one.jpeg',
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
                'Дышите как обычно, стараясь следить за процессом. Сперва это может показаться неестественным и слегка нарушить привычный ритм дыхания. Но не беспокойтесь по этому поводу. Как правило, через некоторое время эти ощущения проходят.\nКогда удалось сфокусироваться на дыхании, следует обратить внимание на некоторые его особенности. Например, через какое отверстие (ноздри или рот) воздух входит и выходит, какой объём лёгких он заполняет. Не изменяя ритма и глубины дыхания, обращайте внимание на свои ощущения, связанные с процессом дыхания.\nНаблюдайте за всеми фазами дыхательного процесса, в том числе за прохождением воздуха через ноздри или рот, его вхождением в лёгкие и выходом. При этом постарайтесь получить от этого процесса удовольствие.\nТехника хорошо помогает при разных видах психологических расстройств: панических атаках, СДВГ, БАР, ПРЛ и других.',
                style: onboardingText,
              ),
            ],
          )
        ],
      ),
    );
  }
}
