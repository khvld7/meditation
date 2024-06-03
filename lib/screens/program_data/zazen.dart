import 'package:flutter/material.dart';
import 'package:meditation/components/style.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Zazen extends StatelessWidget {
  const Zazen({super.key});

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
              'Дзадзен',
              style: appBarText,
            ),
          ],
        ),
      ),
      body: Stack(
        children: [
          Positioned(
            bottom: MediaQuery.sizeOf(context).height / 5,
            right: MediaQuery.sizeOf(context).width / 10,
            child: Image.asset('assets/images/color/blue.png'),
          ),
          Positioned(
              top: MediaQuery.sizeOf(context).height / 4,
              right: MediaQuery.sizeOf(context).width / 3,
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
                'Дзадзэн — это древняя медитативная практика, которая имеет глубокие корни в дзен-буддизме. Она широко распространена в Китае, Японии и многих странах Юго-Восточной Азии. Её цель заключается в достижении внутреннего спокойствия и гармонии. Важно помнить, что в процессе медитации необходимо не бороться с возникающими мыслями, а просто позволить им уйти, чтобы ум мог полностью расслабиться.',
                style: onboardingText,
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Text('Практика', style: programHeader),
              ),
              Text('Правильная посадка', style: programSubtitle),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: Text(
                  'Во время дзадзэн желательно подложить под ноги толстый матрас. Если подстилка будет тонкая, то у вас сразу же заболят ноги, вы будете думать только о боли и не сможете сосредоточиться на практике. Не нужно стесняться использовать толстый матрас, так как практика дзадзэн не является терпением боли в ногах. Поверх матраса кладут Дзафу — специальную круглую подушку около 40 см диаметром и 15 см высотой, чтобы сидеть на ней.',
                  style: onboardingText,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 15),
                child: ClipRRect(
                  child: Image.asset(
                    'assets/images/program_screen_two/screen_one.jpeg',
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              Text('Примите позу', style: programSubtitle),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: Text(
                    'Есть три базовых положения ног — Кэккафудза, Ханкафудза и Нихондза. Самая правильная позиция среди вышеуказанных — кэккафудза. Однако если боль в ногах ещё можно терпеть, но физически принять эту позицию невозможно, то можно сесть в ханкафудза. Если в этом положении также невозможно сидеть, то используют нихондза. В исключительных случаях, временно можно использовать обычный стул.',
                    style: onboardingText),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30, bottom: 10),
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
                        'Кэккафудза («полный лотос»). Правую ступню положить на левое бедро, затем левую на правое бедро. Если посмотреть на статуи Будды, то в них правая нога расположена поверх левой. Это потому, что Будда практически реализует знание истины и ведёт людей по пути к просветлению, тогда как нам, ещё практикующимся, следует сидеть в обратном порядке.',
                        style: onboardingText,
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 10),
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
                        'Ханкафудза («полулотос»). Положить только левую ступню на правое бедро, правая ступня находится под левым бедром.',
                        style: onboardingText,
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 30),
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
                        'Нихондза («посадка по‑японски»). Обычно такое положениен азывается Сэйдза («правильное сидение»), но в отличие от Сэйдза в Нихондза следует подложить под ягодицы Дзафу и соединить большие пальцы ног вместе. Расстояние между коленями составляет примерно два кулака. В этом положении ноги также начинают болеть при длительном сидении. Тогда можно просто зажать Дзафу между ногами, сидя как на лошади.',
                        style: onboardingText,
                      ),
                    )
                  ],
                ),
              ),
              Text(
                'При длительном сидении ноги начинают болеть даже у тех практикующих, кто может принять положение кэккафудза или ханкафудза. В этом случае можно чередовать все три позиции по мере необходимости. Кроме того, в положении ханкафудза иногда разрешается менять положение ног на обратное, когда правая ступня лежит на левом бедре. ',
                style: onboardingText,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15, bottom: 5),
                child: Text('Положение рук', style: programSubtitle),
              ),
              Text(
                'Руки располагаются поверх ног. Правая рука находиться под левой и касается левой ноги. Большие пальцы обеих рук слегка соприкасаются ногтями и образуют овальную форму (Хоккай-дзёин). Когда хочется спать или отвлекаешься мыслями, эта форма может нарушаться. Поэтому, удерживайте её с умеренным напряжением. Расслабьте плечи и разведите локти в стороны.',
                style: onboardingText,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15, bottom: 5),
                child: Text('Осанка', style: programSubtitle),
              ),
              Text(
                'Выпрямите спину. Правильная осанка крайне важна в дзадзэн, и на это нужно обращать особое внимание. Однако даже если вы думаете что сидите совершенно прямо, ваша спина всё равно будет чуть округлённой. Поэтому, будет совершенно нормально сидеть с ощущением, что спина немного округлена. Следует помнить, что плохая осанка — это не истинный дзадзэн, поэтому нужно всегда стараться держать спину прямо.',
                style: onboardingText,
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 15),
                child: ClipRRect(
                  child: Image.asset(
                    'assets/images/program_screen_two/screen_two.jpeg',
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15, bottom: 5),
                child: Text('Взгляд', style: programSubtitle),
              ),
              Text(
                'В отличие от обычной медитации или релаксации в дзадзэн ни в коем случае нельзя закрывать глаза. При релаксации достаточно успокоиться и почувствовать себя комфортно. В медитации представляют образ божества или что‑нибудь подобное с закрытыми глазами до тех пор, пока это не покажется реальным. Люди называют это религиозным опытом. Буддийская практика — не то же самое, это не стремление к покою, релаксации с закрытыми глазами или поиску необычных ощущений. Здесь до последнего надо держать глаза открытыми и смотреть прямо в суть самого себя. Непосредственно, взгляд следует направить вперёд-вниз и зафиксировать в метре перед собой. Не нужно пытаться что‑то пристально рассматривать, достаточно просто смотреть на то, что находится в поле зрения.',
                style: onboardingText,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15, bottom: 5),
                child: Text('Дыхание', style: programSubtitle),
              ),
              Text(
                'Перед началом дзадзэн делается медленный глубокий вдох носом, при этом диафрагма опускается вниз и надувается низ живота, и через пару секунд — медленный долгий выдох носом. Затем переходят к естественному дыханию носом. В «Дзадзэнги» это называется Кэкки иссоку.',
                style: onboardingText,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15, bottom: 5),
                child: Text('«Регулировка сознания»', style: programSubtitle),
              ),
              Text(
                'Есть четыре основных способа управления сознанием во время дзадзэн: Сусокукан, Дзуйсокукан, Сикантадза и Коан саммай.',
                style: onboardingText,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30, bottom: 10),
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
                        'Сусокукан. Во время дзадзэн считать дыхание от одного до десяти («один», «два»,...). Существует три варианта выполнения счета: подсчет только выдохов, только вдохов или и вдохов и выдохов. Часто говорят, что первый метод (счет только выдохов) подходит, когда хочется спать, второй (счет только вдохов), когда раздражен чем-то или не можешь сосредоточиться (мысли в беспорядке), и третий (счет вдохов и выдохов) когда очень сильно хочется спать или сильно отвлекаешься. Но, в принципе, следует попробовать все способы и выбрать наиболее подходящий для вас. В любом случае самое главное – сосредоточиться на том, что делаешь. Не надо думать, что «один», «два» и т.д. – это обычные цифры. Надо просто слиться со счетом и произносить «оди-и-и-н», «дв-а-а» не задумываясь о смысле. Если случайно отвлекся и продолжил считать дальше «11, 12…», то не нужно беспокоиться и упрекать себя в неспособности сконцентрироваться. Тогда сразу начинаем считать заново от единицы.',
                        style: onboardingText,
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 10),
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
                        'Дзуйсокукан. Вместо счета вдохов-выдохов нужно «стать» дыханием. Когда вдыхаешь, «становишься» одним целым с вдохом. Когда выдыхаешь, «становишься» одним целым с выдохом.',
                        style: onboardingText,
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 10),
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
                        'Сикантадза. Просто практиковать дзадзэн без какого-либо специального способа. «Сикан» значит «просто», «без оглядки», «Тадза» - сидеть «искренне», «правильно», «безупречно». На самом деле, все другие способы (Сусокукан, Дзуйсокукан и Коан) являются способами достижения Сикантадза. Однако есть опасность впасть в заблуждение именно из-за того, что здесь не пользуются никакими специальными методами. Запомнив слово Сикантадза, часто неправильно понимают, что просто сидеть уже достаточно для совершенства в учении буддизма. ',
                        style: onboardingText,
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 10),
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
                        'Коан. Буддизм означает избавление от своего «Я». Вспомогательным средством для этого служит практика Коан (вопросы Дзэн). Иногда люди сильно заблуждаются насчет Коан в Дзэн. Бывает, ее критикуют в том смысле, что это лишь изучение чего-то отдаленно напоминающего буддизм. Однако Коан – это суровая практика, которой нужно отдать себя целиком и которая позволяет достичь состояния Муга («не-Я»). Вопросы Коан так искусно составлены, что если продолжать держаться за свое эго, то узнать ответ невозможно. Необходимо также иметь достойного учителя и силу духа, искреннее желание достичь состояния Будды. В противном случае практика Коан становится просто изучением или игрой в Коан. Это надо иметь в виду.',
                        style: onboardingText,
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Text('Польза', style: programHeader),
              ),
              Text(
                '1. Медитация дзадзэн глубоко исследует внутреннюю сущность.\n2. Медитация дзадзэн помогает лучше решать проблемы.\n3. Медитация дзадзэн заставляет нас осознать и достичь высочайшего состояния покоя.\n4. Снижается риск заболеваний (сердечно-сосудистых, психологических).\n5. Повышается иммунитет.\n6. Улучшается сон.\n7. Развивается эмоциональный интеллект.\n8. Повышается сопротивление к боли.\n9. Улучшается психомоторная реакция.',
                style: onboardingText,
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 5),
                child: ClipRRect(
                  child: Image.asset(
                    'assets/images/program_screen_two/screen_three.jpeg',
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Text('Дополнительные правила', style: programHeader),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 10),
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
                        'Во время дзадзэн нужно сидеть лицом к стене, хотя наличие стены и не обязательно. Причина, по которой сидят таким образом, состоит в том, что если смотреть вдаль, то внимание рассеивается. Расстояние до стены составляет не менее одного метра.',
                        style: onboardingText,
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 10),
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
                        'Есть надо до 70 – 80 процентов от полного объема желудка. После еды немного отдохнуть, перед тем как начать дзадзэн, чтобы не хотелось спать. Неэффективно и вредно для здоровья заниматься дзадзэн, когда хочется спать. Это может привести к дурной привычке дремать во время дзадзэн. Однако голодным дзадзэн тоже лучше не делать, так как для практики может просто не хватить физических и моральных сил. Идеально практиковать после приема умеренного объема пищи.',
                        style: onboardingText,
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 10),
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
                        'Если вы думаете, что бесполезно заниматься дзадзэн всего лишь несколько минут, то это будет большой ошибкой. По сути, дзадзэн даже за одну секунду способен соединить бесконечное прошлое и будущее, и имеет огромную благую силу для очищения Вселенной. Даже если не верить в это, вы можете убедиться в сказанном, уделив дзадзэн минутку свободного времени. Для начинающих рекомендуется ограничить продолжительность дзадзэн 30 – 40 минутами за один раз.',
                        style: onboardingText,
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 10),
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
                        'Практикуя дзадзэн, хорошо иметь что-то рядом с собой для определения времени. Само чувство времени может меняться во время практики и мысли о том, сколько же времени вы уже просидели, очень мешают сосредоточиться.',
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
