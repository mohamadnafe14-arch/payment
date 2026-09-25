import 'package:flutter/material.dart';

class ThankYouBody extends StatelessWidget {
  const ThankYouBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(32.0),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.grey.withValues(alpha: 0.2),
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          Positioned(
            bottom: MediaQuery.of(context).size.height * 0.2,
            right: -20,
            child: CircleAvatar(backgroundColor: Colors.white),
          ),
          Positioned(
            bottom: MediaQuery.of(context).size.height * 0.2,
            left: -20,
            child: CircleAvatar(backgroundColor: Colors.white),
          ),
          Positioned(
            top: -40,
            right: 0,
            left: 0,
            child: CircleAvatar(
              backgroundColor: Colors.grey.withValues(alpha: 0.2),
              radius: 50,
              child: CircleAvatar(
                backgroundColor: Colors.green,
                radius: 40,
                child: Icon(Icons.check, size: 40, color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
