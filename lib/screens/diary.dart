import 'package:intl/intl.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:meditation/adapter/hive_adapter.dart';
import 'package:meditation/client/hive_names.dart';
import 'package:meditation/components/custom_button.dart';
import 'package:meditation/components/style.dart';
import 'package:meditation/screens/diary_data/add_pin.dart';
import 'package:meditation/screens/diary_data/pin_details.dart';

class Diary extends StatefulWidget {
  const Diary({super.key});

  @override
  State<Diary> createState() => _DiaryState();
}

class _DiaryState extends State<Diary> {
  var diaryBox = Hive.box<DiaryDB>(HiveBoxes.diary);
  String? dateText;
  var formatterDateNow;
  var formatteDateMonth;
  var formatter = DateFormat('dd.MM.yyyy');
  late DateTime date;

  Map<String, int> month = {
    'январь': 0,
    'февраль': 0,
    'март': 0,
    'апрель': 0,
    'май': 0,
    'июнь': 0,
    'июль': 0,
    'август': 0,
    'сентябрь': 0,
    'октябрь': 0,
    'ноябрь': 0,
    'декабрь': 0,
  };
  Map<String, List<DiaryDB>> filtred = {
    'январь': [],
    'февраль': [],
    'март': [],
    'апрель': [],
    'май': [],
    'июнь': [],
    'июль': [],
    'август': [],
    'сентябрь': [],
    'октябрь': [],
    'ноябрь': [],
    'декабрь': [],
  };

  score() {
    diaryBox.values.forEach((element) {
      final elementDate = DateFormat.MMMM('ru_RU').format(element.date);
      filtred[elementDate] = filtred.update(elementDate, (value) => value + [element]);
      month[elementDate] = month.update(elementDate, (value) {
        return value = value + 1;
      });
    });
    filtred.removeWhere((key, value) => value.length == 0);
    month.removeWhere((key, value) => value == 0);
    setState(() {});
  }

  @override
  void initState() {
    score();
    date = DateTime.now();
    formatterDateNow = formatter.format(date);
    dateText = formatterDateNow.toString();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: diaryBox.isEmpty
          ? Padding(
              padding: EdgeInsets.symmetric(horizontal: 24, vertical: 10),
              child: Row(
                children: [
                  Expanded(
                    child: CustomButton(
                      borderRadius: BorderRadius.circular(10),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (BuildContext context) {
                              return AddPin();
                            },
                          ),
                        ).then((value) => setState(() {
                              score();
                            }));
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset('assets/icons/plus.svg'),
                          Padding(padding: EdgeInsets.symmetric(horizontal: 5)),
                          Text(
                            'Запись',
                            style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700, fontFamily: 'Nunito', color: Colors.white),
                          ),
                        ],
                      ),
                      color: buttonColor,
                      isActive: true,
                    ),
                  ),
                ],
              ),
            )
          : SizedBox.shrink(),
      body: Stack(
        children: [
          Positioned(
            top: MediaQuery.sizeOf(context).height / 7,
            left: MediaQuery.sizeOf(context).width / 3,
            child: Image.asset('assets/images/color/blue.png'),
          ),
          Positioned(
              bottom: MediaQuery.sizeOf(context).height / 7,
              right: MediaQuery.sizeOf(context).width / 10,
              child: Image.asset('assets/images/color/yellow.png')),
          Positioned(
            top: MediaQuery.sizeOf(context).height / 5,
            right: MediaQuery.sizeOf(context).width / 3,
            child: Image.asset('assets/images/color/red.png'),
          ),
          diaryBox.isNotEmpty
              ? ListView(
                  children: [
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 24),
                          child: Row(
                            children: [
                              Text(
                                DateFormat.yMMMMd('ru_RU').format(date),
                                style: TextStyle(fontSize: 13, fontWeight: FontWeight.w400, fontFamily: 'Nunito'),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 6),
                                child: SvgPicture.asset('assets/icons/chevron_down.svg'),
                              ),
                            ],
                            mainAxisAlignment: MainAxisAlignment.end,
                          ),
                        ),
                        ValueListenableBuilder(
                            valueListenable: diaryBox.listenable(),
                            builder: (BuildContext context, value, Widget? child) {
                              return ListView.builder(
                                physics: BouncingScrollPhysics(),
                                padding: EdgeInsets.symmetric(horizontal: 12),
                                shrinkWrap: true,
                                itemCount: month.length,
                                itemBuilder: (BuildContext context, int index) {
                                  final monthIndex = month.entries.elementAt(index);
                                  final filtredIndex = filtred.entries.elementAt(index);
                                  return Column(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                                        child: Row(
                                          children: [
                                            Text(
                                              monthIndex.key + ' ' + DateFormat.y('ru_RU').format(date),
                                              style: TextStyle(fontSize: 13, fontWeight: FontWeight.w400, fontFamily: 'Nunito'),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        child: ListView.builder(
                                          shrinkWrap: true,
                                          itemCount: monthIndex.value,
                                          physics: NeverScrollableScrollPhysics(),
                                          itemBuilder: (BuildContext context, int index) {
                                            final diaryIndex = diaryBox.getAt(index);
                                            return Container(
                                              padding: EdgeInsets.symmetric(horizontal: 6),
                                              margin: EdgeInsets.symmetric(vertical: 4),
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(20),
                                                color: Color.fromRGBO(254, 129, 226, 0.4),
                                              ),
                                              child: Padding(
                                                padding: EdgeInsets.only(left: 12, right: 12, top: 20, bottom: 10),
                                                child: Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      filtredIndex.value[index].title,
                                                      style: TextStyle(
                                                        fontFamily: 'Nunito',
                                                        fontSize: 20,
                                                        fontWeight: FontWeight.w400,
                                                        letterSpacing: -1,
                                                        height: 1,
                                                        overflow: TextOverflow.ellipsis,
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding: const EdgeInsets.only(top: 10, bottom: 10),
                                                      child: Text(
                                                        filtredIndex.value[index].text,
                                                        style: TextStyle(
                                                          overflow: TextOverflow.ellipsis,
                                                          fontFamily: 'Nunito',
                                                          fontSize: 14,
                                                          fontWeight: FontWeight.w400,
                                                          letterSpacing: -1,
                                                          height: 1,
                                                        ),
                                                      ),
                                                    ),
                                                    Row(
                                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                      children: [
                                                        Text(
                                                          DateFormat.yMMMMd('ru_RU').format(filtredIndex.value[index].date),
                                                          style: TextStyle(
                                                            fontFamily: 'Nunito',
                                                            fontSize: 13,
                                                            fontWeight: FontWeight.w400,
                                                            letterSpacing: -1,
                                                            height: 1,
                                                          ),
                                                        ),
                                                        CustomButton(
                                                          onPressed: () async {
                                                            await Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
                                                              return PinDetails(
                                                                title: diaryIndex?.title,
                                                                data: diaryIndex?.date,
                                                                text: diaryIndex?.text,
                                                                index: index,
                                                              );
                                                            })).then((value) => setState(() {}));
                                                          },
                                                          child: Container(
                                                            padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                                                            margin: EdgeInsets.symmetric(horizontal: 5),
                                                            decoration: BoxDecoration(
                                                              borderRadius: BorderRadius.circular(10),
                                                              border: Border.all(),
                                                            ),
                                                            child: Padding(
                                                              padding: const EdgeInsets.symmetric(horizontal: 3),
                                                              child: Row(
                                                                mainAxisAlignment: MainAxisAlignment.start,
                                                                children: [
                                                                  Text(
                                                                    'Подробнее',
                                                                    style: TextStyle(fontWeight: FontWeight.w700, fontSize: 14, fontFamily: 'Nunito'),
                                                                  ),
                                                                  SvgPicture.asset('assets/icons/union.svg'),
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            );
                                          },
                                        ),
                                      )
                                    ],
                                  );
                                },
                              );
                            }),
                      ],
                    ),
                  ],
                )
              : Center(
                  child: Text(
                    'Опишите ваше эмоциональное состояние',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500, fontFamily: 'Nunito'),
                  ),
                )
        ],
      ),
    );
  }
}
