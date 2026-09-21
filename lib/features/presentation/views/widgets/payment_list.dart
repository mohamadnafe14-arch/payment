import 'package:flutter/material.dart';
import 'package:payment/features/presentation/views/widgets/payment_item.dart';

class PayementList extends StatelessWidget {
  PayementList({super.key});
  final List<String> images = <String>[
    'assets/images/card.svg',
    'assets/images/paypal.svg',
    'assets/images/master_card.svg',
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: images.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: PaymentItem(image: images[index]),
          );
        },
      ),
    );
  }
}