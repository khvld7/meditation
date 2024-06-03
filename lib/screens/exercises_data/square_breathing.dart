import 'package:flutter/material.dart';
import 'package:meditation/components/style.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SquareBreathing extends StatelessWidget {
  const SquareBreathing({super.key});

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
                'Дыхание «по квадрату» (4-4-4-4)',
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
                'Автором данной методики является Джон Гриндер, один из основателей направления Нейролингвистического программирования. Дыхание «по квадрату» — более сложная техника, чем предыдущие. Чтобы регулярно пользоваться ей, лучше потренироваться в безопасной и спокойной обстановке.',
                style: onboardingText,
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 15),
                child: ClipRRect(
                  child: Image.asset(
                    width: double.infinity,
                    fit: BoxFit.fitWidth,
                    'assets/images/exercises/exercises_four.jpeg',
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
                'Представьте себе квадрат. Каждая его сторона — это равный промежуток дыхания, который равен примерно четырём секундам. Получается так: вдох — пауза, выдох — пауза. Постарайтесь мысленно проделывать равные промежутки, перемещаясь по каждой стороне этого квадрата.\n\nТехника имитирует особенности дыхания во время сна. Когда мы крепко спим, дыхание становится прерывистым: между вдохом и выдохом появляются небольшие паузы. Поэтому, настроив своё дыхание таким образом, мы даём сигнал нервной системе, что необходимо привести организм в состояние полного покоя. \n\nМетодика хорошо помогает при проблемах со сном, тревожных расстройствах, ПРЛ, СДВГ, БАР, ОКР.',
                style: onboardingText,
              ),
            ],
          )
        ],
      ),
    );
  }
}
