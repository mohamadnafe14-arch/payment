class PaymentIntentInput {
  final String amount;
  final String currency;
  final String customer;
  PaymentIntentInput({required this.amount, required this.currency, required this.customer});
  Map<String, dynamic> toMap() {
    return {'amount': amount, 'currency': currency, 'customer': customer};
  }
}
