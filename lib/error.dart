import 'package:flutter/material.dart';
import 'package:meditation/components/custom_button.dart';
import 'package:meditation/components/style.dart';

class ErrorPage extends StatelessWidget {
  const ErrorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/images/error.png'),
          Text(
            'Возможно что-то не так с интернетом',
            textAlign: TextAlign.center,
            style: appBarText,
          ),
          Text(
            'Попробуйте обновить страницу',
            textAlign: TextAlign.center,
            style: TextStyle(color: Color.fromRGBO(95, 99, 101, 1), fontSize: 14, fontWeight: FontWeight.w400, fontFamily: 'Nunito'),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24, vertical: 24),
            child: Row(
              children: [
                Expanded(
                  child: CustomButton(
                    borderRadius: BorderRadius.circular(10),
                    onPressed: () {},
                    child: Text(
                      'Обновить',
                      style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700, fontFamily: 'Nunito', color: Colors.white),
                    ),
                    color: buttonColor,
                    isActive: true,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
