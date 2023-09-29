import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:nasa_app/utils/constants.dart';

class NewScreen extends StatelessWidget {
  const NewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            context.go(RouterConstant.rootScreen);
          },
          child: const Text("Go to root Screen"),
        ),
      ),
    );
  }
}
