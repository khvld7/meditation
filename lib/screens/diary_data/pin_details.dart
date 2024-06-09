import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:intl/intl.dart';
import 'package:meditation/adapter/hive_adapter.dart';
import 'package:meditation/client/hive_names.dart';
import 'package:meditation/components/calendar_custom.dart';
import 'package:meditation/components/custom_button.dart';
import 'package:meditation/globals.dart';

class PinDetails extends StatefulWidget {
  int index;
  String? title;
  DateTime? data;
  String? text;

  PinDetails({this.title, this.text, this.data, required this.index, super.key});

  @override
  State<PinDetails> createState() => _PinDetailsState();
}

class _PinDetailsState extends State<PinDetails> {
  TextEditingController controller = TextEditingController();
  TextEditingController controller_two = TextEditingController();

  var diaryBox = Hive.box<DiaryDB>(HiveBoxes.diary);
  onFormSubmit() {
    if (controller.text.isNotEmpty || controller_two.text.isNotEmpty) {
      diaryBox.putAt(
        widget.index,
        DiaryDB(
          text: widget.text ?? '',
          title: widget.title ?? '',
          date: widget.data ?? DateTime.now(),
        ),
      );
    } else {
      diaryBox.deleteAt(widget.index);
    }
    Navigator.pop(context, true);
  }

  @override
  void initState() {
    controller.text = widget.title ?? '';
    controller_two.text = widget.text ?? '';
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
              DateFormat.yMMMMd('ru_RU').format(widget.data!),
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
                      setState(() {
                        widget.data = date;
                      });
                    }),
              ),
            ),
          ],
        ),
        actions: [
          CustomButton(
            width: 24,
            height: 24,
            onPressed: () {
              setState(() {
                diaryBox.deleteAt(widget.index);
              });
              Navigator.pop(context, true);
            },
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
              validator: ((value) {
                if (controller.value.text.isEmpty || controller.value.text == '') {
                  return 'Заполните поле';
                }
                return null;
              }),
              textCapitalization: TextCapitalization.sentences,
              maxLines: null,
              textInputAction: TextInputAction.next,
              onChanged: (value) => setState(() {
                widget.title = value;
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
              validator: ((value) {
                if (controller_two.value.text.isEmpty || controller_two.value.text == '') {
                  return 'Заполните поле';
                }
                return null;
              }),
              textCapitalization: TextCapitalization.sentences,
              textInputAction: TextInputAction.newline,
              onChanged: (value) => setState(() {
                widget.text = value;
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
