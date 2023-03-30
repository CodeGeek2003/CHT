import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';

import '../models/doctor.dart';

class DoctorAppGridMenu extends StatelessWidget {
  const DoctorAppGridMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GridView.builder(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
          mainAxisSpacing: 8,
        ),
        padding: EdgeInsets.zero,
        itemCount: doctorMenu.length,
        itemBuilder: (BuildContext context, index) {
          return GestureDetector(
            child: Container(
              constraints: const BoxConstraints(
                maxHeight: 81,
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: Container(
                      constraints: const BoxConstraints(
                        minHeight: 26,
                        minWidth: 26,
                        maxHeight: 49,
                        maxWidth: 49,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: Svg(
                            'assets/svg/${doctorMenu[index].image}',
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Expanded(
                    child: Text(

                      doctorMenu[index].name,
                      style: TextStyle(fontSize: 16)
                    ),
                  ),

                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
