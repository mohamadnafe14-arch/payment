/*
  "total": '100',
                        "currency": "USD",
                        "details": {
                          "subtotal": '100',
                          "shipping": '0',
                          "shipping_discount": 0
                        }
 */
import 'package:payment/features/data/models/amount_details_model.dart';

class AmountModel {
  final String total;
  final String currency;
  final AmountDetailsModel details;

  AmountModel({
    required this.total,
    required this.currency,
    required this.details,
  });

  Map<String, dynamic> toMap() {
    return {
      'total': total,
      'currency': currency,
      'details': details.toMap(),
    };
  }
}