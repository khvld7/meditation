import 'package:flutter/material.dart';
import 'package:meditation/components/card_widget.dart';
import 'package:meditation/components/style.dart';
import 'package:meditation/screens/exercises_data/alternate_breathing.dart';
import 'package:meditation/screens/exercises_data/asymmetric_breathing.dart';
import 'package:meditation/screens/exercises_data/breath.dart';
import 'package:meditation/screens/exercises_data/breathing_aromatic_oils.dart';
import 'package:meditation/screens/exercises_data/breathing_children.dart';
import 'package:meditation/screens/exercises_data/breathing_resistance.dart';
import 'package:meditation/screens/exercises_data/diaphragmatic_breathing.dart';
import 'package:meditation/screens/exercises_data/inflating.dart';
import 'package:meditation/screens/exercises_data/observation.dart';
import 'package:meditation/screens/exercises_data/resonant_breathing.dart';
import 'package:meditation/screens/exercises_data/square_breathing.dart';

class Exercises extends StatefulWidget {
  const Exercises({super.key});

  @override
  State<Exercises> createState() => _ExercisesState();
}

class _ExercisesState extends State<Exercises> {
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
                            name: 'Наблюдение за процессом дыхания',
                            color: exercisesCardColor,
                            onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
                              return Observation();
                            })),
                          ),
                        ),
                        Padding(padding: EdgeInsets.symmetric(horizontal: 5)),
                        Expanded(
                          child: CardWidget(
                            name: 'Надувание шарика',
                            color: exercisesCardColor,
                            onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
                              return Inflating();
                            })),
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
                            name: 'Асимметричное дыхание\n(дыхание через «трубочку»)',
                            color: exercisesCardColor,
                            onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
                              return AsymmetricBreathing();
                            })),
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
                            name: 'Дыхание «по квадрату» \n(4-4-4-4)',
                            color: exercisesCardColor,
                            onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
                              return SquareBreathing();
                            })),
                          ),
                        ),
                        Padding(padding: EdgeInsets.symmetric(horizontal: 5)),
                        Expanded(
                          child: CardWidget(
                            name: 'Дыхание\n4-7-8',
                            color: exercisesCardColor,
                            onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
                              return Breath();
                            })),
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
                            name: 'Дыхание с сопротивлением',
                            color: exercisesCardColor,
                            onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
                              return BreathingResistance();
                            })),
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
                            name: 'Резонансное когерентное дыхание',
                            color: exercisesCardColor,
                            onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
                              return ResonantBreathing();
                            })),
                          ),
                        ),
                        Padding(padding: EdgeInsets.symmetric(horizontal: 5)),
                        Expanded(
                          child: CardWidget(
                            name: 'Дыхание с аромамаслами',
                            color: exercisesCardColor,
                            onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
                              return BreathingAromaticOils();
                            })),
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
                            name: 'Диафрагмальное дыхание',
                            color: exercisesCardColor,
                            onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
                              return DiaphragmaticBreathing();
                            })),
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
                            name: 'Попеременное дыхание через каждую ноздрю',
                            color: exercisesCardColor,
                            onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
                              return AlternateBreathing();
                            })),
                          ),
                        ),
                        Padding(padding: EdgeInsets.symmetric(horizontal: 5)),
                        Expanded(
                          child: CardWidget(
                            name: 'Дыхательные упражнения для детей',
                            color: exercisesCardColor,
                            onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
                              return BreathingChildren();
                            })),
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
