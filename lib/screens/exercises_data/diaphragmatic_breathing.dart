import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:meditation/components/style.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:meditation/timer.dart';

class DiaphragmaticBreathing extends StatelessWidget {
  const DiaphragmaticBreathing({super.key});

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
                'Диафрагмальное дыхание',
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
                'Диафрагмальное дыхание — основной тип дыхания в дыхательной гимнастике Стрельниковой.',
                style: onboardingText,
              ),
              Padding(
                padding: EdgeInsets.only(top: 10, bottom: 5),
                child: Text(
                  'Как выполнять',
                  style: programHeader,
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
                        'Лягте на ровную поверхность спиной, согнув колени. Для поддержки можно положить подушку под голову и колени.',
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
                        'Положите одну руку на грудную клетку, а другую на живот (чуть ниже грудной клетки).',
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
                        'Медленно вдохните через нос таким образом, чтобы выпячивался живот (рука на груди должна оставаться неподвижной, в то время как рука на животе должна подниматься).',
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
                        'Когда вы выдыхаете через сжатые губы, рука на животе должна опуститься в исходное положение.',
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
                    'assets/images/exercises/exercises_nine.jpeg',
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              Text(
                'Вы также можете практиковать диафрагмальное дыхание, сидя в кресле, согнув колени и расслабив плечи, голову и шею. Практикуйтесь от пяти до десяти минут несколько раз в день.\nЭто дыхательное упражнение является естественным транквилизатором для нервной системы. Оно переключает состояние автономной нервной системы (ВНС) с симпатического (борьба или бегство) на парасимпатическое (отдых и переваривание пищи). Ещё упражнение снижает кортизол — гормон стресса, успокаивает мозг, регулирует кровяное давление и частоту сердечных сокращений. Хорошо помогает при ПТСР и тревожных расстройствах.',
                style: onboardingText,
              ),
            ],
          )
        ],
      ),
    );
  }
}
