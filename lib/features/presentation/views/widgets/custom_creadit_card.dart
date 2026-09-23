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
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CreditCardWidget(
          cardNumber: cardNumber,
          expiryDate: expiryDate,
          cardHolderName: cardHolderName,
          cvvCode: cvvCode,
          showBackView: showBackView,
          isHolderNameVisible: true,
          onCreditCardWidgetChange: (onChange) {},
        ),
        CreditCardForm(
          formKey: formKey,
          cardNumber: cardNumber,
          expiryDate: expiryDate,
          cardHolderName: cardHolderName,
          cvvCode: cvvCode,
          onCreditCardModelChange: (cardDetails) {
            setState(() {
              cardNumber = cardDetails.cardNumber;
              expiryDate = cardDetails.expiryDate;
              cardHolderName = cardDetails.cardHolderName;
              cvvCode = cardDetails.cvvCode;
              showBackView = cardDetails.isCvvFocused;
            });
          },
        ),
      ],
    );
  }
}
