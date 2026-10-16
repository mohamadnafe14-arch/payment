import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:payment/core/services/api_service.dart';
import 'package:payment/core/utils/api_keys.dart';
import 'package:payment/features/data/models/payment_intent/payment_intent.model.dart';
import 'package:payment/features/data/models/payment_intent_input.dart';

class StripeService {
  final _apiService = ApiService();
  Future<PaymentIntentModel> _createPaymentIntent({
    required PaymentIntentInput input,
  }) async {
    final response = await _apiService.post(
      url: 'https://api.stripe.com/v1/payment_intents',
      token: ApiKeys.secretKey,
      contentType: 'application/x-www-form-urlencoded',
      body: input.toMap(),
    );
    if (response.statusCode == 200) {
      return PaymentIntentModel.fromJson(response.data);
    } else {
      throw Exception('Failed to create payment intent');
    }
  }

  Future<void> _initPaymentSheet({
    required String paymentIntentClientSecret,
  }) async {
    Stripe.instance.initPaymentSheet(
      paymentSheetParameters: SetupPaymentSheetParameters(
        paymentIntentClientSecret: paymentIntentClientSecret,
        merchantDisplayName: 'Mohamed',
      ),
    );
  }

  Future<void> _presentPaymentSheet() async {
    await Stripe.instance.presentPaymentSheet();
  }

  Future<void> makePayment({required PaymentIntentInput input}) async {
    try {
      final paymentIntent = await _createPaymentIntent(input: input);
      await _initPaymentSheet(
        paymentIntentClientSecret: paymentIntent.clientSecret!,
      );
      await _presentPaymentSheet();
    } catch (e) {
      throw Exception('Payment failed: $e');
    }
  }
}
