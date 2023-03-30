
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.all(20),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 40,
                  backgroundImage: NetworkImage(
                      'https://www.w3schools.com/w3images/avatar2.png'),
                ),
                SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'John Doe',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      'Asthma',
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Diagnosis:',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  'Asthma, Diabetes, High Blood Pressure',
                  style: TextStyle(fontSize: 18),
                ),
                SizedBox(height: 10),
                Text(
                  'Medications:',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  'Ventolin, Metformin, Lisinopril',
                  style: TextStyle(fontSize: 18),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}