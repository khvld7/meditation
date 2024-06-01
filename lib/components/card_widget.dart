import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CardWidget extends StatelessWidget {
  String? name;
  Function()? onPressed;
  Color? color;

  CardWidget({super.key, this.color, this.name, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 170,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: color),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              name!,
              style: TextStyle(fontFamily: 'Nunito', fontSize: 20, fontWeight: FontWeight.w400, letterSpacing: -1, height: 1),
            ),
            Row(
              children: [
                InkWell(
                  splashColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: onPressed,
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
  }
}
