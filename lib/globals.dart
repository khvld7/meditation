import 'package:flutter/material.dart';
import 'package:meditation/components/calendar_custom.dart';
import 'package:meditation/components/custom_button.dart';
import 'package:meditation/components/style.dart';

openCalendar({required BuildContext context, required Function() setState}) {
  showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        surfaceTintColor: Colors.white,
        contentPadding: EdgeInsets.all(5),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(6),
        ),
        actions: [
          Row(
            children: [
              Expanded(
                child: CustomButton(
                  textStyle: TextStyle(fontSize: 13, fontWeight: FontWeight.w400, fontFamily: 'Nunito', color: Colors.black),
                  height: 35,
                  color: Color.fromRGBO(199, 201, 204, 1),
                  borderRadius: BorderRadius.circular(5),
                  child: Text('Отмена'),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 12),
              ),
              Expanded(
                child: CustomButton(
                  textStyle: TextStyle(fontSize: 13, fontWeight: FontWeight.w400, fontFamily: 'Nunito'),
                  height: 35,
                  textColor: Colors.white,
                  color: buttonColor,
                  borderRadius: BorderRadius.circular(5),
                  child: Text('Готов'),
                  onPressed: () {
                    setState();
                    Navigator.pop(context);
                  },
                ),
              ),
            ],
          ),
        ],
        content: CalendarCustom(),
      );
    },
  );
}
