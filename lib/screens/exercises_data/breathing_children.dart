import 'package:flutter/material.dart';
import 'package:meditation/components/style.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BreathingChildren extends StatelessWidget {
  const BreathingChildren({super.key});

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
                softWrap: true,
                maxLines: 2,
                'Дыхательные упражнения для детей',
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
                'До пяти лет дыхательная гимнастика для детей носит больше игровую форму и сочетается с физическими и голосовыми упражнениями. Заниматься такой игровой гимнастикой дети обязательно должны с родителями. Это обеспечит полную безопасность занятий, а также позволит маме и папе провести больше времени с малышом.\nЗаниматься полноценной дыхательной гимнастикой детям рекомендуется с пяти лет. В этом возрасте ребёнок начинает контролировать своё дыхание, оценивать самочувствие. Но даже в этом возрасте выполнять упражнения он должен под присмотром родителей. Заниматься самостоятельно можно лишь с семи лет.\nПравила выполнения упражнений зависят от того, какую методику вы выбрали. Так, например, в одних техниках считается правильным дышать через нос, в других — через рот. Перед началом занятий обязательно уточните этот момент.',
                style: onboardingText,
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 15),
                child: ClipRRect(
                  child: Image.asset(
                    width: double.infinity,
                    fit: BoxFit.fitWidth,
                    'assets/images/exercises/exercises_eleven.jpeg',
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
              Padding(
                padding: EdgeInsets.only(bottom: 5),
                child: Text(
                  'Список рекомендаций по занятиям дыхательной гимнастикой с детьми',
                  style: programSubtitle,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 5),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 10),
                      child: Text('1.', style: onboardingText),
                    ),
                    Expanded(
                      child: Text(
                        'Ребёнок должен быть спокоен, не рассержен и не слишком игрив.',
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
                        'Упражнения нужно выполнять в спокойном темпе, чтобы малыш не переусердствовал, и вы могли контролировать его состояние.',
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
                        'Во время занятий нельзя делать резких выдохов.',
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
                        'Плечи малыша должны оставаться в спокойном состоянии.',
                        style: onboardingText,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10, bottom: 5),
                child: Text(
                  'Обязательно прекратите занятия, если',
                  style: programSubtitle,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 5),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 10, top: 7),
                      height: 5,
                      width: 5,
                      decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.black),
                    ),
                    Expanded(
                      child: Text(
                        'Ребенок часто дышит, резко побледнел или покраснел.',
                        style: onboardingText,
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 5),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 10, top: 7),
                      height: 5,
                      width: 5,
                      decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.black),
                    ),
                    Expanded(
                      child: Text(
                        'Малыш жалуется, что у него онемели ручки или ножки.',
                        style: onboardingText,
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 5),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 10, top: 7),
                      height: 5,
                      width: 5,
                      decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.black),
                    ),
                    Expanded(
                      child: Text(
                        'У ребенка начали дрожать кисти рук.',
                        style: onboardingText,
                      ),
                    )
                  ],
                ),
              ),
              Text(
                'Перед началом занятий попросите ребенка рассказывать о своем самочувствии и сразу же предупреждать, если ему вдруг станет плохо.',
                style: onboardingText,
              ),
              Padding(
                padding: EdgeInsets.only(top: 10, bottom: 5),
                child: Text(
                  'Группы дыхательных упражнений для детей с 2 лет',
                  style: programSubtitle,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 5),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 10, top: 7),
                      height: 5,
                      width: 5,
                      decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.black),
                    ),
                    Expanded(
                      child: Text(
                        '«Пузырики». Малыш делает глубокий вдох через нос, надувает «щёчки-пузырики» и медленно выдыхает воздух через чуть приоткрытый рот. Повторить 2–3 раза.',
                        style: onboardingText,
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 5),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 10, top: 7),
                      height: 5,
                      width: 5,
                      decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.black),
                    ),
                    Expanded(
                      child: Text(
                        '«Насосик». Ребёнок ставит руки на пояс, слегка приседает и делает вдох, выпрямляется — выдох. Постепенно приседания становятся ниже, вдох и выдох длительнее. Повторить 3–4 раза.',
                        style: onboardingText,
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 5),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 10, top: 7),
                      height: 5,
                      width: 5,
                      decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.black),
                    ),
                    Expanded(
                      child: Text(
                        '«Курочки». Родители выполняют движения вместе с малышом. Встаньте, наклонитесь, свободно свесьте руки и опустите голову. Произносим: «так-так-так» и одновременно похлопываем по коленям. Делаем выдох. Выпрямитесь, поднимите руки вверх и сделайте вдох. Повторить 5 раз.',
                        style: onboardingText,
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10, bottom: 5),
                child: Text(
                  'Группы дыхательных упражнений для детей 4-5 лет',
                  style: programSubtitle,
                ),
              ),
              Text(
                'Дыхательная гимнастика для детей 4–5 лет становится более сложной и осознанной. Ребёнок в процессе занятий учится воспринимать своё дыхание и контролировать его.',
                style: onboardingText,
              ),
              Text(
                '«Послушаем свое дыхание». Цель — научить детей прислушиваться к своему дыханию, определять его глубину и состояние организма.',
                style: onboardingText,
              ),
              Text(
                'Исходное положение: стоя, сидя или лежа. Мышцы расслаблены. В полной тишине дети прислушиваются к собственному дыханию и определяют:',
                style: onboardingText,
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 5),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 24, right: 10, top: 7),
                      height: 5,
                      width: 5,
                      decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.black),
                    ),
                    Expanded(
                      child: Text(
                        'куда попадает воздушная струя и откуда выходит;',
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
                      margin: EdgeInsets.only(left: 24, right: 10, top: 7),
                      height: 5,
                      width: 5,
                      decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.black),
                    ),
                    Expanded(
                      child: Text(
                        'какая часть тела приходит в движение при вдохе и выдохе: живот, грудная клетка, плечи или все части волнообразно;',
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
                      margin: EdgeInsets.only(left: 24, right: 10, top: 7),
                      height: 5,
                      width: 5,
                      decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.black),
                    ),
                    Expanded(
                      child: Text(
                        'какое дыхание: поверхностное или глубокое;',
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
                      margin: EdgeInsets.only(left: 24, right: 10, top: 7),
                      height: 5,
                      width: 5,
                      decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.black),
                    ),
                    Expanded(
                      child: Text(
                        'какая частота дыхания.',
                        style: onboardingText,
                      ),
                    ),
                  ],
                ),
              ),
              Text(
                'Важно не только провести с ребёнком упражнение, но и объяснить ему значение тех или иных показателей.\n«Дышим тихо, спокойно и плавно». Цель — научить детей расслаблять и восстанавливать организм после физической нагрузки и эмоционального возбуждения, регулировать процесс дыхания и концентрировать на нем внимание.\nИсходное положение: стоя, сидя или лежа. Если сидя — спина ровная, глаза лучше закрыть. Ребенок делает медленный вдох через нос. Когда грудная клетка начнет расширяться, вдох нужно прекратить, сделать небольшую паузу и плавно выдохнуть через нос. Повторить 5–10 раз.\nУпражнение выполняется бесшумно и плавно. Так, чтобы даже подставленная к носу ладонь не ощущала струю воздуха при выдыхании.',
                style: onboardingText,
              ),
              Padding(
                padding: EdgeInsets.only(top: 10, bottom: 5),
                child: Text(
                  'Дыхательная гимнастика для детей от 5 лет',
                  style: programSubtitle,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 5),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 10, top: 7),
                      height: 5,
                      width: 5,
                      decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.black),
                    ),
                    Expanded(
                      child: Text(
                        '«Наклоны». Исходное положение: стоя, ноги на ширине плеч, туловище прямое, руки опущены «по швам». Наклониться вперёд, руки произвольно опустить, слегка скрестив, вдох носом и быстрый, ясно слышимый. Вернуться в исходное положение не полностью и снова сделать вдох во время наклона вперёд. О выдохе не думать, не мешать, но и не помогать ему. Повторить 10–20 раз.',
                        style: onboardingText,
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 5),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 10, top: 7),
                      height: 5,
                      width: 5,
                      decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.black),
                    ),
                    Expanded(
                      child: Text(
                        '«Маятник». Исходное положение: стоя, наклоняясь вперёд, руки опущены вниз. Покачиваться вперёд-назад. При наклоне вперёд и вдохе руки скрещиваются. Вдох через нос, быстрый, активный, хорошо слышный (но он не должен быть нарочито шумным). Темп 1–2 вдоха в секунду. Повторить 10–20 раз.',
                        style: onboardingText,
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 5),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 10, top: 7),
                      height: 5,
                      width: 5,
                      decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.black),
                    ),
                    Expanded(
                      child: Text(
                        'Указанные упражнения выполнять с коротким вдохом: не стараться набрать как можно больше воздуха. А наоборот, делать вдох по объёму меньше, чем возможно. Не помогать выдоху. Руки не уводить далеко от тела.',
                        style: onboardingText,
                      ),
                    )
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
