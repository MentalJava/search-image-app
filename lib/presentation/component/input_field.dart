import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  final void Function(String value) onValueChange;
  const InputField({super.key, required this.onValueChange});

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: onValueChange,
      decoration: InputDecoration(
        suffixIcon: IconButton(
          onPressed: () {},
          icon: Icon(Icons.search),
          color: Colors.lightBlue,
        ),
        focusColor: Colors.blueGrey,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: Colors.blueGrey),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: Colors.lightBlue),
        ),
      ),
    );
  }
}
