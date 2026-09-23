import 'package:flutter/material.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';

class CustomCreaditCard extends StatefulWidget {
  const CustomCreaditCard({super.key});

  @override
  State<CustomCreaditCard> createState() => _CustomCreaditCardState();
}

class _CustomCreaditCardState extends State<CustomCreaditCard> {
  String cardNumber = '';
  String expiryDate = '';
  String cardHolderName = '';
  String cvvCode = '';
  bool showBackView = false;

  @override
  Widget build(BuildContext context) {
    return CreditCardWidget(
      cardNumber: cardNumber,
      expiryDate: expiryDate,
      cardHolderName: cardHolderName,
      cvvCode: cvvCode,
      showBackView: showBackView,
      onCreditCardWidgetChange: (onChange) {},
    );
  }
}
