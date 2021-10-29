import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';

import 'home_screen.dart';
import 'language_screens/alphabet_screen.dart';
import 'language_screens/days_and_months_screen.dart';
import 'language_screens/home_screen.dart';
import 'language_screens/numbers_screen.dart';
import 'language_screens/season_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  FlutterTts flutterTts = FlutterTts();
  if (Platform.isIOS) {
    await flutterTts.setSharedInstance(true);
    await flutterTts
        .setIosAudioCategory(IosTextToSpeechAudioCategory.playAndRecord, [
      IosTextToSpeechAudioCategoryOptions.allowBluetooth,
      IosTextToSpeechAudioCategoryOptions.allowBluetoothA2DP,
      IosTextToSpeechAudioCategoryOptions.mixWithOthers
    ]);
  }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: const Color.fromRGBO(34, 34, 34, 1),
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.teal[600],
          centerTitle: true,
        ),
        textTheme: const TextTheme(
          bodyText1: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
          headline2: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
      routes: {
        HomeScreen.route_name: (_) => const HomeScreen(
              key: Key("home_screen"),
            ),
        LanguageHomeScreen.route_name: (_) => const LanguageHomeScreen(
              key: Key("language_home_screen"),
            ),
        AlphabetScreen.route_name: (_) => const AlphabetScreen(
              key: Key("alphabet_screen"),
            ),
        DaysAndMonthsScreen.route_name: (_) => const DaysAndMonthsScreen(
              key: Key("days_and_months"),
            ),
        NumbersScreen.route_name: (_) => const NumbersScreen(
              key: Key("numbers_screen"),
            ),
        SeasonScreen.route_name: (_) => const SeasonScreen(
              key: Key("season_screen"),
            ),
      },
      initialRoute: HomeScreen.route_name,
    );
  }
}
