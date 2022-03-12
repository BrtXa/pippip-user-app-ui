import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:pippip_user_app/components/palette.dart';
import 'package:pippip_user_app/pages/login/view/login_view.dart';

Future <void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'PipPip User',
      theme: ThemeData(
        primaryColor: myColors[PRIMARY],
        scaffoldBackgroundColor: Colors.white,
      ),
      home: LoginScreen(),
    );
  }
}