import 'package:flutter/material.dart';
import 'package:payment/features/presentation/views/widgets/build_app_bar.dart';
import 'package:payment/features/presentation/views/widgets/thank_you_body.dart';

class ThankYouView extends StatelessWidget {
  const ThankYouView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(title: ""),
      body: Transform.translate(
        offset: const Offset(0, -20),
        child: ThankYouBody(),
      ),
    );
  }
}
