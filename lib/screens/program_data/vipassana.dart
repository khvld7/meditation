import 'package:flutter/material.dart';
import 'package:meditation/components/style.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Vipassana extends StatelessWidget {
  const Vipassana({super.key});

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
            Text(
              maxLines: 2,
              softWrap: true,
              'Випассана',
              style: appBarText,
            ),
          ],
        ),
      ),
      body: Stack(
        children: [
          Positioned(
            top: MediaQuery.sizeOf(context).height / 4,
            left: MediaQuery.sizeOf(context).width / 4,
            child: Image.asset('assets/images/color/blue.png'),
          ),
          Positioned(
              bottom: MediaQuery.sizeOf(context).height / 5,
              left: MediaQuery.sizeOf(context).width / 10,
              child: Image.asset('assets/images/color/yellow.png')),
          Positioned(
            bottom: MediaQuery.sizeOf(context).height / 3,
            right: MediaQuery.sizeOf(context).width / 5,
            child: Image.asset('assets/images/color/red.png'),
          ),
          ListView(
            padding: EdgeInsets.symmetric(vertical: 15, horizontal: 24),
            children: [
              Text(
                'Випассана — это древняя индийская техника медитации, которой Будда научил примерно 2500 лет назад и которая передавалась из поколения в поколение учителями и практикующими. В настоящее время она распространилась во многих частях мира. Хотя она уходит корнями в буддизм, випассана является светской практикой, что делает её открытой для любого человека любой расы, религии, национальности или сообщества.\n\nТермин «Випассана» означает «видеть вещи такими, какие они есть на самом деле». Она учит нас быть более осознанными и проницательными в своих мыслях и чувствах. Осознавая свои негативные мысли и привычки, мы можем научиться контролировать их и изменять своё поведение. Цель — достичь самотрансформации посредством самонаблюдения.\n\nНапример, предположим, что мы смотрим на супер модный спортивный автомобиль. Випассана учит нас просто наблюдать за ней, не испытывая желания обладать ею и не испытывая ревности к человеку, который ею владеет. Мы можем просто заметить это и позволить этому пройти, никак на это не реагируя.\n\nАналогичным образом, предположим, что нас что‑то действительно раздражает. Вместо того, чтобы реагировать на это и позволять этому беспокоить нас, мы можем позволить этому пройти мимо, не затрагивая нас.\n\nЭтот принцип применим ко всему положительному или отрицательному в нашей жизни. Идея состоит в том, чтобы наблюдать за своими мыслями, чувствами и окружением, не запутываясь в них. В результате мы можем стать намного счастливее.',
                style: onboardingText,
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 15),
                child: ClipRRect(
                  child: Image.asset(
                    width: double.infinity,
                    fit: BoxFit.fitWidth,
                    'assets/images/program_screen_six/screen_one.jpeg',
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 15),
                child: Text('Практика', style: programHeader),
              ),
              Text(
                'Внешне практика медитации выглядит довольно просто: скрестил ноги, выпрямил спину, сложил руки, закрыл глаза. На самом же деле, когда осуществляешь первую попытку медитации, сталкиваешься с некоторыми проблемами: ноги не особо‑то и сгибаются, спина не выпрямляется, а глаза то и дело бегают, разглядывая непомерный поток мыслей. И даже если всё не так плохо и вроде уселся, то остаться в таком положении неподвижно в течение хотя бы получаса, крайне трудно. Но это стоит того.\n\nВо время практики человек на 16 часов отказывается от разговора с окружающими и погружается в медитацию — выполняет обычные дела, но при этом отслеживает звуки и старается ни о чем не думать. В полной версии практики такой режим соблюдают 10 дней.',
                style: onboardingText,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15, bottom: 5),
                child: Text('Выделите определенное время', style: programSubtitle),
              ),
              Text(
                'В то время как медитация прозрения заключается в том, чтобы принять то, что происходит прямо сейчас, и открыто осознавать то, что привлекает ваше внимание, медитация в целом менее эффективна, когда она окружена отвлекающими факторами или обязательствами. Идеальное время — перед тем, как вам нужно будет что‑либо делать утром, когда вы только просыпаетесь. Начните процесс с выделенного промежутка времени: 15 минут — хорошая отправная точка для практики.',
                style: onboardingText,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15, bottom: 5),
                child: Text(
                  'Найдите тихое место для медитации',
                  style: programSubtitle,
                ),
              ),
              Text(
                'Рекомендации Будды — под деревом в лесу или в очень тихом, изолированном месте. Главное — находиться там, где вам будет абсолютно комфортно и вдали от как можно большего количества отвлекающих факторов.',
                style: onboardingText,
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
                        'Пребывание в комнате в одиночестве может помочь.',
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
                        'Светлая, открытая комната с большим количеством места благопритно сказывается на медитации, а неухоженная комната может навредить процессу.',
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
                        'Не пытайтесь звуконепроницать помещение. Наличие некоторых внешних звуков действительно может помочь процессу',
                        style: onboardingText,
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 15),
                child: ClipRRect(
                  child: Image.asset(
                    width: double.infinity,
                    fit: BoxFit.fitWidth,
                    'assets/images/program_screen_six/screen_two.jpeg',
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 5),
                child: Text(
                  'Сядьте в удобную позу',
                  style: programSubtitle,
                ),
              ),
              Text(
                'Скрестите ноги и примите прямую позу примерно под углом 90 градусов. Длительное сидение с согнутой спиной может вызвать боль или усталость и отвлечь вас от процесса медитации. Дополнительным преимуществом является сосредоточение основных мышц, необходимое для того, чтобы сидеть прямо в течение длительного периода времени.',
                style: onboardingText,
              ),
              Row(
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
                      'Если у вас проблемы со спиной, а обычное положение со скрещёнными ногами неудобно, то использование стула может помочь вам принять правильную позу.',
                      style: onboardingText,
                    ),
                  )
                ],
              ),
              Row(
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
                      'Чтобы успокоить своё тело, вам, возможно, придётся сидеть в течение длительного периода времени. Убедитесь, что это такая поза, в которой вам будет удобно находиться в течение длительного времени.',
                      style: onboardingText,
                    ),
                  )
                ],
              ),
              Row(
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
                      'Также приемлемы различные позы для медитации, такие как половинка или полный лотос.',
                      style: onboardingText,
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15, bottom: 5),
                child: Text(
                  'Закройте глаза',
                  style: programSubtitle,
                ),
              ),
              Text(
                'Как только вы сядете и примете удобное положение, закройте глаза и начните расслабляться. Закрытие глаз поможет вам уменьшить отвлекающие факторы и позволить себе полностью сосредоточиться на медитации.',
                style: onboardingText,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15, bottom: 5),
                child: Text(
                  'Начните дышать нормально',
                  style: programSubtitle,
                ),
              ),
              Text(
                'Вам не нужно менять способ дыхания. Просто дышите естественно и думайте о том, как дыхание движется от ноздрей вниз по груди, наполняя легкие и брюшную полость.',
                style: onboardingText,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15, bottom: 5),
                child: Text(
                  'Сосредоточьтесь на определенной части дыхания',
                  style: programSubtitle,
                ),
              ),
              Text(
                'Сосредоточение внимания на определённой части вашей дыхательной системы, такой как ноздри, лёгкие или диафрагма, поможет вашему разуму оставаться сосредоточенным. Это обостряет ваше внимание. \nМожет возникнуть некоторая сонливость, когда вы действительно сосредотачиваетесь на дыхании. Переориентируйте своё внимание на дыхание, позволяя своему разуму и концентрации взять управление в свои руки.',
                style: onboardingText,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15, bottom: 5),
                child: Text(
                  'Найдите начало, середину и конец дыхания',
                  style: programSubtitle,
                ),
              ),
              Text(
                'Осознание различных ощущений во время процесса дыхания, того, как поднимается и опускается грудь и живот, должно быть непрерывным. Не разделяйте дыхание только для того, чтобы вы могли идентифицировать каждую часть или каждое мышечное движение. Вместо этого просто дышите глубоко и определяйте, когда происходит каждая часть.\nМожет помочь связать процесс с простыми словами или фразами (например, полный, пустой, высокий, низкий) и думать о них во время дыхания.\nИногда положить ладонь на живот помогает сосредоточиться на дыхании.',
                style: onboardingText,
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 15),
                child: ClipRRect(
                  child: Image.asset(
                    width: double.infinity,
                    fit: BoxFit.fitWidth,
                    'assets/images/program_screen_six/screen_three.jpeg',
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15, bottom: 5),
                child: Text(
                  'Визуализируйте, как поднимается и опускается живот',
                  style: programSubtitle,
                ),
              ),
              Text(
                'Не сосредотачивайтесь на мышцах или самом животе. Думайте о движении внешней части живота. Представьте движение вперёд и назад, как если бы в начальной и конечной точке была общая линия.\nПредставьте себе этот процесс как движение буя в воде. Сосредоточившись на буе, вы замечаете движение буя. Она плавает вверх-вниз, и вы едва замечаете, как вода заставляет её двигаться.',
                style: onboardingText,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15, bottom: 5),
                child: Text(
                  'Ненадолго сосредоточьтесь на отвлекающих факторах',
                  style: programSubtitle,
                ),
              ),
              Text(
                'Всякий раз, когда слышен внешний шум, какие‑либо помехи, вы должны сознательно и немедленно сосредоточить внимание на этом звуке. Точно так же, как вы обозначили подъем и опускание живота, обозначьте в уме внешний звук.',
                style: onboardingText,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15, bottom: 5),
                child: Text(
                  'Установите минимальные уровни медитации',
                  style: programSubtitle,
                ),
              ),
              Text(
                'Если ваш разум играет с вами злую шутку или убеждает вас остановиться, возможно, вам потребуется установить определённый предел или сосредоточиться. Избегайте внутреннего отвлечения, говоря себе медитировать всего одну минуту в день, не отвлекаясь. Или попробуйте сосредоточиться исключительно на одном подъёме или опускании живота. Повторяйте процесс, пока не войдёте в естественный ритм и сможете переходить к более длительным периодам медитации.',
                style: onboardingText,
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 15),
                child: ClipRRect(
                  child: Image.asset(
                    width: double.infinity,
                    fit: BoxFit.fitWidth,
                    'assets/images/program_screen_six/screen_four.jpeg',
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 5),
                child: Text(
                  'Вернитесь к дыханию',
                  style: programSubtitle,
                ),
              ),
              Text(
                'Как только нарушение будет отмечено и обозначено, а ваша медитация сфокусирована, вернитесь к дыханию. Процесс медитации может переходить от отвлечения к довольно регулярному дыханию. Не отвлекайтесь, живя текущим моментом, принимая взаимодействие и позволяя связи между дыханием и внешним миром происходить естественным образом.\nПроцесс может быть свободным от мыслей, просто позволяя уму сосредоточиться на окружающем. Если вы отвлекаетесь, сосредоточьтесь на своём дыхании, пока не сможете спокойно воспринимать более мелкие звуки вокруг вас.',
                style: onboardingText,
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Text('Польза', style: programHeader),
              ),
              Text(
                '1. Снижение уровеня стресса.\n2. Улучшение памяти.\n3. Повышение осознанности и чувствительности.\n4. Усиление концентрации и внимания.\n5. Улучшение когнитивных функций.\n6. Более спокойный сон.\n7. Повышенная нейронная пластичность.\n8. Улучшение общего самочувствия.',
                style: onboardingText,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
