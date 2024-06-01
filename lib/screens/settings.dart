import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:in_app_review/in_app_review.dart';
import 'package:url_launcher/url_launcher.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  markApp() async {
    final InAppReview inAppReview = InAppReview.instance;
    if (await inAppReview.isAvailable()) {
      inAppReview.openStoreListing(appStoreId: '...', microsoftStoreId: '...');
    }
  }

  _launchURL(String uri) async {
    final Uri url = Uri.parse(uri);
    if (!await launchUrl(url)) {
      throw Exception('Could not launch $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                margin: EdgeInsets.symmetric(horizontal: 24.0, vertical: 24),
                padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(20), boxShadow: [
                  BoxShadow(
                    blurRadius: 1,
                    blurStyle: BlurStyle.normal,
                    color: Colors.grey.shade200,
                  ),
                ]),
                child: Column(
                  children: [
                    RawMaterialButton(
                      splashColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onPressed: () => _launchURL('https://flutter.dev/'),
                      child: Padding(
                        padding: EdgeInsets.symmetric(vertical: 12),
                        child: Row(
                          children: [
                            SvgPicture.asset('assets/icons/confidentialy.svg'),
                            Padding(
                              padding: const EdgeInsets.only(left: 12),
                              child: Text(
                                'Политика конфиденциальности',
                                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500, fontFamily: 'Nunito'),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    RawMaterialButton(
                      splashColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onPressed: () => _launchURL('https://dart.dev/'),
                      child: Padding(
                        padding: EdgeInsets.symmetric(vertical: 24),
                        child: Row(
                          children: [
                            SvgPicture.asset('assets/icons/article.svg'),
                            Padding(
                              padding: const EdgeInsets.only(left: 12),
                              child: Text(
                                'Пользовательское соглашение',
                                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500, fontFamily: 'Nunito'),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    RawMaterialButton(
                      splashColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onPressed: () => markApp,
                      child: Padding(
                        padding: EdgeInsets.symmetric(vertical: 12),
                        child: Row(
                          children: [
                            SvgPicture.asset('assets/icons/mark.svg'),
                            Padding(
                              padding: const EdgeInsets.only(left: 12),
                              child: Text(
                                'Оценить приложение',
                                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500, fontFamily: 'Nunito'),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Positioned(
            top: MediaQuery.sizeOf(context).height / 5,
            left: MediaQuery.sizeOf(context).width / 3,
            child: Image.asset('assets/images/color/blue.png'),
          ),
          Positioned(
            top: MediaQuery.sizeOf(context).height / 6,
            right: MediaQuery.sizeOf(context).width / 10,
            child: Image.asset('assets/images/color/yellow.png'),
          ),
          Positioned(
            top: MediaQuery.sizeOf(context).height / 4,
            right: MediaQuery.sizeOf(context).width / 4,
            child: Image.asset('assets/images/color/red.png'),
          ),
        ],
      ),
    );
  }
}
