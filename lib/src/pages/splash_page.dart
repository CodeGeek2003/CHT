import 'package:cht2/src/theme/extention.dart';
import 'package:flutter/material.dart';

import '../../theme/colors.dart';
import '../../theme/colors.dart';
import '../../theme/colors.dart';
import '../theme/light_color.dart';
import '../theme/text_styles.dart';
import 'home_page.dart';


class SplashPage extends StatefulWidget {
  SplashPage({Key? key}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
     Future.delayed(Duration(seconds: 2)).then((_) {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => HomePage()));
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/doctor_face.jpg"),
                fit: BoxFit.fill,
              ),
            ),
          ),
          Positioned.fill(
            child: Opacity(
              opacity: .6,
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [LightColor.purpleExtraLight, LightColor.purple],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      tileMode: TileMode.mirror,
                      stops: [.5, 6]),
                ),
              ),
            ),
          ),
         Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  flex: 2,
                  child: SizedBox(),
                ),
                Image.asset("assets/heartbeat.png", color: Colors.white,height: 100,),
                Text(
                  "Time Health",
                  style: TextStyles.h1Style.white,
                ),
                Text(
                  "By healthcare Evolution",
                  style: TextStyles.bodySm.white.bold,
                ),
                Expanded(
                  flex: 7,
                  child: SizedBox(),
                ),
              ],
            ).alignTopCenter,
        ],
      ),
    );
  }
}
