  import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:payment/core/utils/styles.dart';

AppBar buildAppBar({required String title}) {
    return AppBar(
      centerTitle: true,
      elevation: 0,
      backgroundColor: Colors.transparent,
      leading: Center(child: SvgPicture.asset('assets/images/arrow.svg')),
      title:  Text(
        title,
        textAlign: TextAlign.center,
        style: Style.textStyle25,
      ),
    );
  }