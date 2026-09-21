import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:payment/core/utils/styles.dart';
import 'package:payment/features/presentation/views/widgets/cart_view_body.dart';

class CartView extends StatelessWidget {
  const CartView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          elevation: 0,
          backgroundColor: Colors.transparent,
          leading: Center(child: SvgPicture.asset('assets/images/arrow.svg')),
          title: const Text(
            'My Cart',
            textAlign: TextAlign.center,
            style: Style.textStyle25,
          ),
        ),
        body: const CartViewBody(),
      ),
    );
  }
}
