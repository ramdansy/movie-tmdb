import 'package:flutter/material.dart';

import '../../../core/app_constant.dart';
import '../../../core/common/common_button.dart';
import '../../../core/common/common_color.dart';
import '../../routes/slide_route.dart';
import 'login_view.dart';
import 'register_view.dart';
import 'widgets/header_auth_widget.dart';
import 'widgets/line_or_widget.dart';
import 'widgets/term_and_condition_text_widget.dart';

class WelcomeView extends StatelessWidget {
  const WelcomeView({super.key});

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
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: CommonButtonFilled(
                        onPressed: () => Navigator.push(context, SlideRoute(page: const RegisterView())),
                        text: "Daftar",
                      ),
                    ),
                    const SizedBox(height: AppConstant.padding16),
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: CommonButtonOutlined(
                        onPressed: () => Navigator.push(context, SlideRoute(page: const LoginView())),
                        text: "Login",
                      ),
                    ),
                    const SizedBox(height: AppConstant.padding32),
                    const LineOrWidget(),
                    const SizedBox(height: AppConstant.padding32),
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: CommonButtonOutlined(onPressed: () {}, text: "Masuk sebagai tamu"),
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
