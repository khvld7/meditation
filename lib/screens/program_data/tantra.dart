import 'package:flutter/material.dart';
import 'package:meditation/components/style.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Tantra extends StatelessWidget {
  const Tantra({super.key});

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
              'Тантра',
              style: appBarText,
            ),
          ],
        ),
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
                'Если при слове «тантрический» у вас в голове всплывает слово «секс», то вы глубоко ошибаетесь. Тантрическая философия — мудрое и глубокое учение, которое подразумевает под собой не только физический контакт. Тантра в переводе означает «расширение» и подразумевает под собой практики, расширяющие сознание. Йога — одна из частей тантры, но тантра не состоит только из йоги. Она включает в себя:',
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
                        'различные ритуалы и практики; ',
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
                        'умственные и физические упражнения;',
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
                        'поклонение божествам;',
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
                        'применение лечебных трав;',
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
                        'литотерапию (лечение камнями);',
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
                        'изучение астрологии; мантры и янтры.',
                        style: onboardingText,
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Text(
                  'Однако не всегда практики подразумевают под собой весь комплекс. Вы можете использовать отдельные элементы. Для чего? Регулярно практикующие говорят, что это помогает им «прийти к себе», то есть понять свои истинные цели и желания, достичь гармонии с собой и миром, жить в постоянном ощущении счастья. Дамы отмечают, что становятся спокойнее и находят вторую половинку, хорошего партнёра. Если же у вас уже есть мужчина, можно попробовать тантрические практики для двоих: вы гармонизируете отношения, начнёте лучше чувствовать и понимать друг друга.',
                  style: onboardingText,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 15),
                child: ClipRRect(
                  child: Image.asset(
                    width: double.infinity,
                    fit: BoxFit.fitWidth,
                    'assets/images/program_screen_eight/screen_one.jpeg',
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 15),
                child: Text('Практика', style: programHeader),
              ),
              Text(
                'Есть много специальных тантрических практик для женщин, но некоторые из них требуют предварительной подготовки. Если вы никогда не практиковали медитацию, йогу, то тантра может вам «не пойти»: вам будет казаться, что вы занимаетесь глупостями, ум будет отвлекаться на рутинные дела, и постепенно вы просто забудете, что хотели освоить практики.\n\nМожно начать с элементарных действий, которые положительно скажутся на психике; помогут успокоиться, отвлечься от стрессов и наполнят энергией. Это совсем простые действия.',
                style: onboardingText,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15, bottom: 5),
                child: Text('Наслаждение едой', style: programSubtitle),
              ),
              Text(
                'Как часто мы едим на бегу, буквально как голодные животные: откусываем кусок за куском и глотаем, даже не ощущая вкуса продуктов! К тому же едва ли не треть людей едят, уткнувшись в экран смартфона или телевизора, в лучшем случае — в страницы газеты. Попробуйте по‑другому. Достаньте красивую посуду, насыпьте в неё еды, отключите все гаджеты и ешьте медленно, пытаясь почувствовать все многообразие вкусовых оттенков. Какой эффект ждать? У вас улучшится пищеварение, не будет переедания — так даже проще будет похудеть. А кроме того, вы наполнитесь энергией и будете более спокойно реагировать на стрессы.',
                style: onboardingText,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15, bottom: 5),
                child: Text('Погружение в хобби', style: programSubtitle),
              ),
              Text(
                'Что вы любите? Слушать музыку или играть на гитаре, рисовать, разгадывать кроссворды? Неважно, какое именно и у вас хобби и насколько глупым его считают люди. Ваше увлечение — именно то, что наполняет вас огромным количеством энергии. Попробуйте на часок отключить все уведомления на телефоне, уйти в отдельную комнату и погрузиться в то, что доставляет вам удовольствие. Эффект будет колоссальным, вы будто заново родитесь. Особенно хорошо это будет работать, если вы в плохом настроении, депрессии, чувствуете упадок сил или просто сильно перенервничали.',
                style: onboardingText,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15, bottom: 5),
                child: Text('Выражение эмоций', style: programSubtitle),
              ),
              Text(
                'К сожалению, в обществе не всегда можно быть собой. Вы ведь не будете кричать на начальника или плакать от обиды на подругу на вечеринке, верно? Но, если долго копить в себе эмоции, они выливаются в болезни, депрессии. Что же делать? Выплёскивайте свои эмоции там, где их никто не видит. Можете дома покричать про идиота-начальника и побить подушку. Можно пожаловаться коту на подругу и выплакать все слезы, которые накопились. Но и про позитив не забывайте, не держите в себе радость даже от простых событий: улыбайтесь хорошей погоде, смешному коту на крыльце, яркой клумбе. Подумайте, как вам повезло: вы живы, здоровы, можете видеть красоту, слышать чудесную музыку, ходить по прекрасным местам!',
                style: onboardingText,
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 15),
                child: ClipRRect(
                  child: Image.asset(
                    width: double.infinity,
                    fit: BoxFit.fitWidth,
                    'assets/images/program_screen_eight/screen_two.jpeg',
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15, bottom: 5),
                child: Text('Прикосновения', style: programSubtitle),
              ),
              Text(
                'А это тантрическая практика для двоих. Попробуйте нежно прикасаться друг к другу, гладить руки, тело, делать лёгкий массаж. Не торопитесь: каждое движение должно быть очень медленным и нежным, будто вы касаетесь чего‑то хрупкого. Важно прочувствовать не просто физическое влечение друг к другу, а что‑то более мощное, наполняющее энергией вас обоих.',
                style: onboardingText,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15, bottom: 5),
                child: Text('Работа с телом', style: programSubtitle),
              ),
              Text(
                'Тантрические практики для женщин подразумевают работу с телом, энергия и женская сущность раскрываются именно так. Причём речь тут идёт не только о физических упражнениях, но и о психологическом аспекте. Вы должны любить своё тело и принимать его таким, какое оно есть. Вспомните, сколько раз, глядя в зеркало, вы подмечали свои недостатки: нос большеват, глаза маловаты, осанка как у шахматного коня, грудь маленькая, целлюлит виден… Уверены, этот монолог звучит у 90% милых дам в голове каждый день. И это — прямой путь к потере энергии. А сколько раз вы замечали собственные достоинства? Наверное, по пальцам можно пересчитать. Измените отношение к себе: начинайте подмечать свои достоинства, красоту. Поищите в себе то, что вам нравится, влюбитесь в себя. Так вы покажете и миру, окружающим, что достойны любви. Кто полюбит человека, который сам себя считает недостойным этого чувства?!\nПроизносите аффирмации, говорите о себе приятные вещи, начните относиться к себе хорошо. Сначала это будет непривычно и очень дискомфортно, но, если проявить настойчивость, уже через пару недель вы заметите, что и окружающие сменили своё мнение о вас к лучшему, стали добрее, чаще говорят комплименты. И собственное тело тоже откликнется на это: будет меньше высыпаний, вес нормализуется, станете лучше себя чувствовать. Дополните это физическими занятиями: йога, пилатес, танцы прекрасно подойдут для раскрытия женственности.',
                style: onboardingText,
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 15),
                child: ClipRRect(
                  child: Image.asset(
                    width: double.infinity,
                    fit: BoxFit.fitWidth,
                    'assets/images/program_screen_eight/screen_three.jpeg',
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 5),
                child: Text('Получение энергии у природы', style: programSubtitle),
              ),
              Text(
                'Замечали, что после выезда на природу откуда‑то появляется море сил и энергии, уходят все волнения и тревоги? Эффект можно усилить специальными тантрическими практиками. Если вы у водоёма, сядьте возле него, представьте, что вода омывает вас, смывая все плохое, все волнения и негатив. Затем, когда посчитаете нужным, представьте, что вместе с влагой в ваше тело вливается чистая и светлая энергия природы. Если вы в лесу, подойдите к дереву. Женщинам лучше стоять лицом к дереву, мужчине — спиной. Обопритесь на ствол или обнимите его, почувствуйте, как дерево даёт вам свою энергию. Стойте столько, сколько посчитаете нужным.',
                style: onboardingText,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15, bottom: 5),
                child: Text('Парные тантрические практики', style: programSubtitle),
              ),
              Text(
                'Вместе со своим партнёром примите удобные позы сидя или лёжа. При этом важно, чтобы позвоночник был прямым, вы были расслаблены и находились максимально близко друг к другу. Начните прислушиваться к дыханию друг друга и постарайтесь синхронизировать его, только без усилий, все должно получаться легко и естественно. Ни о чем не думайте, сосредоточьтесь на дыхании, почувствуйте, как воздух наполняет лёгкие, ваши и вашего партнёра. Представьте, что вы единый организм, у вас одни лёгкие на двоих. Несколько минут удерживайте это ощущение. Прерывайте практику, как только почувствуете дискомфорт. Ещё один вариант чуть более сложный. Вам нужно сесть с партнёром спина к спине. Лучше всего делать это в позе лотоса или же просто сесть на колени. Соприкоснитесь спинами и представьте, что вы единый организм, синхронизируйте дыхание. После этого представьте, как сверху на вас спускается светлый поток, очищает от всего плохого, убирает негатив и наполняет вас чистой энергией. С помощью таких техник вы устанавливаете тантрический контакт с партнёром. Вам проще будет понимать друг друга, улаживать конфликты, отношения гармонизируются.',
                style: onboardingText,
              ),
            ],
          )
        ],
      ),
    );
  }
}
