
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:payment/features/data/models/payment_intent_input.dart';
import 'package:payment/features/presentation/manager/cubit/payment_cubit.dart';
import 'package:payment/features/presentation/views/thank_you_view.dart';
import 'package:payment/features/presentation/views/widgets/custom_button.dart';

class CustomButtonBlocConusmer extends StatelessWidget {
  const CustomButtonBlocConusmer({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<PaymentCubit, PaymentState>(
      listener: (context, state) {
        if (state is PaymentFailure) {
          Navigator.pop(context);
          ScaffoldMessenger.of(
            context,
          ).showSnackBar(SnackBar(content: Text(state.message)));
        }
        if (state is PaymentSuccess) {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => const ThankYouView()),
          );
        }
      },
      builder: (context, state) {
        return CustomButton(
          isLoading: state is PaymentLoading,
          onPressed: () async {
            context.read<PaymentCubit>().makePayment(
              input: PaymentIntentInput(
                amount: "5000", // Amount in cents
                currency: "usd",
                customer: "cus_VV26QnXjLF80tV",
              ),
            );
          },
        );
      },
    );
  }
}
