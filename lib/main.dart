
import 'package:flutter/material.dart';
import 'package:money_money_money/theme_model.dart';
import 'package:provider/provider.dart';
import 'package:splash_screen_view/SplashScreenView.dart';
import 'screens/home_page.dart';
import 'screens/instructions.dart';
import 'screens/results_page.dart';
import 'package:dark_light_button/dark_light_button.dart';
// import 'package:splashscreen/splashscreen.dart';
import 'package:easy_splash_screen/easy_splash_screen.dart';
import 'package:splash_screen_view/splash_screen_view.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    Widget example1 = SplashScreenView(
      navigateRoute: const Instructions(),
      duration: 3000,
      imageSize: 600,
      imageSrc: "assets/its_money.png",
      text: "LOADING...",
      textType: TextType.TyperAnimatedText,
      textStyle: const TextStyle(
        fontSize: 30.0,
        fontFamily: 'MinecraftTen'
      ),
      backgroundColor: Colors.yellow,
    );



    return ChangeNotifierProvider(
        create: (_) => ThemeModel(),
    child: Consumer(
      builder: (context, ThemeModel themeNotifier, child){
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          home: example1,
          routes: {
            '/home_page': (context)=>const HomePage(),
          },
          theme: themeNotifier.isDark ? ThemeData.dark() : ThemeData.light(),

        );
      },
    ),);
  }
}
