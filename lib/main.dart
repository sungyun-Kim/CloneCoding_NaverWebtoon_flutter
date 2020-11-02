import 'package:clonecoding_naverwebtoon/screens/home_screen.dart';
import 'package:clonecoding_naverwebtoon/screens/more_screen.dart';
import 'package:clonecoding_naverwebtoon/widgets/bottom_bar.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_sign_in/google_sign_in.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);

    final Future<FirebaseApp> _initialization = Firebase.initializeApp();

    return FutureBuilder(
      future: _initialization,
      builder: (context, snapshot) {
        //firestore err
        if (snapshot.hasError) {
          return Text('error: snapShot has Error');
        }

        //successfully connected
        if (snapshot.connectionState == ConnectionState.done) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            //no physics
            title: 'ksy',

            home: DefaultTabController(
              length: 5,
              child: Scaffold(
                body: TabBarView(
                  physics: NeverScrollableScrollPhysics(),
                  children: <Widget>[
                    HomeScreen(),
                    Container(),
                    Container(),
                    Container(),
                    MoreScreen(),
                  ],
                ),
                bottomNavigationBar: BottomBar(),
              ),
            ),
          );
        }
      },
    );
  }
}
