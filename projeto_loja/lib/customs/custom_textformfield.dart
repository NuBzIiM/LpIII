import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final Widget? text;
  int? border;
  bool? isPassword;
  TextEditingController? controller;
  CustomTextFormField({super.key, this.text, this.border, this.isPassword,this.controller});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10.0),
      child: TextFormField(
        controller: controller,
        obscureText: isPassword == null ? false : true,
        decoration: InputDecoration(
          label: text,
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(width: 1),
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(width: 1),
          ),
        ),
      ),
    );
  }
}
