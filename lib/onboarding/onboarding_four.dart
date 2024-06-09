import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:meditation/components/custom_button.dart';
import 'package:meditation/components/style.dart';
import 'package:meditation/screens/screens.dart';

class OnboardingFour extends StatefulWidget {
  const OnboardingFour({super.key});

  @override
  State<OnboardingFour> createState() => _OnboardingFourState();
}

class _OnboardingFourState extends State<OnboardingFour> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: MediaQuery.sizeOf(context).height / 10,
            right: MediaQuery.sizeOf(context).width / 4,
            child: Image.asset('assets/images/color/blue.png'),
          ),
          Positioned(
            top: MediaQuery.sizeOf(context).height / 5,
            left: MediaQuery.sizeOf(context).width / 5,
            child: Image.asset('assets/images/color/yellow.png'),
          ),
          Positioned(
            left: MediaQuery.sizeOf(context).width / 4,
            child: Image.asset('assets/images/color/red.png'),
          ),
          ListView(
            shrinkWrap: true,
            padding: EdgeInsets.only(left: 24, top: 10, bottom: 30, right: 24),
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Польза',
                    style: TextStyle(fontFamily: 'Nunito', fontWeight: FontWeight.w400, fontSize: 31),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5.0),
                    child: Text(
                      'Повышение концентрации и работоспособности.',
                      style: TextStyle(fontFamily: 'Nunito', fontWeight: FontWeight.w700, fontSize: 17),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10.0),
                    child: Text(
                      'При регулярных занятиях медитация улучшает внимание, скорость реакции и концентрацию. Участники, проходившие тест Струпа до и после практик осознанности, показали более высокий уровень внимательности после занятий. При этом занятия не повлияли на вербальные навыки и коммуникацию.',
                      style: onboardingText,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10.0),
                    child: Text(
                      'Также было выявлено, что пациенты с рассеянным склерозом стали меньше утомляться после полугода занятий йогой, включающей техники и позы для расслабления. Участники, занимавшиеся на велотренажере, достигли схожих результатов.',
                      style: onboardingText,
                    ),
                  ),
                  Text(
                    'Снижение уровня стресса.',
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.w700, fontFamily: 'Nunito'),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5, bottom: 10.0),
                    child: Text(
                      'Занятия медитацией помогают учиться спокойно реагировать на различные события, снижают уровень тревожности и вероятность панических атак. Важно помнить, что медитация не заменит профессионального лечения тревожного расстройства и других психических заболеваний.',
                      style: onboardingText,
                    ),
                  ),
                  Text(
                    'Улучшение памяти.',
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.w700, fontFamily: 'Nunito'),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5, bottom: 10.0),
                    child: Text(
                      'Постоянная выработка кортизола при стрессе может оказывать негативное влияние на наше здоровье и психическое состояние. Медитации предлагаются как способ справиться со стрессом и улучшить психоэмоциональное состояние. Исследования также указывают на положительное влияние регулярной медитативной практики на мозг и процессы старения.',
                      style: onboardingText,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: CustomButton(textStyle: TextStyle(fontSize: 14,fontWeight: FontWeight.w700,fontFamily: 'Nunito'),
                            child: Text('Продолжить'),
                            textColor: Colors.white,
                            color: buttonColor,
                            borderRadius: BorderRadius.circular(10),
                            onPressed: () {
                              Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (BuildContext context) {
                                return Screens();
                              }), (route) => false);
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
