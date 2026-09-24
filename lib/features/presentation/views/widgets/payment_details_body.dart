import 'package:flutter/material.dart';
import 'package:payment/features/presentation/views/widgets/custom_button.dart';
import 'package:payment/features/presentation/views/widgets/custom_creadit_card.dart';
import 'package:payment/features/presentation/views/widgets/payment_list.dart';

class PaymentDetailsBody extends StatelessWidget {
  const PaymentDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(child: PayementList()),
        SliverToBoxAdapter(child: CustomCreaditCard()),
        SliverFillRemaining(
          hasScrollBody: false,
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: CustomButton(onPressed: () {}),
            ),
          ),
        ),
      ],
    );
  }
}
