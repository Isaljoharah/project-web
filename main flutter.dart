import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

import 'Components/theem.dart';
import 'Components/them provider.dart';
import 'Views/SendEmalePage.dart';
import 'Views/auth.dart';
import 'Views/home_page.dart';
import 'Views/homstart.dart';
import 'Views/login.dart';
import 'Views/signup.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    statusBarBrightness: Brightness.dark,
    systemNavigationBarColor: Colors.transparent,
    systemNavigationBarDividerColor: Colors.transparent,
    systemNavigationBarIconBrightness: Brightness.dark,
    statusBarIconBrightness: Brightness.dark,
  ));
  runApp(
    ChangeNotifierProvider(
      create: (context) => ThemeProvider(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        builder: (BuildContext context, Widget? child) {
          return Directionality(
            textDirection: TextDirection.rtl,
            child: child!,
          );
        },
        debugShowCheckedModeBanner: false,
        title: 'تطبيق الإبلاغ عن الجرائم',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        //Our fist screen
        home: SplashScreen(),
        routes: {
          'home': (context) => HomePage(),
          'login': (context) => LoginScreen(),
          'signup': (context) => SignupScreen(),
          'sendemail': (context) => SendEmailPage(),
        });
  }
}
