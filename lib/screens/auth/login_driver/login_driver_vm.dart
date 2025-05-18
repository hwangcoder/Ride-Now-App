import 'package:flutter/widgets.dart';
import 'package:stacked/stacked.dart';

class LoginDriverVm extends BaseViewModel {
  final phoneNumberController = TextEditingController();
  final passwordDriverController = TextEditingController();
  String errorPhoneNumberInput = '';
  String errorPasswordDriverInput = '';
  List<String> phonenumbers = [
    "0387878845",
  ];
  String password = "Hoang123@";
  void checkValidPhone(List<String> phoneNumbers) {
    final phone = phoneNumberController.text.trim();
    if (phone.isEmpty) {
      errorPhoneNumberInput = 'Vui lòng nhập số điện thoại';
    } else if (!RegExp(r'^[0-9]+$').hasMatch(phone)) {
      errorPhoneNumberInput = 'Số điện thoại chỉ được chứa chữ số';
    } else if (phone.length < 10 || phone.length > 11) {
      errorPhoneNumberInput = 'Số điện thoại phải có 10 hoặc 11 chữ số';
    } else if (!phone.startsWith('0')) {
      errorPhoneNumberInput = 'Số điện thoại phải bắt đầu bằng số 0';
    } else if (!phoneNumbers.contains(phone)) {
      errorPhoneNumberInput =
          'Số điện thoại chưa được đăng ký tài khoản. Vui lòng kiểm tra lại thông tin';
    } else {
      errorPhoneNumberInput = '';
    }

    rebuildUi();
  }

  void checkValidPassword(String password) {
    final password = passwordDriverController.text.trim();

    if (password.isEmpty) {
      errorPasswordDriverInput = 'Vui lòng nhập mật khẩu';
    } else if (password.length < 8) {
      errorPasswordDriverInput = 'Mật khẩu phải có ít nhất 8 ký tự';
    } else if (!RegExp(r'[A-Z]').hasMatch(password)) {
      errorPasswordDriverInput = 'Mật khẩu phải chứa ít nhất 1 chữ cái in hoa';
    } else if (!RegExp(r'[a-z]').hasMatch(password)) {
      errorPasswordDriverInput = 'Mật khẩu phải chứa ít nhất 1 chữ cái thường';
    } else if (!RegExp(r'[0-9]').hasMatch(password)) {
      errorPasswordDriverInput = 'Mật khẩu phải chứa ít nhất 1 chữ số';
    } else if (!RegExp(r'[!@#\$&*~%^()_\-=+{}[\]|;:<>,./?]')
        .hasMatch(password)) {
      errorPasswordDriverInput = 'Mật khẩu phải chứa ít nhất 1 ký tự đặc biệt';
    } else if (!password.contains(password)) {
      errorPhoneNumberInput =
          'Mật khẩu không chính xác. Vui lòng nhập lại mật khẩu.';
    } else {
      errorPasswordDriverInput = '';
    }

    rebuildUi();
  }

  bool get validator =>
      errorPhoneNumberInput.isNotEmpty && errorPasswordDriverInput.isNotEmpty;

  void onContinue() {
    checkValidPhone(phonenumbers);
    checkValidPassword(password);
    if (!validator) return;
    
  }
}
