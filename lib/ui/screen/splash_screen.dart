 import 'package:flutter/material.dart';
import 'package:tik_tok_app/utils/assets.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({ Key? key }) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override

  Widget build(BuildContext context) {
    final height= MediaQuery.of(context).size.height;
    final width=MediaQuery.of(context).size.width;
    return Scaffold(
       // ignore: avoid_unnecessary_containers
       body:Center(
         child: ClipRRect(
           borderRadius: BorderRadius.circular(90),
           child: Container(
             height:  100,
            width:  100,
             child:  Image.asset(Assets.tiktokIcon,fit: BoxFit.fill,)
           ),
         ),
       )
    );
  }
}