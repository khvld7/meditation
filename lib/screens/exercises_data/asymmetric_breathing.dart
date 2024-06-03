import 'package:flutter/material.dart';
import 'package:meditation/components/style.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AsymmetricBreathing extends StatelessWidget {
  const AsymmetricBreathing({super.key});

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
                'Асимметричное дыхание (дыхание через «трубочку»)',
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
                'Суть техники заключается в том, чтобы вдыхать через нос, а выдыхать через рот и делать выдох в пять раз длиннее вдоха. Например: вдох — три секунды, выдох — 15 секунд. Но я предлагаю модификацию метода, который намного проще применить даже в крайне стрессовой ситуации.',
                style: onboardingText,
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 15),
                child: ClipRRect(
                  child: Image.asset(
                    width: double.infinity,
                    fit: BoxFit.fitWidth,
                    'assets/images/exercises/exercises_three.jpeg',
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
                'Делаем глубокий вдох носом, затем медленно выдыхаем через рот так, будто вы дуете в узенькую трубочку с сопротивлением. Таким образом можно добиться расслабления буквально за 5–6 циклов дыхания.\n\nХорошо помогает при кризисных ситуациях, нервном перенапряжении, сильной эмоциональной реакции (истерика, гнев), панических атаках, ОКР, тревожных расстройствах.',
                style: onboardingText,
              ),
            ],
          )
        ],
      ),
    );
  }
}
