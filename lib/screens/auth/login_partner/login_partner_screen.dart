import 'package:flutter/material.dart';
import 'package:ride_now/components/button/elevated_button.dart';
import 'package:ride_now/components/text_field/text_field.dart';

class LoginDt extends StatefulWidget {
  const LoginDt({super.key, required this.title});
  final String title;
  @override
  State<LoginDt> createState() => _LoginDtState();
}

class _LoginDtState extends State<LoginDt> {
  final TextEditingController nameDT = TextEditingController();
  final TextEditingController sdt = TextEditingController();
  bool isLogin = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        body: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16.0)
                  .copyWith(top: 60.0, bottom: 16.0),
              width: 390.0,
              height: 127.0,
              decoration: const BoxDecoration(
                  gradient: LinearGradient(colors: [
                Color(0xFF2BC1BB),
                Color(0xFFC5FCFF),
              ])),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    "Đăng nhập",
                    style: TextStyle(
                        color: Color(0xFFFFFFFF),
                        fontWeight: FontWeight.w700,
                        fontSize: 20.0),
                  ),
                  Text(
                    "Cùng RideNow kiếm thu nhập nhé!",
                    style: TextStyle(
                        color: Color(0xFFFFFFFF),
                        fontWeight: FontWeight.w400,
                        fontSize: 12.0),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 16.0,
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Container(
                        padding: const EdgeInsets.all(16.0),
                        width: 358.0,
                        height: isLogin ? 252.0 : 296.0,
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
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            const Text(
                              "Đăng nhập Đối tác",
                              style: TextStyle(
                                  color: Color(0xFF2BC1BB),
                                  fontWeight: FontWeight.w700,
                                  fontSize: 20.0),
                              textAlign: TextAlign.center,
                            ),
                            const SizedBox(
                              height: 16.0,
                            ),
                            const Row(
                              children: [
                                Text(
                                  "Tên Đối tác",
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
                            const SizedBox(
                              height: 10.0,
                            ),
                            CustomTextField(
                              controller: nameDT,
                            ),
                            const SizedBox(
                              height: 10.0,
                            ),
                            const Row(
                              children: [
                                Text(
                                  "Số điện thoại",
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
                            const SizedBox(
                              height: 10.0,
                            ),
                            CustomTextField(
                              controller: sdt,
                            ),
                            const SizedBox(
                              height: 10.0,
                            ),
                            Row(
                              children: [
                                Container(
                                  width: 10.0,
                                  height: 10.0,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color: const Color(0xFFFF1818)),
                                      borderRadius: BorderRadius.circular(5.0)),
                                  child: const Icon(
                                    Icons.error,
                                    size: 5.0,
                                    color: Color(0xFFFF1818),
                                  ),
                                ),
                                const Expanded(
                                  child: Text(
                                    "Số điện thoại chưa đăng ký tài khoản. Vui lòng kiểm tra lại thông tin!",
                                    style: TextStyle(
                                        color: Color(0xFFFF1818),
                                        fontWeight: FontWeight.w400,
                                        fontSize: 12.0),
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              width: 390.0,
              height: 143.0,
              padding: const EdgeInsets.symmetric(horizontal: 16.0)
                  .copyWith(bottom: 40.0, top: 8.0),
              decoration: const BoxDecoration(
                color: Color(0xFFFBFCFF),
                boxShadow: [
                  BoxShadow(
                    color: Color.fromRGBO(0, 0, 0, 0.05),
                    offset: Offset(0, 0),
                    blurRadius: 12,
                  ),
                ],
              ),
              child: Column(
                children: [
                  CustomElevatedButton(
                      color: const Color(0xFF2BC1BB),
                      text: "Tiếp tục",
                      onPressed: () {
                        
                      },
                      textColor: const Color(0xFFFFFFFF),
                      fontSize: 18.0),
                  const SizedBox(
                    height: 16.0,
                  ),
                  const Row(
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
            )
          ],
        ),
      ),
    );
  }
}
