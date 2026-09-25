import 'package:flutter/material.dart';
import 'package:payment/features/presentation/views/widgets/custom_check_icon.dart';
import 'package:payment/features/presentation/views/widgets/dashed_line.dart';
import 'package:payment/features/presentation/views/widgets/thank_you_container.dart';

class ThankYouBody extends StatelessWidget {
  const ThankYouBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(32.0),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          ThankYouContainer(),
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
          Positioned(top: -40, right: 0, left: 0, child: CustomCheckIcon()),
          Positioned(
            left: 28,
            right: 28,
            bottom: MediaQuery.of(context).size.height * 0.2 + 20,
            child: DashedlLine(),
          ),
        ],
      ),
    );
  }
}
