import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  final void Function(String value) onValueChange;
  final TextEditingController textEditingController;

  const InputField({
    super.key,
    required this.onValueChange,
    required this.textEditingController,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: textEditingController,
      decoration: InputDecoration(
        suffixIcon: IconButton(
          onPressed: () {
            onValueChange(textEditingController.text);
          },
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
