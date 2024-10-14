import 'package:flutter/material.dart';

import '../../../../core/common/common_text.dart';

class TermAndConditionTextWidget extends StatelessWidget {
  const TermAndConditionTextWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      textAlign: TextAlign.center,
      style: CommonText.fBodySmall,
      TextSpan(
        children: [
          const TextSpan(text: "Dengan membuat akun atau masuk, Anda setuju dengan "),
          TextSpan(
            text: "Ketentuan Layanan",
            style: CommonText.fBodySmall.copyWith(fontWeight: FontWeight.w600),
          ),
          const TextSpan(text: " dan "),
          TextSpan(
            text: "Kebijakan Privasi",
            style: CommonText.fBodySmall.copyWith(fontWeight: FontWeight.w600),
          ),
        ],
      ),
    );
  }
}
