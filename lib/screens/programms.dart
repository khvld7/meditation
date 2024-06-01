import 'package:flutter/material.dart';
import 'package:meditation/components/card_widget.dart';
import 'package:meditation/components/style.dart';
import 'package:meditation/screens/program_data/kundalini_meditation.dart';
import 'package:meditation/screens/program_data/metta_meditation.dart';
import 'package:meditation/screens/program_data/mindfulness_meditation.dart';
import 'package:meditation/screens/program_data/tantra.dart';
import 'package:meditation/screens/program_data/transcendental_meditation.dart';
import 'package:meditation/screens/program_data/trataka.dart';
import 'package:meditation/screens/program_data/vipassana.dart';
import 'package:meditation/screens/program_data/zazen.dart';

class Programms extends StatefulWidget {
  const Programms({super.key});

  @override
  State<Programms> createState() => _ProgrammsState();
}

class _ProgrammsState extends State<Programms> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            right: MediaQuery.sizeOf(context).width / 6,
            child: Image.asset('assets/images/color/blue.png'),
          ),
          Positioned(
              top: MediaQuery.sizeOf(context).height / 5,
              right: MediaQuery.sizeOf(context).width / 10,
              child: Image.asset('assets/images/color/yellow.png')),
          Positioned(
            bottom: MediaQuery.sizeOf(context).height / 5,
            left: MediaQuery.sizeOf(context).width / 4,
            child: Image.asset('assets/images/color/red.png'),
          ),
          ListView(
            padding: EdgeInsets.symmetric(vertical: 24),
            children: [
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Expanded(
                          child: CardWidget(
                            onPressed: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (BuildContext context) {
                                  return MindfulnessMeditation();
                                },
                              ),
                            ),
                            name: 'Медитация осознанности',
                            color: programCardColor,
                          ),
                        ),
                        Padding(padding: EdgeInsets.symmetric(horizontal: 5)),
                        Expanded(
                          child: CardWidget(
                            onPressed: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (BuildContext context) {
                                  return Zazen();
                                },
                              ),
                            ),
                            name: 'Дзадзен',
                            color: programCardColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Expanded(
                          child: CardWidget(
                            onPressed: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (BuildContext context) {
                                  return TranscendentalMeditation();
                                },
                              ),
                            ),
                            name: 'Трансцендентальная медитация',
                            color: programCardColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Expanded(
                          child: CardWidget(
                            onPressed: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (BuildContext context) {
                                  return KundaliniMeditation();
                                },
                              ),
                            ),
                            name: 'Кундалини- медитация',
                            color: programCardColor,
                          ),
                        ),
                        Padding(padding: EdgeInsets.symmetric(horizontal: 5)),
                        Expanded(
                          child: CardWidget(
                            onPressed: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (BuildContext context) {
                                  return Trataka();
                                },
                              ),
                            ),
                            name: 'Тратака',
                            color: programCardColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Expanded(
                          child: CardWidget(
                            onPressed: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (BuildContext context) {
                                  return Vipassana();
                                },
                              ),
                            ),
                            name: 'Випассана',
                            color: programCardColor,
                          ),
                        ),
                        Padding(padding: EdgeInsets.symmetric(horizontal: 5)),
                        Expanded(
                          child: CardWidget(
                            onPressed: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (BuildContext context) {
                                  return MettaMeditation();
                                },
                              ),
                            ),
                            name: 'Метта-медитация',
                            color: programCardColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Expanded(
                          child: CardWidget(
                            onPressed: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (BuildContext context) {
                                  return Tantra();
                                },
                              ),
                            ),
                            name: 'Тантра',
                            color: programCardColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
