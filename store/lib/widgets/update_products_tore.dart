import 'package:flutter/material.dart';

class updateproductstore extends StatelessWidget {
  final String labelText;
  final String hintText;
  Function(String)? onchanged;

  updateproductstore({
    super.key,
    required this.labelText,
    required this.hintText,
    Function(String)? onchanged,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: onchanged,
      decoration: InputDecoration(
        labelText: labelText,
        hintText: hintText,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
      ),
    );
  }
}
