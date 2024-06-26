import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:meditation/adapter/hive_adapter.dart';
import 'package:meditation/client/hive_names.dart';
import 'package:meditation/components/style.dart';
import 'package:meditation/screens/diary.dart';
import 'package:meditation/screens/diary_data/add_pin.dart';
import 'package:meditation/screens/exercises.dart';
import 'package:meditation/screens/programms.dart';
import 'package:meditation/screens/settings.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:meditation/timer.dart';

class Screens extends StatefulWidget {
  const Screens({super.key});

  @override
  State<Screens> createState() => _ScreensState();
}

class _ScreensState extends State<Screens> {
  List<Widget> screens = [
    Programms(),
    Diary(),
    Exercises(),
    Settings(),
  ];
  int _selectIndex = 0;
  @override
  Widget build(BuildContext context) {
    var diaryBox = Hive.box<DiaryDB>(HiveBoxes.diary);
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Row(
            children: [
              if (_selectIndex == 0) Expanded(child: Text('Программы', style: appBarText, maxLines: 2, softWrap: true)),
              if (_selectIndex == 1) Expanded(child: Text('Дневник настроения', style: appBarText, maxLines: 2, softWrap: true)),
              if (_selectIndex == 2) Expanded(child: Text('Дыхательные упражнения', style: appBarText, maxLines: 2, softWrap: true)),
              if (_selectIndex == 3) Expanded(child: Text('Настройки', style: appBarText, maxLines: 2, softWrap: true)),
            ],
          ),
        ),
        actions: [
          if (_selectIndex == 1 && diaryBox.isNotEmpty)
            RawMaterialButton(
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              hoverColor: Colors.transparent,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) {
                      return AddPin();
                    },
                  ),
                ).then((value) => setState(() {}));
              },
              child: SvgPicture.asset(
                'assets/icons/plus.svg',
                colorFilter: ColorFilter.mode(Colors.black, BlendMode.srcIn),
              ),
            ),
          if (_selectIndex == 2)
            RawMaterialButton(
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              hoverColor: Colors.transparent,
              onPressed: () {
                showAdaptiveDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 30.0, sigmaY: 30.0),
                      child: TimerWidget(),
                    );
                  },
                );
              },
              child: SvgPicture.asset('assets/icons/timer.svg'),
            ),
        ],
      ),
      bottomNavigationBar: Theme(
        data: ThemeData(
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
          hoverColor: Colors.transparent,
        ),
        child: BottomNavigationBar(
          selectedFontSize: 0,
          unselectedFontSize: 0,
          useLegacyColorScheme: true,
          currentIndex: _selectIndex,
          onTap: (index) => setState(() {
            _selectIndex = index;
          }),
          type: BottomNavigationBarType.fixed,
          showUnselectedLabels: true,
          unselectedItemColor: Color.fromRGBO(140, 141, 149, 1),
          selectedItemColor: blueColor,
          selectedIconTheme: IconThemeData(color: blueColor),
          items: [
            BottomNavigationBarItem(
              label: '',
              icon: Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset('assets/icons/navbar/lotus.svg'),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Text(
                        'Программы медитаций',
                        style: TextStyle(
                            fontSize: 11,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Nunito',
                            overflow: TextOverflow.clip,
                            color: Color.fromRGBO(140, 141, 149, 1)),
                        textAlign: TextAlign.center,
                      ),
                    )
                  ],
                ),
              ),
              activeIcon: Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      'assets/icons/navbar/lotus.svg',
                      colorFilter: ColorFilter.mode(blueColor, BlendMode.srcIn),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Text(
                        'Программы медитаций',
                        style:
                            TextStyle(fontSize: 11, fontWeight: FontWeight.w500, fontFamily: 'Nunito', overflow: TextOverflow.clip, color: blueColor),
                        textAlign: TextAlign.center,
                      ),
                    )
                  ],
                ),
              ),
            ),
            BottomNavigationBarItem(
              label: '',
              icon: Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset('assets/icons/navbar/edit.svg'),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Text(
                        'Дневник настроения',
                        style: TextStyle(
                            fontSize: 11,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Nunito',
                            overflow: TextOverflow.clip,
                            color: Color.fromRGBO(140, 141, 149, 1)),
                        textAlign: TextAlign.center,
                      ),
                    )
                  ],
                ),
              ),
              activeIcon: Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      'assets/icons/navbar/edit.svg',
                      colorFilter: ColorFilter.mode(blueColor, BlendMode.srcIn),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Text(
                        'Дневник настроения',
                        style:
                            TextStyle(fontSize: 11, fontWeight: FontWeight.w500, fontFamily: 'Nunito', overflow: TextOverflow.clip, color: blueColor),
                        textAlign: TextAlign.center,
                      ),
                    )
                  ],
                ),
              ),
            ),
            BottomNavigationBarItem(
              label: '',
              icon: Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset('assets/icons/navbar/breath.svg'),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Text(
                        'Дыхательные упражнения',
                        style: TextStyle(
                            fontSize: 11,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Nunito',
                            overflow: TextOverflow.clip,
                            color: Color.fromRGBO(140, 141, 149, 1)),
                        textAlign: TextAlign.center,
                      ),
                    )
                  ],
                ),
              ),
              activeIcon: Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      'assets/icons/navbar/breath.svg',
                      colorFilter: ColorFilter.mode(blueColor, BlendMode.srcIn),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Text(
                        'Дыхательные упражнения',
                        style:
                            TextStyle(fontSize: 11, fontWeight: FontWeight.w500, fontFamily: 'Nunito', overflow: TextOverflow.clip, color: blueColor),
                        textAlign: TextAlign.center,
                      ),
                    )
                  ],
                ),
              ),
            ),
            BottomNavigationBarItem(
              label: '',
              icon: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset('assets/icons/navbar/settings.svg'),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Text(
                      'Настройки',
                      style: TextStyle(
                        fontSize: 11,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Nunito',
                        overflow: TextOverflow.clip,
                        color: Color.fromRGBO(140, 141, 149, 1),
                      ),
                      textAlign: TextAlign.center,
                    ),
                  )
                ],
              ),
              activeIcon: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    'assets/icons/navbar/settings.svg',
                    colorFilter: ColorFilter.mode(blueColor, BlendMode.srcIn),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Text(
                      'Настройки',
                      style:
                          TextStyle(fontSize: 11, fontWeight: FontWeight.w500, fontFamily: 'Nunito', overflow: TextOverflow.clip, color: blueColor),
                      textAlign: TextAlign.center,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
      body: Center(
        child: screens[_selectIndex],
      ),
    );
  }
}
