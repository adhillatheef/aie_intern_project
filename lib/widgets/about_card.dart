import 'package:flutter/material.dart';

import '../constants/appcolors.dart';

class AboutCard extends StatelessWidget {
  final String description;
  const AboutCard({super.key,  required this.description});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        decoration: BoxDecoration(
            color: AppColors.studentYellowLightcolor,
            borderRadius: BorderRadius.circular(10)
        ),
        child:  Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("About", style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20),),
              const SizedBox(height: 20,),
              Align(alignment: Alignment.centerLeft,child: Text(description)),
              const SizedBox(height: 20,)
            ],
          ),
        ),
      ),
    );
  }
}
