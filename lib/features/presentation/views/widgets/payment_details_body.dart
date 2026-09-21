import 'package:flutter/material.dart';
import 'package:payment/features/presentation/views/widgets/payment_item.dart';

class PaymentDetailsBody extends StatelessWidget {
  const PaymentDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        PaymentItem(),
        PaymentItem(isSlected: true),
      ],
    );
  }
}