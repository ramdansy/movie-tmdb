import 'package:flutter/material.dart';

import '../../../../core/app_constant.dart';
import '../../../../core/common/common_text.dart';

class HeaderAuthWidget extends StatelessWidget {
  const HeaderAuthWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width / 3,
          child: Image.asset("assets/images/logo.png", fit: BoxFit.cover),
        ),
        const SizedBox(height: AppConstant.padding32),
        Text(
          "Siap-siaplah untuk terjun ke dalam kisah-kisah terhebat di TV dan Film",
          style: CommonText.fBodyLarge,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
