import 'package:flutter/material.dart';
import 'package:meditation/components/style.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MettaMeditation extends StatelessWidget {
  const MettaMeditation({super.key});

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
              'Метта-медитация',
              style: appBarText,
            ),
          ],
        ),
      ),
      body: Stack(
        children: [
          Positioned(
            top: MediaQuery.sizeOf(context).height / 6,
            right: MediaQuery.sizeOf(context).width / 4,
            child: Image.asset('assets/images/color/blue.png'),
          ),
          Positioned(
              bottom: MediaQuery.sizeOf(context).height / 3,
              left: MediaQuery.sizeOf(context).width / 10,
              child: Image.asset('assets/images/color/yellow.png')),
          Positioned(
            top: MediaQuery.sizeOf(context).height / 4,
            left: MediaQuery.sizeOf(context).width / 5,
            child: Image.asset('assets/images/color/red.png'),
          ),
          ListView(
            padding: EdgeInsets.symmetric(vertical: 15, horizontal: 24),
            children: [
              Text(
                'Слово «метта» обычно переводят с санскрита как «любящая доброта», «безусловная любовь», «дружелюбие». Это техника медитации, которая направлена на развитие дружелюбия ко всем живым существам. Будто солнце, которое светит в разных направлениях и дарит своё тепло всем без исключения, так и мы не должны разделять живых существ на тех, кто достоин или не достоин нашего сердечного тепла и дружелюбия.\n\nПрактика метта-медитации делает нас более счастливым и гармоничным человеком, учит смотреть в будущее не со страхом и опасением, а с глубоким пониманием, что все события в жизни приходят лишь для нашего развития. Благодаря практике любящей доброты улучшаются взаимоотношения с окружающими людьми, реже возникают конфликтные ситуации, нам становится проще понять мотивы другого человека, а главное — с любовью и мудростью принять все ситуации, которые, согласно закону кармы, мы же сами и породили.',
                style: onboardingText,
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 15),
                child: ClipRRect(
                  child: Image.asset(
                    width: double.infinity,
                    fit: BoxFit.fitWidth,
                    'assets/images/program_screen_seven/screen_one.jpeg',
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 15),
                child: Text('Практика', style: programHeader),
              ),
              Text(
                'Для того, чтобы начать практиковать метта-медитацию безусловной любви, найдите тихое спокойное место, где можно принять удобное положение и расслабиться. В «Метта-сутте» говорится, что практиковать можно, пребывая в четырёх положениях тела: во время ходьбы, лёжа, сидя или стоя. Главное — сохранять осознанность в практике и не засыпать.\n\nВ начале практики вы должны быть расслаблены, а ваш ум — находиться в состоянии спокойствия. Далее переведите внимание в сердечный центр (Анахата-чакру) и представьте, как солнце светит из вашей груди и направляет лучи тепла во все стороны. Этот тёплый свет и есть ваша метта. Сконцентрируйтесь на приятных ощущениях тепла и расширения в районе груди. Для благопожеланий лучше выбрать простую и лаконичную фразу, которая отражает суть практики: «Пусть все живые существа будут счастливы и свободны от страданий».\n\nПосле этого приступайте к визуализации разных категорий людей либо направлений сторон света, в зависимости от выбранной техники. Главное, чтобы ваши благие пожелания были искренними и произносились с чувством любви и дружелюбия.',
                style: onboardingText,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15, bottom: 5),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 10),
                      child: Text('1.', style: onboardingText),
                    ),
                    Expanded(
                      child: Text(
                        'Будда учил, что вначале безусловную любовь следует развивать к себе: чем богаты, тем и делимся! Начинаем формировать пространство безусловной любви — чувствуем приятное тепло и расширение в области груди. Представляем свой образ. Со всей искренностью и теплотой направляем благие пожелания самому себе.',
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
                        'Пространство безусловной любви расширяем и направляем на близких людей: родителей, жену/мужа, детей, братьев и сестёр, друзей и так далее. Также направляем благие пожелания нашим учителям, которые помогли нам обрести мудрость и знание.',
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
                        'Далее представляем нейтральных людей. Это могут быть случайные прохожие, попутчики в метро либо люди, которых мы даже не встретим в этой жизни. Все мы друг с другом связаны, пусть даже эта связь может быть неочевидна. Если рассуждать с позиции, что все существа когда‑то были нашими родителями, то исчезнет деление на своих и чужих и становится очевидно, что нет никаких чужих.',
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
                        'Продолжаем расширять пространство нашей любви и представляем человека либо людей, с которыми у нас складывались сложные отношения. Пришло время открыть своё сердце тому, кто находился в роли нашего недоброжелателя. Не стоит при этом исключать, что в следующий момент он может стать нам другом, либо был нашим родственником (например, в прошлых жизнях). Искренне направляя благие пожелания, мы можем постепенно улучшить отношения с нашим недоброжелателем и даже впоследствии стать с ним друзьями. Всё зависит лишь от силы нашей практики метты. С регулярной практикой перемены в жизни не заставят себя ждать!',
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
                      child: Text('5.', style: onboardingText),
                    ),
                    Expanded(
                      child: Text(
                        'Направляем благие пожелания на всех жителей города, в котором живём, области, всей нашей страны и всего мира, формируя следующее намерение: «Пусть все существа — видимые и невидимые, во всех мирах и во всех направлениях — будут счастливы и свободны от страданий!»',
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
                    'assets/images/program_screen_seven/screen_two.jpeg',
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              Text(
                'Бханте Хенепола Гунаратана «Любящая доброта простыми словами. Практика метты»',
                style: programSubtitle,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15, bottom: 5),
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
                        'Пусть обрету я благополучие, счастье и спокойствие. Пусть не коснётся меня никакой вред. Пусть мне всегда сопутствует успех на духовном пути. Пусть мне достанет терпения, смелости, понимания и решительности, чтобы встретить и преодолеть все неизбежные жизненные трудности, проблемы и неудачи. Пусть мне всегда удаётся подняться над ними с этичным отношением, честностью, прощением, состраданием, внимательностью и мудростью.',
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
                        'Пусть обретут мои родители благополучие, счастье и спокойствие. Пусть не коснётся их никакой вред. Пусть им всегда сопутствует успех на духовном пути. Пусть им достанет терпения, смелости, понимания и решительности, чтобы встретить и преодолеть все неизбежные жизненные трудности, проблемы и неудачи. Пусть им всегда удаётся подняться над ними с этичным отношением, честностью, прощением, состраданием, внимательностью и мудростью.',
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
                        'Пусть обретут мои учителя благополучие, счастье и спокойствие. Пусть не коснётся их никакой вред. Пусть им всегда сопутствует успех на духовном пути. Пусть им достанет терпения, смелости, понимания и решительности, чтобы встретить и преодолеть все неизбежные жизненные трудности, проблемы и неудачи. Пусть им всегда удаётся подняться над ними с этичным отношением, честностью, прощением, состраданием, внимательностью и мудростью.',
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
                        'Пусть обретут мои родственники благополучие, счастье и спокойствие. Пусть не коснётся их никакой вред. Пусть им всегда сопутствует успех на духовном пути. Пусть им достанет терпения, смелости, понимания и решительности, чтобы встретить и преодолеть все неизбежные жизненные трудности, проблемы и неудачи. Пусть им всегда удаётся подняться над ними с этичным отношением, честностью, прощением, состраданием, внимательностью и мудростью.',
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
                        'Пусть обретут мои друзья благополучие, счастье и спокойствие. Пусть не коснётся их никакой вред. Пусть им всегда сопутствует успех на духовном пути. Пусть им достанет терпения, смелости, понимания и решительности, чтобы встретить и преодолеть все неизбежные жизненные трудности, проблемы и неудачи. Пусть им всегда удаётся подняться над ними с этичным отношением, честностью, прощением, состраданием, внимательностью и мудростью.',
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
                        'Пусть обретут все люди, которые мне безразличны, благополучие, счастье и спокойствие. Пусть не коснётся их никакой вред. Пусть им всегда сопутствует успех на духовном пути. Пусть им достанет терпения, смелости, понимания и решительности, чтобы встретить и преодолеть все неизбежные жизненные трудности, проблемы и неудачи. Пусть им всегда удаётся подняться над ними с этичным отношением, честностью, прощением, состраданием, внимательностью и мудростью.',
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
                        'Пусть обретут все недружелюбные ко мне люди благополучие, счастье и спокойствие. Пусть не коснётся их никакой вред. Пусть им всегда сопутствует успех на духовном пути. Пусть им достанет терпения, смелости, понимания и решительности, чтобы встретить и преодолеть все неизбежные жизненные трудности, проблемы и неудачи. Пусть им всегда удаётся подняться над ними с этичным отношением, честностью, прощением, состраданием, внимательностью и мудростью.',
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
                        'Пусть обретут все живые существа благополучие, счастье и спокойствие. Пусть не коснётся их никакой вред. Пусть им всегда сопутствует успех на духовном пути. Пусть им достанет терпения, смелости, понимания и решительности, чтобы встретить и преодолеть все неизбежные жизненные трудности, проблемы и неудачи. Пусть им всегда удаётся подняться над ними с этичным отношением, честностью, прощением, состраданием, внимательностью и мудростью.',
                        style: onboardingText,
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 0),
                child: ClipRRect(
                  child: Image.asset(
                    width: double.infinity,
                    fit: BoxFit.fitWidth,
                    'assets/images/program_screen_seven/screen_three.jpeg',
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Text('Польза', style: programHeader),
              ),
              Text(
                '1. Хороший сон, лёгкое пробуждение и благополучные сны.\n2. Симпатия окружающих людей и других существ, защита богами.\n3. Огонь, яд и оружие обходят стороной практикующего.\n4. Ум такого человека быстро сосредоточивается.\n5. Его внешность вызывает расположение.\n6. Благополучное перерождение: если он не поднимается выше, то направляется в миры Брахмы.',
                style: onboardingText,
              ),
            ],
          )
        ],
      ),
    );
  }
}
