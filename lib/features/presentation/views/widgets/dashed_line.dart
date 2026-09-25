import 'package:flutter/material.dart';

class DashedlLine extends StatelessWidget {
  const DashedlLine({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        30,
        (index) => Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 2),
            child: Container(height: 1, color: Colors.grey),
          ),
        ),
      ),
    );
  }
}