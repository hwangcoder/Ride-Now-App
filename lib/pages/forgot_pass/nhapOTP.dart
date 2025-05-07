import 'package:flutter/material.dart';
import 'package:ride_now/components/elevated_button.dart';
import 'package:ride_now/components/text_field.dart';
import 'package:ride_now/pages/forgot_pass/reset_pass.dart';

class Nhapotp extends StatefulWidget {
  const Nhapotp({super.key});

  @override
  State<Nhapotp> createState() => _NhapotpState();
}

class _NhapotpState extends State<Nhapotp> {
  final TextEditingController controllerOTP = TextEditingController();
  bool? isOTP;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    isOTP = true;
  }
  void _validatorOTP(){
    String otp = controllerOTP.text.trim();
    if(otp == ''){
       setState(() => isOTP = false);
    }else{
      setState(() => isOTP = true);
      Navigator.of(context).pushAndRemoveUntil(
        MaterialPageRoute(builder: (context) => const ResetPass()), 
        (Route<dynamic> route) => true
      );
    }
  }
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
                      child: SizedBox(
                          width: 24.0,
                          height: 24.0,
                          child: Icon(
                            Icons.arrow_back,
                            size: 24.0,
                            color: Color(0xFF141414),
                          )),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 20.0),
                      child: Text(
                        "Nhập mã OTP",
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
                      "Nhập mã OTP",
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
                  controller: controllerOTP,
                )
              ),
              isOTP == true ? SizedBox() : Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  children: [
                    Container(
                      width: 10.0,
                      height: 10.0,
                      decoration: BoxDecoration(
                        border: Border.all(color: Color(0xFFFF1818)),
                        borderRadius: BorderRadius.circular(5.0)
                      ),
                      child: Icon(Icons.warning, size: 5.0, color: Color(0xFFFF1818),),
                    ),
                    Text(
                      "Nhập sai Mã OTP. Vui lòng thử lại!",
                      style: TextStyle(
                        color: Color(0xFFFF1818),
                        fontWeight: FontWeight.w400,
                        fontSize: 12.0
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 16.0,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: Text(
                  "Mã xác minh đã được gửi qua Số điện thoại đăng ký tài khoản 0909090909.",
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
              child: Container(
                width: 390.0,
                height: 104.0,
                padding: EdgeInsets.symmetric(horizontal: 16.0)
                    .copyWith(right: 50.0)
                    .copyWith(top: 8.0, bottom: 40.0),
                decoration: BoxDecoration(
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
                        onPressed:  _validatorOTP,
                        textColor: Color(0xFFFFFFFF),
                        fontSize: 18.0),
                  ],
                ),
              ))
        ]),
      ),
    );
  }
}