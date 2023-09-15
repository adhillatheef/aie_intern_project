import 'package:flutter/material.dart';

class TileWidget extends StatelessWidget {
  final String text;
  const TileWidget({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.black
          ),
          borderRadius: BorderRadius.circular(40),
        ),
        child:  Padding(padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        child: Text(text),
        ),
      ),
    );
  }
}
