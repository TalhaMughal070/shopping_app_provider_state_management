import 'package:flutter/material.dart';
import 'package:shopping_app_provider_state_management/colors.dart';

class flexbutton extends StatelessWidget {
  final String title;
  bool loading = false;
  VoidCallback onpress;
  flexbutton(
      {super.key,
      this.title = 'Sign up',
      this.loading = false,
      required this.onpress});

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return InkWell(
      onTap: onpress,
      child: Container(
        height: h * 0.07,
        width: w * .9,
        decoration: BoxDecoration(
            color: clr.orange, borderRadius: BorderRadius.circular(50)),
        child: Center(
            child: loading
                ? const CircularProgressIndicator(
                    strokeWidth: 2,
                  )
                : Text(
                    title,
                    style: const TextStyle(color: Colors.white, fontSize: 16),
                  )),
      ),
    );
  }
}
