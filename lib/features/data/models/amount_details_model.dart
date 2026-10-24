/**
 *  "details": {
                          "subtotal": '100',
                          "shipping": '0',
                          "shipping_discount": 0
                        }
 */
class AmountDetailsModel {
  final String subtotal;
  final String shipping;
  final int shippingDiscount;

  AmountDetailsModel({
    required this.subtotal,
    required this.shipping,
    required this.shippingDiscount,
  });
  Map<String, dynamic> toMap() {
    return {
      'subtotal': subtotal,
      'shipping': shipping,
      'shipping_discount': shippingDiscount,
    };
  }
}