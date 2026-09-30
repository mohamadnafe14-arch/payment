import 'package:flutter/material.dart';
import 'package:payment/core/utils/styles.dart';
import 'package:payment/features/presentation/views/widgets/payment_item_info.dart';

class ThankYouContainer extends StatelessWidget {
  const ThankYouContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.grey.withValues(alpha: 0.2),
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 56, left: 12, right: 12),
        child: Column(
          children: [
            const Text("THANK YOU", style: Style.textStyle22),
            const Text(
              "Your transaction was successful",
              style: Style.textStyle18,
            ),
            const SizedBox(height: 16),
            const PaymentItemInfo(title: "Date", value: "10/10/2022"),
            const PaymentItemInfo(title: "Time", value: "10:10"),
            const PaymentItemInfo(title: "To", value: "John Doe"),
          ],
        ),
      ),
    );
  }
}
