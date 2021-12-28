import 'dart:io';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:tik_tok_app/nav/route_generator.dart';
import 'package:tik_tok_app/nav/routes.dart';
import 'package:tik_tok_app/ui/screen/login_screen.dart';
import 'package:tik_tok_app/ui/screen/splash_screen.dart';


void main()  async  {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
  //  options: DefaultFirebaseOptions.currentPlatform,
  );

  Platform.isAndroid;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      onGenerateRoute: customRouteGenerator,
    //  initialRoute:OurRoutes.Login ,
      theme: ThemeData(
        
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
    
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
   
    return LoginScreen();
  }
}
