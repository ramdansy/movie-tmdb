import 'package:flutter/material.dart';

import '../../../core/app_constant.dart';
import '../../../core/common/common_button.dart';
import '../../../core/common/common_color.dart';
import '../../../core/common/common_icon.dart';
import '../../../core/common/common_text_input.dart';
import '../../../core/common/enums/common_form_validate_type.dart';
import 'widgets/header_auth_widget.dart';
import 'widgets/line_or_widget.dart';
import 'widgets/term_and_condition_text_widget.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CommonColor.black,
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height / 2,
              width: MediaQuery.of(context).size.width,
              child: Image.asset(
                "assets/images/header-welcome.png",
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              bottom: 0,
              child: Container(
                padding: const EdgeInsets.all(AppConstant.padding24),
                width: MediaQuery.of(context).size.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const HeaderAuthWidget(),
                    const SizedBox(height: AppConstant.padding32),
                    CommonTextInput(
                      textEditingController: TextEditingController(),
                      focusNode: FocusNode(),
                      hintText: 'Alamat Email',
                      textInputAction: TextInputAction.next,
                      obsecureText: false,
                      maxLines: 1,
                      onFieldSubmit: (value) {},
                      textInputType: TextInputType.text,
                      validators: const [
                        CommonFormValidateType.noEmpty,
                        CommonFormValidateType.email,
                      ],
                    ),
                    const SizedBox(height: AppConstant.padding24),
                    CommonTextInput(
                      textEditingController: TextEditingController(),
                      focusNode: FocusNode(),
                      hintText: 'Password',
                      textInputAction: TextInputAction.done,
                      obsecureText: true,
                      maxLines: 1,
                      onFieldSubmit: (value) {},
                      textInputType: TextInputType.text,
                      validators: const [
                        CommonFormValidateType.noEmpty,
                      ],
                    ),
                    const SizedBox(height: AppConstant.padding24),
                    CommonButtonFilled(onPressed: () {}, text: "Login"),
                    const SizedBox(height: AppConstant.padding32),
                    const LineOrWidget(),
                    const SizedBox(height: AppConstant.padding32),
                    CommonButtonFilled(
                      onPressed: () {},
                      text: "Masuk dengan Google",
                      color: CommonColor.white,
                      fontColor: CommonColor.fontBlack,
                      textAlign: TextAlign.left,
                      iconLeft: CommonIcon.google,
                    ),
                    const SizedBox(height: AppConstant.padding32),
                    const TermAndConditionTextWidget(),
                    const SizedBox(height: AppConstant.padding16),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
