import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../theme/colors.dart';
import '../layout/layout.dart';
import '../signup/signup.dart';



class login extends StatefulWidget {

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  int currentindex=0;

  var scaffoldkey=GlobalKey<ScaffoldState>();

  var formkey=GlobalKey<FormState>();

  var nameController=TextEditingController();

  var emailController=TextEditingController();

  var passwordController=TextEditingController();

  var phoneController=TextEditingController();

  List<String> options = ['Doctor', 'Patient', 'Pharmacist', 'Lab Technician', 'Higher Management'];

  String? selectedOption;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: primary,
      body:



      SafeArea(

        child: SingleChildScrollView(
          child: Column(

            children: [
              SizedBox(height: 80,),
              //icon
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 0,),
                child: Center(child: Image.network( //THe logo of the app
                  'https://th.bing.com/th/id/R.ba1ca3bb07a2608fa4f6a985c5a19325?rik=CkrDHLOvv4eH1A&riu=http%3a%2f%2f3.bp.blogspot.com%2f-fdquRzOA5Ww%2fUgJzc27SGvI%2fAAAAAAAADdY%2fTOMmWdDGVVI%2fs1600%2fmedical%2bred%2bcross%2b1.jpg&ehk=cSpm6VspMBp92%2fmHR%2fyMffik3E3ZePaYnDWEdzbt%2b%2fU%3d&risl=&pid=ImgRaw&r=0', // Replace with your own image URL
                  height: 150,
                  width: 150,
                ),),
              ),

              // loginnnnnnnnnnnn
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Center(child: Text('Login',style: TextStyle( color:buttoncolor,fontSize: 40,fontWeight: FontWeight.w900,fontStyle: FontStyle.italic),))

                      ],
                    ),
                  ),


                ],
              ),

              SizedBox(height: 25,),
              //form fildddd
              Container(
                  width: double.infinity,
                  margin: EdgeInsets.symmetric(horizontal: 25),
                  decoration: BoxDecoration(
                      color: white,
                      borderRadius: BorderRadius.circular(25),
                      boxShadow: [
                        BoxShadow(
                          color: grey.withOpacity(0.03),
                          spreadRadius: 10,
                          blurRadius: 3,
                          // changes position of shadow
                        ),
                      ]),
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 20, top: 15, bottom: 5, right: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Name",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 13,
                              color: Color(0xff67727d)),
                        ),
                        TextField(
                          controller: nameController,
                          cursorColor: black,
                          style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w500,
                              color: black),
                          decoration: InputDecoration(
                              prefixIcon: Icon(Icons.drive_file_rename_outline),
                              prefixIconColor: black,
                              hintText: "Name",
                              border: InputBorder.none),
                        ),
                      ],
                    ),
                  )),
              SizedBox(
                height: 20,
              ),
              Container(
                  width: double.infinity,
                  margin: EdgeInsets.symmetric(horizontal: 25),
                  decoration: BoxDecoration(
                      color: white,
                      borderRadius: BorderRadius.circular(25),
                      boxShadow: [
                        BoxShadow(
                          color: grey.withOpacity(0.03),
                          spreadRadius: 10,
                          blurRadius: 3,
                          // changes position of shadow
                        ),
                      ]),
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 20, top: 15, bottom: 5, right: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "SSN",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 13,
                              color: Color(0xff67727d)),
                        ),
                        TextField(
                          obscureText: true,
                          controller: passwordController,
                          cursorColor: black,
                          style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w500,
                              color: black),
                          decoration: InputDecoration(
                              prefixIcon: Icon(Icons.lock_outline_rounded),
                              prefixIconColor: Colors.black,

                              suffixIconColor: Colors.black,
                              hintText: "SSN",
                              border: InputBorder.none),
                        ),
                      ],
                    ),
                  )),
              SizedBox(
                height: 20,
              ),
              Container(
                  width: double.infinity,
                  margin: EdgeInsets.symmetric(horizontal: 25),
                  decoration: BoxDecoration(
                      color: white,
                      borderRadius: BorderRadius.circular(25),
                      boxShadow: [
                        BoxShadow(
                          color: grey.withOpacity(0.03),
                          spreadRadius: 10,
                          blurRadius: 3,
                          // changes position of shadow
                        ),
                      ]),
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 20, top: 15, bottom: 5, right: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Type",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 13,
                              color: Color(0xff67727d)),
                        ),
                        DropdownButton<String>(
                          value: selectedOption,
                          items: options.map((String option) {
                            return DropdownMenuItem<String>(
                              value: option,
                              child: Text(option),
                            );
                          }).toList(),
                          onChanged: (newValue) {
                            setState(() {
                              selectedOption = newValue;
                            });
                          },
                        )


                      ],
                    ),
                  )),

              SizedBox(height: 30,),
              //button and text
              Column(
                //crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Layout(),
                          ));
                    },
                    child: Container(

                      padding: EdgeInsets.all(16),
                      margin: EdgeInsets.symmetric(horizontal: 25),
                      decoration: BoxDecoration(

                          color:buttoncolor, borderRadius: BorderRadius.circular(25)),
                      child: Center(
                        child: Text(
                          "Login",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                  ),

                  InkWell(
                    onTap: (){

                      Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context)=>signUp()),
                      );


                    },
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 125
                      ),
                      child: Row(
                        // crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Center(
                            child: Text(
                              "New User? ",
                              style: TextStyle(color: Colors.black,fontSize: 18),
                            ),
                          ),
                          Text(
                            " sign up",
                            style: TextStyle(color: Colors.blue,fontSize: 18),
                          ),

                        ],
                      ),
                    ),
                  ),
                ],
              ),

            ],
          ),
        ),
      ),









    );
  }
}
