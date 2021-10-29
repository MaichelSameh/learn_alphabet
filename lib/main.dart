import 'package:flutter/material.dart';

// import 'arabic/arabic_alphabet_screen.dart';
// import 'arabic/arabic_days_and_months_screen.dart';
// import 'arabic/arabic_home_screen.dart';
// import 'arabic/arabic_numbers_screen.dart';
// import 'arabic/arabic_season_screen.dart';
// import 'bangla/bangla_alphabet_screen.dart';
// import 'bangla/bangla_days_and_months_screen.dart';
// import 'bangla/bangla_home_screen.dart';
// import 'bangla/bangla_numbers_screen.dart';
// import 'bangla/bangla_season_screen.dart';
// import 'english/english_alphabet_screen.dart';
// import 'english/english_days_and_months_screen.dart';
// import 'english/english_home_screen.dart';
// import 'english/english_numbers_screen.dart';
// import 'english/english_season_screen.dart';
// import 'hindi/hindi_alphabet_screen.dart';
// import 'hindi/hindi_days_and_months_screen.dart';
// import 'hindi/hindi_home_screen.dart';
// import 'hindi/hindi_numbers_screen.dart';
// import 'hindi/hindi_season_screen.dart';
import 'home_screen.dart';
import 'language_screens/alphabet_screen.dart';
import 'language_screens/days_and_months_screen.dart';
import 'language_screens/home_screen.dart';
import 'language_screens/numbers_screen.dart';
import 'language_screens/season_screen.dart';

void main() {
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
        // ArabicAlphabetScreen.route_name: (_) => ArabicAlphabetScreen(
        //       key: const Key("arabic_alphabet_screen"),
        //     ),
        // ArabicDaysAndMonthsScreen.route_name: (_) =>
        //     const ArabicDaysAndMonthsScreen(
        //       key: Key("arabic_days_and_months_screen"),
        //     ),
        // ArabicHomeScreen.route_name: (_) => ArabicHomeScreen(
        //       key: const Key("arabic_home_screen"),
        //     ),
        // ArabicNumbersScreen.route_name: (_) => ArabicNumbersScreen(
        //       key: const Key("arabic_numbers_screen"),
        //     ),
        // ArabicSeasonScreen.route_name: (_) => ArabicSeasonScreen(
        //       key: const Key("arabic_seasons_screen"),
        //     ),
        // BanglaAlphabetScreen.route_name: (_) => BanglaAlphabetScreen(
        //       key: const Key("bangla_alphabet_screen"),
        //     ),
        // BanglaDaysAndMonthsScreen.route_name: (_) =>
        //     const BanglaDaysAndMonthsScreen(
        //       key: Key("bangla_days_and_months_screen"),
        //     ),
        // BanglaHomeScreen.route_name: (_) => BanglaHomeScreen(
        //       key: const Key("bangla_home_screen"),
        //     ),
        // BanglaNumbersScreen.route_name: (_) => BanglaNumbersScreen(
        //       key: const Key("bangla_numbers_screen"),
        //     ),
        // BanglaSeasonScreen.route_name: (_) => BanglaSeasonScreen(
        //       key: const Key("bangla_seasons_screen"),
        //     ),
        // EnglishHomeScreen.route_name: (_) => EnglishHomeScreen(
        //       key: const Key("english_home_screen"),
        //     ),
        // EnglishAlphabetScreen.route_name: (_) => EnglishAlphabetScreen(
        //       key: const Key("english_alphabet_screen"),
        //     ),
        // EnglishDaysAndMonthsScreen.route_name: (_) =>
        //     const EnglishDaysAndMonthsScreen(
        //       key: Key("english_days_and_months_screen"),
        //     ),
        // EnglishNumbersScreen.route_name: (_) => EnglishNumbersScreen(
        //       key: const Key("english_numbers_screen"),
        //     ),
        // EnglishSeasonScreen.route_name: (_) => EnglishSeasonScreen(
        //       key: const Key("english_season_screen"),
        //     ),
        // HindiAlphabetScreen.route_name: (_) => HindiAlphabetScreen(
        //       key: const Key("hindi_alphabet_screen"),
        //     ),
        // HindiDaysAndMonthsScreen.route_name: (_) =>
        //     const HindiDaysAndMonthsScreen(
        //       key: Key("hindi_days_and_months_screen"),
        //     ),
        // HindiHomeScreen.route_name: (_) => HindiHomeScreen(
        //       key: const Key("hindi_home_screen"),
        //     ),
        // HindiNumbersScreen.route_name: (_) => HindiNumbersScreen(
        //       key: const Key("hindi_numbers_screen"),
        //     ),
        // HindiSeasonScreen.route_name: (_) => HindiSeasonScreen(
        //       key: const Key("hindi_seasons_screen"),
        //     ),
      },
      initialRoute: HomeScreen.route_name,
    );
  }
}
