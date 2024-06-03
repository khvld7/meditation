import 'package:flutter/material.dart';
import 'package:meditation/components/style.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Trataka extends StatelessWidget {
  const Trataka({super.key});

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
              'Тратака',
              style: appBarText,
            ),
          ],
        ),
      ),
      body: Stack(
        children: [
          Positioned(
            bottom: MediaQuery.sizeOf(context).height / 5,
            left: MediaQuery.sizeOf(context).width / 3,
            child: Image.asset('assets/images/color/blue.png'),
          ),
          Positioned(
              bottom: MediaQuery.sizeOf(context).height / 5,
              right: MediaQuery.sizeOf(context).width / 4,
              child: Image.asset('assets/images/color/yellow.png')),
          Positioned(
            bottom: MediaQuery.sizeOf(context).height / 3,
            left: MediaQuery.sizeOf(context).width / 15,
            child: Image.asset('assets/images/color/red.png'),
          ),
          ListView(
            padding: EdgeInsets.symmetric(vertical: 15, horizontal: 24),
            children: [
              Text(
                'Тратака — практика сосредоточения ума, во время которой человек непрерывно смотрит на объект, находящийся прямо перед ним и затем, закрыв глаза, воспроизводит в уме образ этого объекта.\n\nЭто специальная медитация для глаз, в которой надо концентрировать взгляд на самой яркой части пламени свечи.\nЭту практику достаточно делать 1 раз в день вечером перед сном. Тратака работает с Аджна-чакрой «Третий глаз», поэтому не только предотвращает болезни глаз, но и повышает интуицию (видение «насквозь» людей и динамики развития ситуаций), способствует оптимальному принятию решений, повышает качество сновидений.',
                style: onboardingText,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15, bottom: 5),
                child: Text('Практика', style: programHeader),
              ),
              Text(
                'Когда речь идёт о сосредоточении на огонь свечи, важно, чтобы пламя горело равномерно и не мерцало, поэтому нужно практиковать в помещении, где нет сквозняков.',
                style: onboardingText,
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 15),
                child: ClipRRect(
                  child: Image.asset(
                    width: double.infinity,
                    fit: BoxFit.fitWidth,
                    'assets/images/program_screen_five/screen_one.jpeg',
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 5),
                child: Text('Свеча', style: programSubtitle),
              ),
              Text(
                'Свеча располагается на уровне глаз. Рекомендуемое расстояние — около метра или ближе, на расстоянии вытянутой руки.',
                style: onboardingText,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, bottom: 5),
                child: Text('Примите позу', style: programSubtitle),
              ),
              Text(
                'Присаживайтесь в медитативное положение со скрещёнными ногами. Руки на коленях, кисти сложены в джняна-мудру: подушечка большого пальца располагается на ногте указательного, образуя кольцо. Далее на некоторое время нужно сохранить неподвижное положение тела, которое способствует спокойствию ума, и настроиться на практику сосредоточения, прикрыв глаза. Если вы располагаете достаточным количеством времени, глаза остаются прикрытыми десять минут, затем открываются.',
                style: onboardingText,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, bottom: 5),
                child: Text('Фиксация взгляда', style: programSubtitle),
              ),
              Text(
                'Практик направляет взгляд на внешний объект — пламя свечи. Область фиксации взгляда — средняя часть пламени, чуть выше фитиля. По возможности, старайтесь не моргать. Важно закрывать глаза ещё до появления слёз или какого‑либо напряжения.',
                style: onboardingText,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, bottom: 5),
                child: Text('Сосредоточение ', style: programSubtitle),
              ),
              Text(
                'Когда внимание стало достаточно устойчивым, практик прикрывает глаза и представляет образ объекта концентрации. Сосредоточение на образ по ту сторону закрытых глаз называется дришти садханой: «дришти» — «видение», «cадхана» — «духовная дисциплина». Когда вы попробуете некоторое время смотреть на пламя свечи и затем закроете глаза, то наверняка увидите световое пятно-отпечаток, который виден на внутреннем экране сознания. Это пятно — первоначальный объект для концентрации. Первое время он может двигаться и блуждать, но постепенно станет всё более и более устойчивым. С опытом практики вы сможете чётче визуализировать пламя целиком. Способность к визуализации — это постепенный процесс, требующий времени.',
                style: onboardingText,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, bottom: 5),
                child: Text('Время медитации', style: programSubtitle),
              ),
              Text(
                'Затем глаза снова открывают для сосредоточения на внешний объект. Чередование концентрации с открытыми и закрытыми глазами способствует тому, чтобы объект концентрации становился всё более и более чётким во время визуализации. Эту практику можно выполнять от нескольких минут до часа. Рекомендуемое время: двадцать минут. Тратака может быть как самостоятельной личной практикой, так и частью совокупности йогических и медитативных практик. Для сосредоточения важно, чтобы объект концентрации вызывал у человека доверие. Если человек концентрируется на объекте, который не вызывает отклик, то больше вероятности отвлечений ума. Сам по себе огонь не относится к какой‑либо философии или мировосприятию и является стихией, поэтому тратака на огонь — универсальный инструмент, подходящий всем людям, если нет противопоказаний.',
                style: onboardingText,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, bottom: 5),
                child: Text('Противопоказания к практике тратаки', style: programSubtitle),
              ),
              Text(
                '1. Глаукома\n2. Острые воспалительные заболевания органов зрения.\n3. Патология сетчатки.\n',
                style: onboardingText,
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 5),
                child: Text('Польза', style: programHeader),
              ),
              Text(
                '1. Исцеление головных болей.\n2. Улучшение зрения при близорукости и астигматизме.\n3. Снижение явлений катаракты на ранних стадиях.\n',
                style: onboardingText,
              ),
            ],
          )
        ],
      ),
    );
  }
}
