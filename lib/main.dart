import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:meditation/adapter/hive_adapter.dart';
import 'package:meditation/client/hive_names.dart';
import 'package:meditation/onboarding/main.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:meditation/screens/screens.dart';
import 'package:shared_preferences/shared_preferences.dart';

int? initScreen;
void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(DiaryDBAdapter());
  await Hive.openBox<DiaryDB>(HiveBoxes.diary);
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences prefs = await SharedPreferences.getInstance();
  initScreen = await prefs.getInt("initScreen");
  await prefs.setInt("initScreen", 1);
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: <LocalizationsDelegate<Object>>[
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        const Locale('ru', 'RU'),
        const Locale('en', 'US'),
      ],
      home: initScreen == 0 || initScreen == null ? MainOnboarding() : Screens(),
    );
  }
}
