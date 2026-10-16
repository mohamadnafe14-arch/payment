import 'package:dartz/dartz.dart';
import 'package:payment/core/errors/failure.dart';
import 'package:payment/features/data/models/payment_intent_input.dart';

abstract class PaymentRepo {
  Future<Either<Failure, void>> makePayment({
    required PaymentIntentInput input,
  });
}
