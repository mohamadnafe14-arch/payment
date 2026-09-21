import 'package:flutter/material.dart';
import 'package:payment/core/utils/styles.dart';

class CartView extends StatelessWidget {
  const CartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'My Cart',
          textAlign: TextAlign.center,
          style: Style.textStyle25,
        ),
      ),
    );
  }
}
