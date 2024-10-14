import 'package:flutter/material.dart';

import '../../../../core/app_constant.dart';
import '../../../../core/common/common_color.dart';
import '../../../../core/common/common_text.dart';

class LineOrWidget extends StatelessWidget {
  const LineOrWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Expanded(child: Divider(color: CommonColor.white, thickness: 0.4)),
        const SizedBox(width: AppConstant.padding8),
        Text("atau", style: CommonText.fBodyLarge),
        const SizedBox(width: AppConstant.padding8),
        const Expanded(child: Divider(color: CommonColor.white, thickness: 0.4)),
      ],
    );
  }
}
