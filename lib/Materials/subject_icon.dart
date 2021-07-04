import 'package:flutter/material.dart';

class SubjectIcon extends StatelessWidget {
  final String subject;
  final Color color;
  final double weight;
  SubjectIcon(
      {required this.subject, required this.color, required this.weight});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: Container(
        height: 40 * weight,
        width: 40 * weight,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.all(
            Radius.circular(40 * weight),
          ),
        ),
        child: Text(
          subject,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 25 * weight,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}

