import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:meditation/components/custom_button.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:intl/intl.dart';

class CalendarCustom extends StatefulWidget {
  const CalendarCustom({super.key});

  @override
  State<CalendarCustom> createState() => _CalendarCustomState();
}

String? dateText;
var formatterDateNow;
var formatteDateMonth;
var formatter = DateFormat('dd.MM.yyyy');

late DateTime date;

class _CalendarCustomState extends State<CalendarCustom> {
  PageController _pageController = PageController();

  void _onLeftChevronTap() {
    _pageController.previousPage(
      duration: Duration(milliseconds: 300),
      curve: Curves.easeOut,
    );
  }

  void _onRightChevronTap() {
    _pageController.nextPage(
      duration: Duration(milliseconds: 300),
      curve: Curves.easeOut,
    );
  }

  @override
  void initState() {
    super.initState();
    date = DateTime.now();
    formatterDateNow = DateFormat('dd.MM.yyyy').format(date);
    dateText = formatterDateNow.toString();
  }

  selectedDay(day, focusedDay) {
    setState(() {
      date = day;
      formatterDateNow = DateFormat('dd.MM.yyyy').format(date);
      dateText = formatterDateNow.toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.sizeOf(context).height / 2.1,
      width: MediaQuery.sizeOf(context).width,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  DateFormat.yMMM('ru_RU').format(date),
                  style: TextStyle(
                    fontSize: 17,
                    fontFamily: 'Nunito',
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Icon(
                  Icons.chevron_right,
                  color: Color.fromRGBO(255, 86, 218, 1),
                ),
                Expanded(child: SizedBox.shrink()),
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: CustomButton(
                    height: 24,
                    width: 24,
                    onPressed: _onLeftChevronTap,
                    child: Icon(
                      Icons.chevron_left,
                      color: Color.fromRGBO(255, 86, 218, 1),
                    ),
                  ),
                ),
                CustomButton(
                  width: 24,
                  height: 24,
                  onPressed: _onRightChevronTap,
                  child: Icon(
                    Icons.chevron_right,
                    color: Color.fromRGBO(255, 86, 218, 1),
                  ),
                ),
              ],
            ),
          ),
          TableCalendar(
            daysOfWeekHeight: 24,
            daysOfWeekStyle: DaysOfWeekStyle(
              weekdayStyle: TextStyle(
                color: Color.fromRGBO(150, 153, 154, 1),
                fontSize: 13,
                fontWeight: FontWeight.w600,
                fontFamily: 'Nunito',
              ),
              weekendStyle: TextStyle(
                color: Color.fromRGBO(150, 153, 154, 1),
                fontSize: 13,
                fontWeight: FontWeight.w600,
                fontFamily: 'Nunito',
              ),
            ),
            calendarStyle: CalendarStyle(
              tableBorder: TableBorder(
                borderRadius: BorderRadius.circular(2),
              ),
              outsideTextStyle: TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.w400,
                fontFamily: 'Nunito',
              ),
              weekendTextStyle: TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.w400,
                fontFamily: 'Nunito',
              ),
              todayDecoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.transparent,
              ),
              todayTextStyle: TextStyle(
                color: Colors.black,
                fontSize: 11,
                fontWeight: FontWeight.w300,
                fontFamily: 'Source_Sans',
              ),
              selectedDecoration: BoxDecoration(
                color: Colors.transparent,
              ),
              disabledTextStyle: TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.w400,
                fontFamily: 'Nunito',
              ),
              defaultTextStyle: TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.w400,
                fontFamily: 'Nunito',
              ),
              selectedTextStyle: TextStyle(
                color: Color.fromRGBO(255, 86, 218, 1),
                fontSize: 18,
                fontWeight: FontWeight.w400,
                fontFamily: 'Nunito',
              ),
            ),
            rowHeight: MediaQuery.of(context).size.height * 0.05,
            startingDayOfWeek: StartingDayOfWeek.monday,
            onCalendarCreated: (pageController) => _pageController = pageController,
            headerVisible: false,
            sixWeekMonthsEnforced: true,
            onDisabledDayTapped: (day) => selectedDay(day, date),
            selectedDayPredicate: (day) => isSameDay(day, date),
            onDaySelected: selectedDay,
            locale: 'ru_RU',
            focusedDay: date,
            firstDay: date,
            lastDay: DateTime.utc(2030, 12, 31),
          ),
        ],
      ),
    );
  }
}
