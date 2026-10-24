import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_paypal_payment/flutter_paypal_payment.dart';
import 'package:payment/features/data/models/amount_details_model.dart';
import 'package:payment/features/data/models/amount_model.dart';
import 'package:payment/features/data/models/item_model.dart';
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
          /*  context.read<PaymentCubit>().makePayment(
              input: PaymentIntentInput(
                amount: "5000", // Amount in cents
                currency: "usd",
                customer: "cus_VV26QnXjLF80tV",
              ),
            );*/
            AmountModel amountModel = AmountModel(
              total: '100',
              currency: "USD",
              details: AmountDetailsModel(
                subtotal: '100',
                shipping: '0',
                shippingDiscount: 0,
              )
            );
            List<ItemModel> items = [
              ItemModel(
                name: "Apple",
                quantity: 4,
                price: '10',
                currency: "USD",
              ),
              ItemModel(
                name: "Pineapple",
                quantity: 5,
                price: '12',
                currency: "USD",
              ),
            ];
              Navigator.of(context).push(MaterialPageRoute(
                builder: (BuildContext context) => PaypalCheckoutView(
                  sandboxMode: true,
                  clientId: "YOUR CLIENT ID",
                  secretKey: "YOUR SECRET KEY",
                  transactions:  [
                    {
                      "amount":amountModel.toMap(),
                      "description": "The payment transaction description.",
                      "item_list": {
                        "items": items.map((item) => item.toMap()).toList()
                      }
                    }
                  ],
                  note: "Contact us for any questions on your order.",
                  onSuccess: (Map params) async {
                    log("onSuccess: $params");
                    Navigator.pop(context);
                  },
                  onError: (error) {
                    log("onError: $error");
                    Navigator.pop(context);
                  },
                  onCancel: () {
                    log('cancelled:');
                    Navigator.pop(context);
                  },
                ),
              ));
          },
        );
      },
    );
  }
}
