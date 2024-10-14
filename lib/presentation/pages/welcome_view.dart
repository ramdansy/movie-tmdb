import 'package:flutter/material.dart';
import 'package:movie_tmdb/core/common/common_button.dart';

import '../../core/app_constant.dart';
import '../../core/common/common_color.dart';
import '../../core/common/common_text.dart';

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
                    const SizedBox(height: AppConstant.padding32),
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: CommonButtonFilled(onPressed: () {}, text: "Daftar"),
                    ),
                    const SizedBox(height: AppConstant.padding16),
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: CommonButtonOutlined(onPressed: () {}, text: "Login"),
                    ),
                    const SizedBox(height: AppConstant.padding32),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Expanded(child: Divider(color: CommonColor.white, thickness: 0.4)),
                        const SizedBox(width: AppConstant.padding8),
                        Text("atau", style: CommonText.fBodyLarge),
                        const SizedBox(width: AppConstant.padding8),
                        const Expanded(child: Divider(color: CommonColor.white, thickness: 0.4)),
                      ],
                    ),
                    const SizedBox(height: AppConstant.padding32),
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: CommonButtonOutlined(onPressed: () {}, text: "Masuk sebagai tamu"),
                    ),
                    const SizedBox(height: AppConstant.padding32),
                    Text.rich(
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
                    ),
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
