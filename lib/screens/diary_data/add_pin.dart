import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:meditation/adapter/hive_adapter.dart';
import 'package:meditation/client/hive_names.dart';
import 'package:meditation/components/calendar_custom.dart';
import 'package:meditation/components/custom_button.dart';
import 'package:intl/intl.dart';
import 'package:meditation/globals.dart';
import 'package:meditation/screens/diary.dart';

class AddPin extends StatefulWidget {
  const AddPin({super.key});

  @override
  State<AddPin> createState() => _AddPinState();
}

class _AddPinState extends State<AddPin> {
  String? title;
  String? text;

  TextEditingController controller = TextEditingController();
  TextEditingController controller_two = TextEditingController();

  onFormSubmit() {
    var diaryBox = Hive.box<DiaryDB>(HiveBoxes.diary);
    setState(() {
      if (controller.text.isNotEmpty || controller_two.text.isNotEmpty)
        diaryBox.add(
          DiaryDB(
            text: text ?? '',
            title: title ?? '',
            date: date,
          ),
        );
    });

    Navigator.pop(context);
  }

  @override
  void initState() {
    date = DateTime.now();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 48,
        leading: Container(
          padding: EdgeInsets.only(left: 24),
          child: RawMaterialButton(
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            onPressed: () => Navigator.pop(context),
            child: SvgPicture.asset('assets/icons/back_button.svg'),
          ),
        ),
        title: Row(
          children: [
            Text(
              DateFormat.yMMMd('ru_RU').format(date),
              style: TextStyle(fontSize: 13, fontWeight: FontWeight.w400, fontFamily: 'Nunito'),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 6),
              child: CustomButton(
                width: 24,
                height: 24,
                child: SvgPicture.asset('assets/icons/chevron_down.svg'),
                onPressed: () => openCalendar(
                    context: context,
                    setState: () {
                      setState(() {});
                    }),
              ),
            ),
          ],
        ),
        actions: [
          CustomButton(
            width: 24,
            height: 24,
            onPressed: () => Navigator.pop(context),
            child: SvgPicture.asset('assets/icons/trash.svg'),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: CustomButton(
              width: 24,
              height: 24,
              onPressed: onFormSubmit,
              child: SvgPicture.asset('assets/icons/confirm.svg'),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            TextFormField(
              textCapitalization: TextCapitalization.sentences,
              maxLines: null,
              textInputAction: TextInputAction.next,
              onChanged: (value) => setState(() {
                title = value;
              }),
              controller: controller,
              showCursor: true,
              style: TextStyle(
                color: Colors.black,
                fontSize: 17,
                fontWeight: FontWeight.w700,
                fontFamily: 'Nunito',
              ),
              decoration: InputDecoration(
                  errorStyle: TextStyle(),
                  hintText: 'Заголовок',
                  hintStyle: TextStyle(
                    color: Color.fromRGBO(178, 183, 185, 1),
                    fontSize: 17,
                    fontWeight: FontWeight.w700,
                  ),
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.only(left: 20, right: 20)),
              scrollPhysics: NeverScrollableScrollPhysics(),
            ),
            TextFormField(
              textCapitalization: TextCapitalization.sentences,
              textInputAction: TextInputAction.newline,
              onChanged: (value) => setState(() {
                text = value;
              }),
              controller: controller_two,
              showCursor: true,
              style: TextStyle(
                color: Colors.black,
                fontSize: 13,
                fontFamily: 'Nunito',
                fontWeight: FontWeight.w400,
              ),
              keyboardType: TextInputType.multiline,
              decoration: InputDecoration(
                  errorStyle: TextStyle(),
                  hintText: 'Текст',
                  hintStyle: TextStyle(color: Color.fromRGBO(150, 153, 154, 1), fontSize: 13, fontWeight: FontWeight.w400),
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.only(left: 20, right: 20)),
              scrollPhysics: BouncingScrollPhysics(),
              maxLines: null,
            ),
          ],
        ),
      ),
    );
  }
}
