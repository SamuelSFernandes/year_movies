import 'package:flutter/material.dart';

class TextFormFieldWidget extends StatelessWidget {
  final VoidCallback? onTap;
  final TextInputType keyboardType;
  final Icon? suffixIcon;
  final String hintText;
  const TextFormFieldWidget({
    required this.hintText,
    this.onTap,
    this.suffixIcon,
    this.keyboardType = TextInputType.text,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      onTap: onTap,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(50),
          borderSide: const BorderSide(color: Colors.white),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(50),
          borderSide: const BorderSide(color: Colors.white),
        ),
        suffixIcon: suffixIcon,
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 25,
          vertical: 15,
        ),
        hintText: hintText,
      ),
    );
  }
}
