import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'controller/main_app_controller.dart';
import 'controller/log_controller.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(Nova());
}

class Nova extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Nova',
      theme: ThemeData(
        fontFamily: 'Oxygen',
        primaryColor: Color(0xFF3dd0d8),
        scaffoldBackgroundColor: Colors.white,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        textTheme: TextTheme(
            headline1: TextStyle(
              color: Colors.black,
              fontSize: 60,
              fontWeight: FontWeight.w600,
            ),
            headline2: TextStyle(
                color: Colors.black, fontSize: 22, fontWeight: FontWeight.w500),
            headline3: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.w400,
            ),
            bodyText2: TextStyle(
              color: Colors.black,
              fontSize: 12,
            ),
            button: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.bold)),
      ),
      debugShowCheckedModeBanner: false,
      home: _handleAuth(),
    );
  }

  Widget _handleAuth() {
    return StreamBuilder<User>(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (BuildContext context, snapshot) {
        return (!snapshot.hasData) ? LogController() : MainAppController();
      },
    );
  }
}
