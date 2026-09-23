import 'package:flutter/material.dart';
import 'package:payment/features/presentation/views/widgets/custom_creadit_card.dart';
import 'package:payment/features/presentation/views/widgets/payment_list.dart';

class PaymentDetailsBody extends StatelessWidget {
  const PaymentDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(children: [PayementList(), CustomCreaditCard()]),
    );
  }
}
