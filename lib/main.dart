import 'package:flutter/material.dart';
import 'package:plants_care/data/toggle_button_model.dart';
import 'package:plants_care/splash_page.dart';
import 'package:provider/provider.dart';

import 'data/data_model.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => DataModel()),
        ChangeNotifierProvider(create: (_) => ToggleButtonModel())
      ],
      child: const Home(),
    ),
  );
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Home",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.green,
          appBarTheme: const AppBarTheme(
            backgroundColor: Colors.green,
          )),
      home: const SplashScreen(),
    );
  }
}
