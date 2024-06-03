import 'package:flutter/material.dart';
import 'package:meditation/components/style.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TranscendentalMeditation extends StatelessWidget {
  const TranscendentalMeditation({super.key});

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
              'Трансцендентальная медитация',
              style: appBarText,
            ),
          ],
        ),
      ),
      body: Stack(
        children: [
          Positioned(
            bottom: MediaQuery.sizeOf(context).height / 4,
            left: MediaQuery.sizeOf(context).width / 3,
            child: Image.asset('assets/images/color/blue.png'),
          ),
          Positioned(
              top: MediaQuery.sizeOf(context).height / 4,
              right: MediaQuery.sizeOf(context).width / 10,
              child: Image.asset('assets/images/color/yellow.png')),
          Positioned(
            bottom: MediaQuery.sizeOf(context).height / 4,
            right: MediaQuery.sizeOf(context).width / 3,
            child: Image.asset('assets/images/color/red.png'),
          ),
          ListView(
            padding: EdgeInsets.symmetric(vertical: 15, horizontal: 24),
            children: [
              Text(
                'Трансцендентальная медитация — это способ погружения в глубокое состояние покоя и спокойствия, который помогает снизить уровень стресса и обеспечить мозгу отдых. Она не требует особых усилий и занимает немного времени, что делает её доступной для повседневной практики. Этот метод медитации позволяет сместить внимание с повседневных забот на абстрактный уровень восприятия, что способствует восстановлению и гармонии.',
                style: onboardingText,
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Text('Практика', style: programHeader),
              ),
              Text(
                'Необходимо всего 20 минут утром и вечером (до ужина), чтобы войти в состояние совершённой неподвижности и успокоить ум. Правильное чтение мантры позволяет достичь сознания абсолютной тишины, сделать сознание чистым, а тело — лёгким и невесомым.',
                style: onboardingText,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15, bottom: 5),
                child: Text('Длительность', style: programSubtitle),
              ),
              Text(
                'Необходимо выделить минут 20 своего времени. Пусть в это время никто тебя не беспокоит. Можно поставить таймер.',
                style: onboardingText,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15, bottom: 5),
                child: Text('Место', style: programSubtitle),
              ),
              Text(
                'Место для проведения медитации, особенно в начале практики, должно быть тихое, свободное от посторонних звуков, и всего, что может отвлекать. Рекомендуется отключить телефон и все гаджеты. Домашние животные не должны мешать.',
                style: onboardingText,
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 15),
                child: ClipRRect(
                  child: Image.asset(
                    'assets/images/program_screen_three/screen_one.jpeg',
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 5),
                child: Text('Мантра', style: programSubtitle),
              ),
              Text(
                'Найдите подходящую для тебя мантру.',
                style: onboardingText,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15, bottom: 5),
                child: Text('Примите позу', style: programSubtitle),
              ),
              Text(
                'Сядьте удобно с прямой спиной, ни на что не опираясь. Такая поза позволит дышать свободно. ',
                style: onboardingText,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15, bottom: 5),
                child: Text('Техника', style: programSubtitle),
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
                        'Медленно закройте глаза, почувствуйте тело. Ощутите свой позвоночник, волну, проходящую от затылка ко лбу, по лицу, щекам, подбородку, вниз до кончиков пальцев на ногах и руках.',
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
                        'Пропустите волну в обратном порядке, ощутите, как тело стало тяжелым, ватным.',
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
                        'Полностью выдохните воздух, задержите дыхание, вдохните воздух, почувствуйте тепло в солнечном сплетении.',
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
                        'Медленно про себя произнесите мантру на выдохе. В это время перемещайте внимание с солнечного сплетения на грудь, горло и макушку.',
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
                        'Снова вдохните и повторяйте цикл много раз.',
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
                        'Постепенно в процессе пропевания мантры, мысли покинут голову, останется чистое сознание и мантра.',
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
                        'Завершите практику, откройте глаза.',
                        style: onboardingText,
                      ),
                    )
                  ],
                ),
              ),
              Text(
                'Во время практики, к примеру, можно представлять, как болезни покидают тело, оно наполняется энергией праны на вдохе, становится сильным, ловким, здоровым.',
                style: onboardingText,
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Text('Польза', style: programHeader),
              ),
              Text(
                '1. Релаксация и устранение бессонницы.\n2. Уменьшение стрессовой нагрузки.\n3. Лечение депрессии.\n4. Улучшение здоровья.\n5. Избавление от зависимостей.\n6. Развитие умственных способностей.\n7. Достижение счастья и удовлетворённости.',
                style: onboardingText,
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Text('Как подобрать мантру правильно', style: programHeader),
              ),
              Text(
                'В традиционной практике трансцендентальной медитации мантру для ученика подбирает учитель. Запрещено делиться мантрой, полученной от учителя. Однако, в сети много информации по выбору мантры. Можно выбрать мантру, подходящую вашему возрасту. Можно взять за основу стандартные мантры йоги. Всё будет зависеть от вашей веры в правильность выбора и, от того, как это будет отзываться в вашем теле.\n\nМантра как объект интересна только с точки зрения звуковых вибраций, которые создаются при её произношении. Каждый человек может выбрать для себя звуковой ряд, приятный для его уха. Он сделает это интуитивно, опираясь на внутренние ощущения своего тела. Насколько второй вариант выбора мантры будет изменять результат практики? Вероятнее, не будет, если практик будет иметь веру в правильность своего выбора',
                style: onboardingText,
              ),
            ],
          )
        ],
      ),
    );
  }
}
