import 'package:flutter/material.dart';
import 'package:meditation/components/style.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Inflating extends StatelessWidget {
  const Inflating({super.key});

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
                'Надувание шарика',
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
                'Упражнение хорошо использовать, если нужно срочно восстановить сильно сбившееся дыхание: при истерике, приступе панической атаки, сильном испуге или тревоге.',
                style: onboardingText,
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 15),
                child: ClipRRect(
                  child: Image.asset(
                    width: double.infinity,
                    fit: BoxFit.fitWidth,
                    'assets/images/exercises/exercises_two.jpeg',
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
                'Представьте, что у вас в руках воздушный шар. Попробуйте надуть воображаемый шарик, создавая сопротивление в процессе. Здесь важно делать глубокие вдохи и стараться при каждом выдохе полностью освободить лёгкие от воздуха.\n\nХорошо, если получится представить, как выглядит шарик: цвет, форму и другие подробности. Делайте паузы в процессе, чтобы как можно детальнее прочувствовать происходящее. \n\nРекомендется внимательно наблюдать за своим состоянием во время упражнения. Следует избегать форсированного дыхания, приводящего к лёгкому головокружению. \n\nНадувание шарика хорошо помогает при сильных эмоциональных потрясениях, нервном перенапряжении, панических атаках.',
                style: onboardingText,
              ),
            ],
          )
        ],
      ),
    );
  }
}
