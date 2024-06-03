import 'package:flutter/material.dart';
import 'package:meditation/components/style.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BreathingResistance extends StatelessWidget {
  const BreathingResistance({super.key});

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
                'Дыхание с сопротивлением',
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
                'Данная техника очень похожа на асимметричное дыхание. Только здесь важно создать дополнительно сопротивление. Также можно вдыхать через нос, а выдыхать через рот.\nСоздать сопротивление можно разными способами: взять реальную трубочку, поставить её в стакан с водой и выдыхать воздух туда. Или можно надуть воздушный шарик. Но проблема в том, что чаще всего ничего из этого у нас под рукой нет.',
                style: onboardingText,
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 15),
                child: ClipRRect(
                  child: Image.asset(
                    width: double.infinity,
                    fit: BoxFit.fitWidth,
                    'assets/images/exercises/exercises_six.jpeg',
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
                'Как я писала, в технике асимметричного дыхания можно представить, будто выдыхаете через узенькую трубочку, создав тем самым сопротивление. Ещё можно попытаться выдыхать медленно, со звуком, через стиснутые зубы или губы.\n\nТехника хорошо помогает при кризисных ситуациях, нервном перенапряжении, сильной эмоциональной реакции (истерика, гнев), панических атаках, ОКР, тревожных расстройствах.',
                style: onboardingText,
              ),
            ],
          )
        ],
      ),
    );
  }
}
