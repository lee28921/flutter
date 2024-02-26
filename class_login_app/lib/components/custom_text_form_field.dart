import 'package:class_login_app/size.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final String text;
  const CustomTextFormField(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(text),
        SizedBox(
          height: small_gap,
        ),
        // input 태그
        TextFormField(
          // 1. 느낌표는 null 이 절대 아니다(컴파일러에게 알려줌)
          validator: (value) => value!.isEmpty
              ? "Please enter some text"
              : null, // 값이 없으면 Please enter some text 화면에 표시
          // 해당 TextFormField가 비밀번호 양식이면 마스킹(****) 처리 해주기
          obscureText: text == "Password" ? true : false,
          decoration: InputDecoration(
            hintText: 'Enter $text',
            // enabledBorder - 첫 화면시 기본 FormFiled 디자인
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
            // focusedBorder - 손가락 터치시 ... 디자인
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
            // errorBorder - 에러 발생시 ... 디자인
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
            // focusedErrorBorder - 에러가 발생 후 손가락 터치시 ... 디자인
            focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
          ),
        ),
      ],
    );
  }
}
