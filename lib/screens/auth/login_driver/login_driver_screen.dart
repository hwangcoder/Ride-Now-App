import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import '../../../components/app_bar/app_bar_auth.dart';
import '../../../components/button/elevated_button.dart';
import '../../../components/text_field/app_text_field.dart';
import '../../../pages/forgot_pass/forgot_pass.dart';
import '../../../resources/theme/app_colors.dart';
import '../../../resources/theme/app_styles.dart';
import '../register_driver/register_driver.dart';
import 'login_driver_vm.dart';

class LoginDriverScreen extends StackedView<LoginDriverVm> {
  LoginDriverScreen({
    super.key,
  });

  @override
  viewModelBuilder(BuildContext context) {
    return LoginDriverVm();
  }

  final List<String> phonenumbers = [
    "0387878845",
  ];
  final String password = "Hoang123@";
  @override
  Widget builder(BuildContext context, viewModel, Widget? child) {
    return Scaffold(
      appBar: const AppBarAuth(
        title: "Đăng nhập",
        subTitle: "Cùng RideNow kiếm thu nhập nhé!",
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: const Color(0xFFFBFCFF),
                borderRadius: BorderRadius.circular(16.0),
                boxShadow: const [
                  BoxShadow(
                    color: Color.fromRGBO(0, 0, 0, 0.05),
                    offset: Offset(0, 0),
                    blurRadius: 12,
                  ),
                ],
              ),
              child: Column(
                children: [
                  Text(
                    "Đăng nhập Tài xế",
                    textAlign: TextAlign.center,
                    style: AppStyles.kTextStyle20.copyWith(
                      color: AppColors.color2BC1BB,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(height: 16.0),
                  AppTextField(
                    controller: viewModel.phoneNumberController,
                    label: "Số điện thoại",
                    isRequired: true,
                    textError: viewModel.errorPhoneNumberInput,
                    onChanged: (_) => viewModel.checkValidPhone(phonenumbers),
                  ),
                  const SizedBox(height: 20.0),
                  AppTextField(
                    controller: viewModel.passwordDriverController,
                    isPassword: true,
                    label: "Mật khẩu",
                    isRequired: true,
                    textError: viewModel.errorPasswordDriverInput,
                    onChanged: (_) => viewModel.checkValidPassword(password),
                  ),
                  const SizedBox(height: 10.0),
                  Align(
                    alignment: Alignment.centerRight,
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const ForgotPass(),
                          ),
                        );
                      },
                      child: Text('Quên mật khẩu?',
                          textAlign: TextAlign.right,
                          style: AppStyles.kTextStyle16.copyWith(
                            color: AppColors.color696969,
                            fontStyle: FontStyle.italic,
                          )),
                    ),
                  ),
                  // const Spacer(),
                ],
              ),
            ),
            const SizedBox(height: 200),
            CustomElevatedButton(
              color: const Color(0xFF2BC1BB),
              text: "Tiếp tục",
              onPressed: viewModel.onContinue,
              textColor: const Color(0xFFFFFFFF),
              fontSize: 18.0,
            ),
            const SizedBox(height: 10),
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                text: "Bạn chưa có tài khoản? ",
                style: AppStyles.kTextStyle16.copyWith(
                  color: AppColors.color696969,
                  fontWeight: FontWeight.w400,
                ),
                children: <TextSpan>[
                  TextSpan(
                    text: 'Đăng ký ngay!',
                    style: AppStyles.kTextStyle15.copyWith(
                      color: AppColors.red,
                    ),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const RegisterDriver(),
                          ),
                        );
                      },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
