import 'package:flutter/material.dart';
import 'package:hng_task2/cv_details.dart';
import 'package:hng_task2/screens/edit_cv.dart';
import 'package:hng_task2/screens/homepage.dart';
import 'package:flutter/services.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Mobile CV Application",
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(
              cvDetails: CVDetails(),
            ),
        '/edit': (context) => EditCV(
              cvDetails: CVDetails(),
            ),
      },
    );
  }
}
