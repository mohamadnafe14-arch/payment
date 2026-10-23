import 'package:dartz/dartz.dart';
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
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }
}
