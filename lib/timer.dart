import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:meditation/components/custom_button.dart';

class TimerWidget extends StatefulWidget {
  const TimerWidget({super.key});

  @override
  State<TimerWidget> createState() => _TimerWidgetState();
}

class _TimerWidgetState extends State<TimerWidget> {
  bool isStart = false;
  bool isPause = false;
  var time = 0;
  String timeStr = '0:00:00';
  Timer? _timer;

  @override
  void initState() {
    calculationTime();
    super.initState();
  }

  startTimer() {
    setState(() {
      isStart = true;
    });
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      time += 1;
      calculationTime();
    });
  }

  stopTimer() {
    time = 0;
    timeStr = '0:00:00';
    setState(() {
      isStart = false;
      _timer?.cancel();
    });
  }

  pauseTimer() {
    setState(() {
      isPause = !isPause;
      isPause ? _timer?.cancel() : startTimer();
    });
  }

  calculationTime() {
    var hour = (time ~/ 3600).toString().padLeft(1, '0');
    var minute = (time ~/ 60).toString().padLeft(2, '0');
    var second = (time % 60).toString().padLeft(2, '0');
    setState(() {
      timeStr = '$hour:$minute:$second';
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        actions: [
          CustomButton(
              child: SvgPicture.asset('assets/icons/remove.svg'),
              onPressed: () {
                Navigator.pop(context);
                _timer?.cancel();
              }),
        ],
      ),
      backgroundColor: Colors.transparent,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  timeStr,
                  style: TextStyle(fontSize: 60, fontWeight: FontWeight.w400, fontFamily: 'Nunito', color: Colors.white),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 30),
              child: !isStart
                  ? Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomButton(
                          child: Container(
                            padding: EdgeInsets.all(25),
                            decoration: BoxDecoration(shape: BoxShape.circle, color: Color.fromRGBO(56, 212, 197, 1)),
                            child: SvgPicture.asset('assets/icons/play.svg'),
                          ),
                          onPressed: () {
                            startTimer();
                          },
                        )
                      ],
                    )
                  : Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomButton(
                            child: Container(
                              padding: EdgeInsets.all(25),
                              decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.white),
                              child: SvgPicture.asset('assets/icons/stop.svg'),
                            ),
                            onPressed: () {
                              stopTimer();
                            },
                          ),
                          CustomButton(
                            child: Container(
                              padding: EdgeInsets.all(25),
                              decoration: BoxDecoration(shape: BoxShape.circle, color: Color.fromRGBO(56, 212, 197, 1)),
                              child: SvgPicture.asset(isPause ? 'assets/icons/play.svg' : 'assets/icons/pause.svg'),
                            ),
                            onPressed: () {
                              pauseTimer();
                            },
                          ),
                        ],
                      ),
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
