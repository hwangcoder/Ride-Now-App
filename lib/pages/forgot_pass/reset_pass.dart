import 'package:flutter/material.dart';
import 'package:ride_now/components/elevated_button.dart';
// import 'package:ride_now/components/text_field.dart';
import 'package:ride_now/components/text_field_password.dart';
import 'package:ride_now/pages/forgot_pass/change_pass_success.dart';

class ResetPass extends StatefulWidget {
  const ResetPass({super.key});

  @override
  State<ResetPass> createState() => _ResetPassState();
}

class _ResetPassState extends State<ResetPass> {
  final TextEditingController newPass = TextEditingController();
  final TextEditingController confirmPass = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
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
                    GestureDetector(
                      onTap: () => Navigator.pop(context),
                      child: GestureDetector(
                        onTap: () => Navigator.pop(context),
                        child: const SizedBox(
                            width: 24.0,
                            height: 24.0,
                            child: Icon(
                              Icons.arrow_back,
                              size: 24.0,
                              color: Color(0xFF141414),
                            )),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(right: 20.0),
                      child: Text(
                        "Cài lại mật khẩu",
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 20.0,
                            color: Color(0xFF141414)),
                      ),
                    ),
                    const SizedBox()
                  ],
                ),
              ),
              const SizedBox(
                height: 16.0,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  children: [
                    Text(
                      "Nhập Mật khẩu mới",
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
              const SizedBox(
                height: 16.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: CustomTextFieldPassword(
                  controller: newPass,
                )
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  children: [
                    Container(
                      width: 10.0,
                      height: 10.0,
                      decoration: BoxDecoration(
                        border: Border.all(color: Color(0xFF636366)),
                        borderRadius: BorderRadius.circular(5.0)
                      ),
                      child: Icon(Icons.warning, size: 5.0, color: Color(0xFF636366),),
                    ),
                    const SizedBox(width: 4.0,),
                    const Expanded(
                      child: Text(
                        "Mật khẩu phải có ít nhất 8 ký tự, bao gồm chữ hoa, chữ thường, số và ký tự đặc biệt.",
                        style: TextStyle(
                          color: Color(0xFF636366),
                          fontWeight: FontWeight.w400,
                          fontSize: 12.0
                        ),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 16.0,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  children: [
                    Text(
                      "Nhập lại Mật khẩu mới",
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
              const SizedBox(
                height: 16.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: CustomTextFieldPassword(
                  controller: confirmPass,
                )
              ),
            ],
          ),
          Positioned(
              bottom: 0.0,
              child: Container(
                width: 390.0,
                height: 104.0,
                padding: const EdgeInsets.symmetric(horizontal: 16.0)
                    .copyWith(right: 50.0)
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
                        color: const Color(0xFF2BC1BB),
                        text: "Lưu mật khẩu mới",
                        onPressed: (){
                          Navigator.of(context).pushAndRemoveUntil(
                            MaterialPageRoute(builder: (context) => const ChangePassSuccess()), 
                            (Route<dynamic> route) =>false
                          );
                        },
                        textColor: const Color(0xFFFFFFFF),
                        fontSize: 18.0),
                  ],
                ),
              ))
        ]),
      ),
    );
  }
}