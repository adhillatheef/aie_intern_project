import 'package:aie_intern/widgets/about_card.dart';
import 'package:aie_intern/widgets/status_card.dart';
import 'package:aie_intern/widgets/tile_widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
   HomeScreen({super.key});


  List <String> texts = ["Profile", "Academics", "Attendance", "Performance"];
   @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(children: texts.map((e) => TileWidget(text: e)).toList(),)),
            const StatusCard(headline: "Class Representative", description: "Profound artist and enthusiastic science student"),
            const AboutCard(description: "Love to experiment with new ideas, enjoy the process to discovery, I am very enthusiastic to teach new concepts in the field of chemistry")
          ],
        ),
      ),
    );
  }
}
