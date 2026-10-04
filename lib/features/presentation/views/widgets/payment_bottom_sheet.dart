import 'package:flutter/material.dart';
import 'package:payment/features/presentation/views/widgets/custom_button.dart';
import 'package:payment/features/presentation/views/widgets/payment_list.dart';

class PaymentBottomSheet extends StatelessWidget {
  const PaymentBottomSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.0),
    
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: 16),
          PayementList(),
          SizedBox(height: 32),
          CustomButton(
            onPressed: () => {
              // Handle button press
            },
          ),
        ],
      ),
    );
  }
}
