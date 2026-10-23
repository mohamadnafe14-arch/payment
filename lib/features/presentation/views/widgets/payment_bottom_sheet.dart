import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:payment/features/data/repos/payment_repo_impl.dart';
import 'package:payment/features/presentation/manager/cubit/payment_cubit.dart';
import 'package:payment/features/presentation/views/widgets/custom_button_bloc_consumer.dart';
import 'package:payment/features/presentation/views/widgets/payment_list.dart';

class PaymentBottomSheet extends StatelessWidget {
  const PaymentBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.0),

      child: BlocProvider(
        create: (context) => PaymentCubit(paymentRepo: PaymentRepoImpl()),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(height: 16),
            PayementList(),
            SizedBox(height: 32),
            CustomButtonBlocConusmer(),
          ],
        ),
      ),
    );
  }
}
