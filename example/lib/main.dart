import 'package:flutter/material.dart';
import 'package:custom_checkbox/custom_checkbox.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Custom Checkbox Example',
      home: Scaffold(
        appBar: AppBar(title: const Text('Custom Checkbox Example')),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 20),
              CustomCheckbox(
                isAnimated: false,
                borderRadius: 25,
                activeColor: Colors.green,
                animationDuration: const Duration(seconds: 3),
                checkColor: Colors.white,
                inactiveColor: Colors.red,
                shape: CheckboxShape.circle,

                onChanged: (newValue) {},
                label: 'Accept Terms',

                labelStyle: const TextStyle(fontSize: 18),
                size: 30,
              ),
              const SizedBox(height: 20),
              CustomCheckbox(
                isAnimated: true,
                borderRadius: 20,
                activeColor: Colors.green,
                animationDuration: const Duration(seconds: 1),
                checkColor: Colors.white,
                inactiveColor: Colors.black,
                shape: CheckboxShape.rounded,

                onChanged: (newValue) {},
                label: 'Accept Terms',

                labelStyle: const TextStyle(fontSize: 18),
                size: 50,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
