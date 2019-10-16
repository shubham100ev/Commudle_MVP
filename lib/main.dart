import 'package:commudle/routes/discussion_screen.dart';
import 'package:commudle/routes/network_error_page.dart';
import 'package:commudle/routes/registered_events_list_screen.dart';
import 'package:commudle/routes/schedule_page.dart';
import 'package:flutter/material.dart';
import 'package:commudle/routes/splash_screen.dart';
import 'package:commudle/routes/intro_screen.dart';
import 'package:commudle/routes/auth_screen.dart';
import 'package:commudle/routes/communities_list_screen.dart';
import 'package:commudle/routes/home_screen.dart';
import 'package:flutter/services.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: const Color(0xFF707070),
    ));
    return MaterialApp(
      title: "Commudle",
      theme: ThemeData(
        primaryColor: const Color(0xFF263238),
        textTheme: ThemeData.dark().textTheme.copyWith(
              headline: TextStyle(
                fontSize: 16,
                fontFamily: 'Montserrat',
                color: const Color(0xFF263238),
                fontWeight: FontWeight.w600,
              ),
              title: TextStyle(
                fontSize: 20.0,
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w600,
                color: const Color(0xFF707070),
              ),
              body1: TextStyle(
                fontSize: 16.0,
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w600,
                color: const Color(0xFF707070),
              ),
              body2: TextStyle(
                fontSize: 14.0,
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w600,
                color: const Color(0xFF707070),
              ),
            ),
      ),
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
      routes: <String, WidgetBuilder>{
        '/IntroScreen': (BuildContext context) => IntroScreen(),
        '/AuthScreen': (BuildContext context) => AuthScreen(),
        '/HomeScreen': (BuildContext context) => HomeScreen(),
        '/CommunitiesListScreen': (BuildContext context) =>
            CommunitiesListScreen(),
        '/RegisteredEventScreen': (BuildContext context) =>
            RegisteredEventsList(),
        '/NetworkError': (BuildContext context) => NetworkErrorPage(),
        '/SchedulePage': (BuildContext context) => SchedulePage(),
        '/DiscussionPage': (BuildContext context) => DiscussionPage(),
      },
    );
  }
}
