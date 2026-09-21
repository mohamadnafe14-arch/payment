import 'package:flutter/material.dart';
import 'package:payment/core/utils/styles.dart';

class OrderInfo extends StatelessWidget {
  const OrderInfo({super.key, required this.orderKey, required this.value});
  final String orderKey;
  final String value;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(orderKey, style: Style.textStyle18),
        Spacer(),
        Text(value, style: Style.textStyle18),
      ],
    );
  }
}
