import 'package:flutter/material.dart';
import 'package:tunes/model/tuneModel.dart';

class tune_Item extends StatelessWidget {
  final tuneModel tune;

  const tune_Item({
    super.key,
    required this.tune,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          tune.playSound();
        },
        child: Container(
          color: tune.color,
        ),
      ),
    );
  }
}
