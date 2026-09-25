import 'package:flutter/material.dart';

class CustomCheckIcon extends StatelessWidget {
  const CustomCheckIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: Colors.grey.withValues(alpha: 0.2),
      radius: 50,
      child: CircleAvatar(
        backgroundColor: Colors.green,
        radius: 40,
        child: Icon(Icons.check, size: 40, color: Colors.white),
      ),
    );
  }
}