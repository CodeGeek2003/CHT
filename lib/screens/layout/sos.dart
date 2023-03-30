import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../theme/colors.dart';

class SosPage extends StatelessWidget {
  final String _ambulanceNumber = "tel:122";
  final String _doctorNumber = "tel:01019997655";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Expanded(
              child: GestureDetector(
                onTap: () => launch(_ambulanceNumber),
                child: Container(
                  width: 30,
                  height: 80,
                  margin: EdgeInsets.only(left: 20, right: 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: buttoncolor,
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    "Ambulance",
                    style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                      color: white,
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: GestureDetector(
                onTap: () => launch(_doctorNumber),
                child: Container(
                  width: 50,
                  height: 80,
                  margin: EdgeInsets.only(left: 20, right: 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: buttoncolor,
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    "Doctor",
                    style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                      color: white,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
