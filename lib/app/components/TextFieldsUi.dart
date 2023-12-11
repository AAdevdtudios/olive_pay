import 'package:flutter/material.dart';

import '../data/constantData.dart';

class TextFieldsUi extends StatelessWidget {
  final String? name;
  final bool isPassword;
  final TextEditingController? textController;
  final IconData? icon;
  final Function()? iconButton;
  final String? Function(String)? validator;

  const TextFieldsUi(
      {super.key,
      this.name = 'First name',
      this.isPassword = false,
      this.textController,
      this.icon,
      this.iconButton,
      this.validator});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: isPassword,
      validator: (value) => validator!(value!),
      decoration: InputDecoration(
        suffixIcon: icon == null
            ? null
            : IconButton(
                onPressed: iconButton,
                icon: Icon(icon),
              ),
        label: Text(
          name!,
          style: interFont.copyWith(
            fontSize: res.setSp(20),
          ),
        ),
        errorStyle: const TextStyle(color: Colors.red),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(
            color: Color(0xFFAE64DD),
          ),
        ),
      ),
    );
  }
}
