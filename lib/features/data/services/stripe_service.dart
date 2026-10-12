import 'package:payment/core/services/api_service.dart';
import 'package:payment/core/utils/api_keys.dart';
import 'package:payment/features/data/models/payment_intent/payment_intent.model.dart';

class StripeService {
  final _apiService = ApiService();
  Future<PaymentIntent> createPaymentIntent() async {
    final response = await _apiService.post(
      url: 'https://api.stripe.com/v1/payment_intents',
      token: ApiKeys.secretKey,
      contentType: 'application/x-www-form-urlencoded',
    );
    if (response.statusCode == 200) {
      return PaymentIntent.fromJson(response.data);
    } else {
      throw Exception('Failed to create payment intent');
    }
  }
}
