import 'package:flutter/material.dart';
import 'package:payment/features/presentation/views/widgets/build_app_bar.dart';
import 'package:payment/features/presentation/views/widgets/cart_view_body.dart';

class CartView extends StatelessWidget {
  const CartView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: buildAppBar(title: "My Cart"),
        body: const CartViewBody(),
      ),
    );
  }
}
