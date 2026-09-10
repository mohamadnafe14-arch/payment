import 'package:flutter/material.dart';
import 'package:payment/features/presentation/views/cart_view.dart';

void main() {
  runApp(const PaymentApp());
}

class PaymentApp extends StatelessWidget {
  const PaymentApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: CartView());
  }
}
