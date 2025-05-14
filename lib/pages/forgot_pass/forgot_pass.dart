import 'package:flutter/material.dart';
import 'package:ride_now/components/elevated_button.dart';
import 'package:ride_now/components/text_field.dart';
import 'package:ride_now/pages/forgot_pass/nhapOTP.dart';

class ForgotPass extends StatelessWidget {
  const ForgotPass({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController soDT = TextEditingController();
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        body: Stack(children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0)
                    .copyWith(top: MediaQuery.of(context).padding.top + 22.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                        width: 24.0,
                        height: 24.0,
                        child: Icon(
                          Icons.arrow_back,
                          size: 24.0,
                          color: Color(0xFF141414),
                        )),
                    Padding(
                      padding: EdgeInsets.only(right: 20.0),
                      child: Text(
                        "Quên mật khẩu",
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 20.0,
                            color: Color(0xFF141414)),
                      ),
                    ),
                    SizedBox()
                  ],
                ),
              ),
              SizedBox(
                height: 16.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  children: [
                    Text(
                      "Nhập Số điện thoại đăng ký tài khoản",
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 15.0,
                          color: Color(0xFF3A3A3C)),
                    ),
                    SizedBox(
                      width: 5.0,
                    ),
                    Text(
                      "*",
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 15.0,
                          color: Color(0xFFFF1818)),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 16.0,
              ),
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: CustomTextField(
                    controller: soDT,
                  )),
              SizedBox(
                height: 16.0,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: Text(
                  "Mã OTP sẽ được gửi qua Số điện thoại đăng ký tài khoản để xác thực hành động cài lại mật khẩu.",
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 15.0,
                      color: Color(0xFF636366)),
                ),
              )
            ],
          ),
          Positioned(
              bottom: 0.0,
              right: 0.0,
              left: 0.0,
              child: Container(
                // width: 390.0,
                height: 143.0,
                padding: const EdgeInsets.symmetric(horizontal: 16.0)
                    // .copyWith(right: 50.0)
                    .copyWith(top: 8.0, bottom: 40.0),
                decoration: const BoxDecoration(
                  color: Color(0xFFFBFCFF),
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromRGBO(0, 0, 0, 0.05), // Màu bóng
                      offset: Offset(0, 0), // Vị trí bóng (X, Y)
                      blurRadius: 12, // Độ làm mờ
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    CustomElevatedButton(
                        color: Color(0xFF2BC1BB),
                        text: "Tiếp tục",
                        onPressed: () {
                          Navigator.of(context).pushAndRemoveUntil(
                              MaterialPageRoute(
                                  builder: (context) => const Nhapotp()),
                              (Route<dynamic> route) => true);
                        },
                        textColor: Color(0xFFFFFFFF),
                        fontSize: 18.0),
                    const SizedBox(
                      height: 16.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Bạn chưa có tài khoản? ",
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 15.0,
                              color: Color(0xFF636366)),
                        ),
                        Text(
                          "Đăng ký ngay!",
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 15.0,
                              color: Color(0xFFFF1818)),
                        )
                      ],
                    )
                  ],
                ),
              ))
        ]),
      ),
    );
  }
}
