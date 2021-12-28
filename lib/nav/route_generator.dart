

import 'package:flutter/material.dart';
import 'package:tik_tok_app/ui/screen/splash_screen.dart';
import 'package:tik_tok_app/ui/screen/video_screen.dart';


 Route customRouteGenerator(RouteSettings setting){
  switch (setting.name){
    case "/splash_screen":
     return MaterialPageRoute(builder: (context)=>SplashScreen());
     case "/video_screen":
     return MaterialPageRoute(builder: (context)=>VideoScreen());
    default:
      return MaterialPageRoute(builder: (context) => SplashScreen());
  }
 }