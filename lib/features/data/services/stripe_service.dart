import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:payment/core/services/api_service.dart';
import 'package:payment/core/utils/api_keys.dart';
import 'package:payment/features/data/models/ephemeral_key/ephemeral_key.dart';
import 'package:payment/features/data/models/init_payment_intent_model.dart';
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
    required InitPaymentIntentModel initPaymentIntentModel,
  }) async {
    await Stripe.instance.initPaymentSheet(
      paymentSheetParameters: SetupPaymentSheetParameters(
        paymentIntentClientSecret: initPaymentIntentModel.clientSecret,
        customerId: initPaymentIntentModel.customerId,
        customerEphemeralKeySecret: initPaymentIntentModel.ephemeralKey,
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
      final ephemeralKey = await _createEphemeralKey(
        customer: paymentIntent.customer!,
      );
      await _initPaymentSheet(
        initPaymentIntentModel: InitPaymentIntentModel(
          clientSecret: paymentIntent.clientSecret!,
          customerId: paymentIntent.customer!,
          ephemeralKey: ephemeralKey.secret!,
        ),
      );
      await _presentPaymentSheet();
    } catch (e) {
      throw Exception('Payment failed: $e');
    }
  }

  Future<EphemeralKey> _createEphemeralKey({required String customer}) async {
    final response = await _apiService.post(
      url: 'https://api.stripe.com/v1/ephemeral_keys',
      token: ApiKeys.secretKey,
      contentType: 'application/x-www-form-urlencoded',
      body: {'customer': customer},
      headers: {'Stripe-Version': '2026-09-30.endive'},
    );

    return EphemeralKey.fromJson(response.data);
  }
}
