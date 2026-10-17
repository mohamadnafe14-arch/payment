
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:payment/features/data/models/payment_intent_input.dart';
import 'package:payment/features/data/repos/payment_repo.dart';
import 'package:payment/features/data/repos/payment_repo_impl.dart';

part 'payment_state.dart';

class PaymentCubit extends Cubit<PaymentState> {
  final PaymentRepo paymentRepo = PaymentRepoImpl();
  PaymentCubit() : super(PaymentInitial());

  Future<void> makePayment({required PaymentIntentInput input}) async {
    emit(PaymentLoading());
    final result = await paymentRepo.makePayment(input: input);
    result.fold(
      (l) => emit(PaymentFailure(message: l.message)),
      (r) => emit(PaymentSuccess()),
    );
  }
}
