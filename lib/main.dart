import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_portfolio/Dummy_data/dummy_data.dart';
import 'package:my_portfolio/controller/home_contoller/home_contoller.dart';
import 'package:my_portfolio/view/main/main_screen.dart';
import 'package:provider/provider.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyPortfolio());
}

class MyPortfolio extends StatelessWidget {
  const MyPortfolio({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => HomeScreenContoller(),
        ),
        ChangeNotifierProvider(
          create: (context) => ProjectDetails(),
        )
      ],
      child: MaterialApp(
        theme: ThemeData.dark(),
        debugShowCheckedModeBanner: false,
        home:
            //  SplashScreen()
            MainScreen(),
      ),
    );
  }
}
