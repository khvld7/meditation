import 'package:flutter/material.dart';
import 'package:meditation/components/style.dart';
import 'package:flutter_svg/flutter_svg.dart';

class KundaliniMeditation extends StatelessWidget {
  const KundaliniMeditation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(
          margin: EdgeInsets.only(left: 24),
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
            Text(          maxLines: 2,
          softWrap: true,
              'Кундалини-медитация',
              style: appBarText,
            ),
          ],
        ),
      ),
      body: Stack(
        children: [
          Positioned(
            bottom: MediaQuery.sizeOf(context).height / 4,
            right: MediaQuery.sizeOf(context).width / 3,
            child: Image.asset('assets/images/color/blue.png'),
          ),
          Positioned(
              top: MediaQuery.sizeOf(context).height / 4,
              right: MediaQuery.sizeOf(context).width / 10,
              child: Image.asset('assets/images/color/yellow.png')),
          Positioned(
            bottom: MediaQuery.sizeOf(context).height / 4,
            left: MediaQuery.sizeOf(context).width / 3,
            child: Image.asset('assets/images/color/red.png'),
          ),
          ListView(
            padding: EdgeInsets.symmetric(vertical: 15, horizontal: 24),
            children: [
              Text(
                'В индуизме Кундалини — это форма женской энергии, которая, как говорят, свёрнута у основания позвоночника. Слово Кундалини происходит от санскритского слова, означающего «свернувшаяся змея». Затем эту энергию можно пробудить с помощью йоги, мантр, асан и медитации. Медитация Кундалини является частью Кундалини-йоги и предназначена для перемещения энергии по телу. Она основана на концепции, согласно которой энергия в основании позвоночника (также известная как корневая чакра) должна высвобождаться через семь чакр тела, а затем выходить через коронную чакру над головой. \n\nЭтот процесс высвобождения энергии из тела направлен на создание системы связи между вашим разумом и телом для облегчения ментальных, физических и духовных проблем. Эта система привлечения осознанности к вашему телу посредством соединения с вашим дыханием предназначена для облегчения присутствия, установления нового ритма и общения с более высокой версией себя.',
                style: onboardingText,
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 15),
                child: ClipRRect(
                  child: Image.asset(
                    'assets/images/program_screen_four/screen_one.jpeg',
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: Text('Практика', style: programHeader),
              ),
              Text(
                'Помните, что лучше начинать с малого. Выберите управляемое обязательство по медитации, которое, по вашему мнению, вы сможете выполнять каждый день. Избегайте попыток сделать слишком много и слишком быстро, это может показаться непосильным и свести на нет ваши усилия. Даже пять минут медитации Кундалини каждый день, вероятно, помогут вам, поэтому не стоит недооценивать ценность даже этой самой элементарной практики.',
                style: onboardingText,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15, bottom: 5),
                child: Text('Выберите место', style: programSubtitle),
              ),
              Text(
                'Медитацию Кундалини можно проводить где угодно. В идеале найдите тихое место, свободное от отвлекающих факторов, с комфортной температурой (не слишком жарко, не слишком прохладно). Это должно быть спокойное место, где вас вряд ли побеспокоят. Это может быть место, где вы собираете свои любимые вещи. Держите бутылку воды рядом с собой.',
                style: onboardingText,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15, bottom: 5),
                child: Text('Выберите, что надеть', style: programSubtitle),
              ),
              Text(
                'Одевайтесь во все, что вам нравится. Многие практикующие предпочитают носить свободную, удобную одежду из хлопка и, возможно, покрывать голову, например, хлопковой шалью. Ваша одежда должна быть чистой, свежей и в идеале светлого цвета, чтобы усилить ощущение лёгкости.',
                style: onboardingText,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15, bottom: 5),
                child: Text('Выберите, когда практиковать', style: programSubtitle),
              ),
              Text(
                'Вы могли бы практиковать первым делом с утра, чтобы наметить свои намерения на день — или воспользоваться временем, когда вас с наименьшей вероятностью потревожат. Или вы можете практиковать перед сном вечером, чтобы отдохнуть от рабочего дня. Подходит практически любое время, но старайтесь избегать медитации после обильного приёма пищи, так как ваше тело будет занято перевариванием пищи.',
                style: onboardingText,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15, bottom: 5),
                child: Text('Примите позу', style: programSubtitle),
              ),
              Text(
                'Сядьте на пол, скрестив ноги, или сядьте в кресло, перенеся вес тела на ступни. Самое главное, выберите удобную для вас позу, в которой вы можете сидеть прямо с прямой спиной. Мягко закройте глаза, чтобы они были закрыты примерно на 90%. Вы можете сесть на шерстяное или хлопчатобумажное одеяло или подложить под себя подушку для удобства.',
                style: onboardingText,
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 15),
                child: ClipRRect(
                  child: Image.asset(
                    width: double.infinity,
                    fit: BoxFit.fitWidth,
                    'assets/images/program_screen_four/screen_two.jpeg',
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15, bottom: 5),
                child: Text('Выберите продолжительность практики', style: programSubtitle),
              ),
              Text(
                'Это может занять от трёх минут до двух с половиной часов. Некоторые распространённые варианты продолжительности медитации — 11 минут, 15 минут, 22 минуты, 31 минута и т.д. Идеально подходит все, что соответствует вашему расписанию и целям.',
                style: onboardingText,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15, bottom: 5),
                child: Text('Выберите мантру', style: programSubtitle),
              ),
              Text(
                'Во время дыхания вы будете повторять мантру, которая поможет вам сосредоточиться. Хорошим примером для начинающих является мантра «сат нам», что означает «истина — это моя сущность».\nПовторяйте «сат» на вдохе и «нам» на выдохе. Вы можете повторять вслух, громким шёпотом или про себя. Вы также можете выбрать другую фразу или звук для повторения. Любая мантра, которая говорит вам и кажется правильной, является правильной.\nЦель повторения мантры — направить вашу энергию. Активно прислушивайтесь к себе, если вы повторяете мантру вслух, или визуализируйте записанную мантру, если вы произносите её в уме. Вы также можете повторять свою мантру в другое время дня, если чувствуете стресс.\n\nСмысл мантры в том, чтобы вырваться из старых шаблонов, поэтому мантра всегда должна отражать то состояние, в котором вы хотите быть, а не то, в котором вы находитесь сейчас',
                style: onboardingText,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15, bottom: 5),
                child: Text('Начните сосредотачиваться на своем дыхании', style: programSubtitle),
              ),
              Text(
                'Обратите внимание на своё дыхание и постепенно начинайте замедлять его. Ваша цель — чтобы один цикл вдохов и выдохов длился около семи-восьми секунд. Разбейте свой вдох и выдох на сегменты таким образом, чтобы вы делали короткие вдохи или выдохи, разделённые паузами.\nСтарайтесь делать это так, чтобы в течение полного вдоха было четыре сегмента как вдохов, так и выдохов. Все время дышите через нос. Если в какой‑то момент вы почувствуете головокружение, прекратите практику.',
                style: onboardingText,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15, bottom: 5),
                child: Text('Почувствуйте движение дыхания', style: programSubtitle),
              ),
              Text(
                'Во время практики дыхания и пения сосредоточьтесь на том, как ваше дыхание проходит через ваше тело и помогает вам расслабиться. Всякий раз, когда ваш разум начинает блуждать, сознательно возвращайте свое внимание обратно к дыханию и мантре.',
                style: onboardingText,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15, bottom: 5),
                child: Text('Завершите медитацию', style: programSubtitle),
              ),
              Text(
                'Продолжайте этот цикл дыхания в течение заданного времени медитации. (Установите таймер, чтобы вы знали, когда остановиться.) Завершите медитацию глубоким вдохом, сведите ладони вместе или поднимите руки в воздух, а затем расслабьтесь и выдохните.',
                style: onboardingText,
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 15),
                child: ClipRRect(
                  child: Image.asset(
                    'assets/images/program_screen_four/screen_three.jpeg',
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15, bottom: 5),
                child: Text('Постепенно увеличивайте свою медитацию', style: programSubtitle),
              ),
              Text(
                'Постепенно стремитесь увеличивать продолжительность медитации. Во время практики сосредоточьтесь на том, чтобы позволять мыслям приходить и уходить, и следите за ощущением движения энергии вдоль позвоночника и чувством эйфории в теле.',
                style: onboardingText,
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Text('Польза', style: programHeader),
              ),
              Text(
                '1. Повышение уровня энергии.\n2. Снижение стресса и беспокойства.\n3. Улучшение когнитивных функций, особенно у лиц с лёгким когнитивным расстройством.\n4. Усиление творческого потенциала и повышение общей производительности и мотивации.\n5. Улучшение физического здоровья, здоровья сердечно-сосудистой системы, работы иммунной системы и общей гибкости.\n6. Духовный рост и углубление своей личной системы убеждений, большее ощущение цели и смысла жизни.\n7. Улучшение режима сна и общего качества сна.',
                style: onboardingText,
              ),
            ],
          )
        ],
      ),
    );
  }
}
