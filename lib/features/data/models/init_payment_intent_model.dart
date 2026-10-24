class InitPaymentIntentModel {
  final String clientSecret;
  final String customerId;
  final String ephemeralKey;

  InitPaymentIntentModel({
    required this.clientSecret,
    required this.customerId,
    required this.ephemeralKey,
  });
}