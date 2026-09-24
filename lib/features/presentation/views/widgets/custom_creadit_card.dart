import 'package:flutter/material.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';

class CustomCreaditCard extends StatefulWidget {
  const CustomCreaditCard({
    super.key,
    required this.formKey,
    required this.autovalidateMode,
  });
  final GlobalKey<FormState> formKey;
  final AutovalidateMode autovalidateMode;
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
          formKey: widget.formKey,
          cardNumber: cardNumber,
          expiryDate: expiryDate,
          cardHolderName: cardHolderName,
          cvvCode: cvvCode,
          autovalidateMode: widget.autovalidateMode,
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
