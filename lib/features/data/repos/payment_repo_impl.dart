import 'package:dartz/dartz.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:payment/core/errors/failure.dart';
import 'package:payment/features/data/models/payment_intent_input.dart';
import 'package:payment/features/data/repos/payment_repo.dart';
import 'package:payment/features/data/services/stripe_service.dart';

class PaymentRepoImpl implements PaymentRepo {
  final StripeService stripeService = StripeService();
  @override
  Future<Either<Failure, void>> makePayment({
    required PaymentIntentInput input,
  }) async {
    try {
      await stripeService.makePayment(input: input);
      return const Right(null);
    }on StripeException catch (e) {
      return Left(ServerFailure(e.error.message ?? 'Operation failed'));
    }
     catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }
}
