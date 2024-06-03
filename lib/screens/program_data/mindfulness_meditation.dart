import 'package:flutter/material.dart';

import 'package:meditation/components/style.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MindfulnessMeditation extends StatelessWidget {
  const MindfulnessMeditation({super.key});

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
              'Медитация осознанности',
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
                'Медитация осознанности — это практика, которая помогает улучшить психическое состояние, сосредотачивая внимание на текущем моменте и принимая свои мысли и чувства без осуждения. Это позволяет замедлить бегущие мысли, избавиться от негатива и успокоить разум и тело.\n\nТехники могут различаться, но в целом медитация осознанности включает в себя глубокое дыхание и осознание тела и ума. Практика медитации осознанности не требует реквизита или подготовки (не нужны свечи, эфирные масла или мантры, если только они вам не нравятся). Чтобы начать, все, что вам нужно, — это удобное место для сидения, три-пять минут свободного времени и настрой, свободный от суждений',
                style: onboardingText,
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Text('Практика', style: programHeader),
              ),
              Text('Устройтесь поудобнее', style: programSubtitle),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: Text(
                  'Для выполнения практики медитации важно найти спокойное и удобное место. Выберите стул или место на полу, чтобы ваша голова, шея и спина были прямыми, но не напряжёнными.\n\nНосите удобную свободную одежду, чтобы вас ничто не отвлекало. Однако, следует отметить, что данную практику можно выполнять в любом месте и в любое время, поэтому формальный дресс-код не обязателен',
                  style: onboardingText,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15, bottom: 5),
                child: Text('Подумайте о таймере', style: programSubtitle),
              ),
              Text(
                'Хотя в этом нет необходимости, таймер (желательно с мягким будильником) может помочь вам сосредоточиться на медитации и забыть о времени — и устранить любые оправдания, которые у вас есть для того, чтобы остановиться и заняться чем‑то другим. Поскольку многие люди теряют счёт времени во время медитации, это также может гарантировать, что вы не будете медитировать слишком долго. Обязательно также выделите себе время после медитации, чтобы осознать, где вы находитесь, и постепенно вставать.\n\nХотя некоторые люди медитируют более длительные сеансы, даже несколько минут каждый день могут иметь значение. Начните с короткого, 5-минутного сеанса медитации и увеличьте количество сеансов на 10–15 минут, пока вам не станет удобно медитировать по 30 минут за раз',
                style: onboardingText,
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: ClipRRect(
                  child: Image.asset(
                    'assets/images/program_screen_one/screen_one.jpeg',
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15, bottom: 5),
                child: Text('Сосредоточьтесь на дыхании', style: programSubtitle),
              ),
              Text(
                'Осознание дыхания — это важная часть медитации и практики осознанности. Когда мы настраиваемся на ощущение воздуха, входящего и выходящего из нашего тела, мы углубляем своё внимание к моменту здесь и сейчас. Поднимающийся и опускающийся живот, изменение температуры вдоха и выдоха — все это помогает нам сосредоточиться на процессе дыхания и улучшить наше физическое и эмоциональное благополучие.',
                style: onboardingText,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15, bottom: 5),
                child: Text('Обращайте внимание на свои мысли', style: programSubtitle),
              ),
              Text(
                'Цель состоит не в том, чтобы остановить свои мысли, а в том, чтобы чувствовать себя более комфортно, становясь «свидетелем» мыслей. Когда мысли возникают в вашем уме, не игнорируйте и не подавляйте их. Просто отмечайте их, сохраняйте спокойствие и используйте своё дыхание как якорь. Представьте свои мысли в виде проплывающих облаков; наблюдайте, как они проплывают мимо, перемещаясь и изменяясь. Повторяйте это так часто, как вам нужно, во время медитации.',
                style: onboardingText,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15, bottom: 5),
                child: Text('Дайте себе передышку', style: programSubtitle),
              ),
              Text(
                'Если вы обнаружите, что увлеклись своими мыслями — будь то беспокойство, страх, тревожность или надежда, — понаблюдайте, куда ушёл ваш ум, без осуждения, и просто вернитесь к своему дыханию. Не будьте строги к себе, если это произойдёт; практика возвращения к своему дыханию и переориентации на настоящее — это практика осознанности.',
                style: onboardingText,
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Text('Польза', style: programHeader),
              ),
              Text(
                '1. Снижение стресса.\n2. Снижение частоты сердечных сокращений.\n3. Повышение иммунитета.\n4. Улучшение сна.',
                style: onboardingText,
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 15),
                child: ClipRRect(
                  child: Image.asset(
                    'assets/images/program_screen_one/screen_two.jpeg',
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 10),
                child: Text('Как применять в обычной жизни', style: programHeader),
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
                        'Чистите зубы: почувствуйте, как ваши ноги стоят на полу, щётка у вас в руке, а ваша рука движется вверх-вниз.',
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
                        'Мытьё посуды: наслаждайтесь ощущением тёплой воды на руках, видом пузырьков и звуками сковородок, дребезжащих о дно раковины.',
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
                        'При стирке: обратите внимание на запах чистой одежды и ощущение ткани. Добавьте элемент фокусировки и считайте свои вдохи, когда складываете белье.',
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
                        'За рулём: выключите радио или включите что‑нибудь успокаивающее, например классическую музыку. Представьте, что ваш позвоночник становится выше, найдите промежуточную точку между расслаблением рук и слишком сильным сжатием руля. Всякий раз, когда вы замечаете, что ваш разум блуждает, возвращайте своё внимание туда, где вы и ваша машина находитесь в пространстве.',
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
                        'Упражнения: вместо просмотра телевизора на беговой дорожке попробуйте сосредоточиться на своём дыхании и на том, где находятся ваши ноги при движении.',
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
                        'Готовим детей ко сну: встаньте на один уровень со своими детьми, смотрите им в глаза, больше слушайте, чем говорите, и наслаждайтесь, обнимая их. Когда вы расслабитесь, они тоже расслабятся.',
                        style: onboardingText,
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
