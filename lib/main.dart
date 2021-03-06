import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_record_lesson/modules/home/home_page.dart';
import 'package:google_fonts/google_fonts.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final textTheme = GoogleFonts.latoTextTheme(Theme.of(context).textTheme);
    final newTextTheme = textTheme
        .apply(
          bodyColor: Colors.blueGrey[900],
          displayColor: Colors.blueGrey[900],
        )
        .copyWith(
          overline: textTheme.overline.copyWith(
            fontSize: 12,
            fontWeight: FontWeight.w700,
          ),
          button: textTheme.button.copyWith(
            letterSpacing: 1.0,
            fontWeight: FontWeight.w600,
          ),
          bodyText1: textTheme.bodyText1.copyWith(letterSpacing: 1.0),
          bodyText2: textTheme.bodyText2.copyWith(letterSpacing: 1.0),
          headline1: textTheme.headline1.copyWith(letterSpacing: 1.0),
          headline2: textTheme.headline2.copyWith(letterSpacing: 1.0),
          headline3: textTheme.headline3.copyWith(letterSpacing: 1.0),
          headline4: textTheme.headline4.copyWith(letterSpacing: 1.0),
          headline5: textTheme.headline5.copyWith(letterSpacing: 1.0),
          headline6: textTheme.headline6.copyWith(
            fontSize: 18,
            fontWeight: FontWeight.w700,
            letterSpacing: 1.0,
          ),
          subtitle1: textTheme.subtitle1.copyWith(
            letterSpacing: 1.0,
            fontWeight: FontWeight.w600,
          ),
          subtitle2: textTheme.subtitle2.copyWith(letterSpacing: 1.0),
        );
    return MaterialApp(
      title: 'DotMyConcepts',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        appBarTheme: AppBarTheme(
          elevation: 1,
          color: Colors.white,
          brightness: Brightness.light,
          textTheme: newTextTheme,
          iconTheme: Theme.of(context).iconTheme,
        ),
        scaffoldBackgroundColor: Colors.white,
        dividerTheme: DividerThemeData(
          color: Colors.black38,
          space: 1,
        ),
        textTheme: newTextTheme,
      ),
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
