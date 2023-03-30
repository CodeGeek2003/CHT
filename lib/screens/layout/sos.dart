import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../theme/colors.dart';

class SosPage extends StatelessWidget {
  final String _ambulanceNumber = "tel:122";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () => launch(_ambulanceNumber),
        child: Center(
          child: Container(
            width: 150,
            height: 80,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: buttoncolor
            ),
            alignment: Alignment.center,
            child: Text(
              "SOS",
              style: TextStyle(
                fontSize: 48.0,
                fontWeight: FontWeight.bold,
                color: white
              ),
            ),
          ),
        ),
      ),
    );
  }
}
