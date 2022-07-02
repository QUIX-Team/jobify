import 'package:flutter/material.dart';
import 'package:jobify/my_dio/my_dio.dart';
import 'package:jobify/shared_pref/shared_pref.dart';
import 'package:jobify/view/company_view/company_home_view.dart';
import 'package:jobify/view/company_view/successCompRe.dart';

import 'package:jobify/view/user%20view/results.dart';
import 'package:jobify/view/user%20view/routeMap.dart';
import 'package:jobify/view/user%20view/splash_screen.dart';
import 'package:provider/provider.dart';

import 'controller/auth_controller.dart';
import 'controller/career_controller.dart';

import 'view/company_view/main_home_view.dart';
import 'view/company_view/register.dart';

import 'view/user view/UserAuth/login.dart';
import 'view/user view/UserAuth/register.dart';
import 'view/user view/career_detail.dart';
import 'view/user view/home_nav/HomeView.dart';
import 'view/user view/home_nav/courses/CoursesNames.dart';
import 'view/user view/home_nav/courses/course_detail.dart';
import 'view/user view/onboard.dart';
import 'view/user view/questionnaire_page/realistic.dart';
import 'view/user view/success.dart';
import 'view/user view/success2.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  MyDio().init();
  SharedPref.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: ((context) => AuthController()),
        ),
        ChangeNotifierProvider(
          create: ((context) => CareerController()),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primarySwatch: Colors.teal),
        home: SplashScreens(),
        routes: {
          UserRegister.id: (context) => UserRegister(),
          CompanyRegister.id: (context) => CompanyRegister(),
          Login.id: (context) => Login(),
          RouteMap.id: (context) => RouteMap(),
          Success.id: (context) => Success(),
          SuccessTwo.id: (context) => SuccessTwo(),
          OnboardingScreen.id: (context) => OnboardingScreen(),
          SplashScreens.id: (context) => SplashScreens(),
          Result.id: (context) => Result(),
          Realistic.id: (context) => Realistic(),
          CareerDetails.id: (context) => CareerDetails(),
          CoursesNames.id: (context) => CoursesNames(),
          courseDetail.id: (context) => courseDetail(),
          HomeViewNav.id: (context) => HomeViewNav(),
          CompanyRegister.id: (context) => CompanyRegister(),
          compReSucess.id: (context) => compReSucess(),
          CompanyHome.id: (context) => CompanyHome()
        },
      ),
    );
  }
}
