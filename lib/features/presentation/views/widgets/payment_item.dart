import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PaymentItem extends StatelessWidget {
  const PaymentItem({super.key, this.isSlected = false, required this.image});
  final bool isSlected;
  final String image;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 600),
      height: 60,
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 18),
      decoration: BoxDecoration(
        color: Colors.white,
        border: isSlected ? null : Border.all(color: Colors.black, width: 2),
        borderRadius: BorderRadius.circular(10),
        boxShadow: isSlected
            ? const [
                BoxShadow(
                  color: Colors.green,
                  blurRadius: 5,
                  offset: Offset(0, 1),
                ),
              ]
            : [],
      ),
      child: SvgPicture.asset(image),
    );
  }
}
