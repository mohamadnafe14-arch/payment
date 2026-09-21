import 'package:flutter/material.dart';
import 'package:payment/features/presentation/views/widgets/custom_button.dart';
import 'package:payment/features/presentation/views/widgets/order_info.dart';
import 'package:payment/features/presentation/views/widgets/total_price.dart';

class CartViewBody extends StatelessWidget {
  const CartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            SizedBox(height: 20),
            Image.asset('assets/images/basket_image.png'),
            SizedBox(height: 20),
            OrderInfo(orderKey: "Order Subtotal", value: "\$42.00"),
            const SizedBox(height: 3),
            OrderInfo(orderKey: "Discount", value: "\$0"),
            const SizedBox(height: 3),
            OrderInfo(orderKey: "Shipping", value: "\$8"),
            const Divider(thickness: 2, height: 34),
            TotalPrice(title: "Total", value: "\$50.00"),
            const SizedBox(height: 16),
            CustomButton(onPressed: () => {}),
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}
