import 'package:flutter/material.dart';

import '../constants/appcolors.dart';

class StatusCard extends StatelessWidget {
  final String headline;
  final String description;
  const StatusCard({super.key, required this.headline, required this.description});

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
            children: [
              const Row(
                children: [
                  Text("Status", style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20),),
                  Spacer(),
                  Icon(Icons.edit_square)
                ],
              ),
              const SizedBox(height: 20,),
              Align(alignment: Alignment.centerLeft,child: Text(headline,style: const TextStyle(fontWeight: FontWeight.w700),)),
              const SizedBox(height: 10,),
              Align(alignment: Alignment.centerLeft,child: Text(description)),
              const SizedBox(height: 20,)
            ],
          ),
        ),
      ),
    );
  }
}
