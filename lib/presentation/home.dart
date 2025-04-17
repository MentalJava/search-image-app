import 'package:flutter/material.dart';
import 'package:search_image_app/presentation/component/input_field.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Search Image'), centerTitle: true),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          children: [
            InputField(
              onValueChange: (value) {
                print(value);
              },
            ),
          ],
        ),
      ),
    );
  }
}
