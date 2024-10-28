import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shopping_app_provider_state_management/views/visual_search/visual_search_screen.dart';
import 'package:shopping_app_provider_state_management/widgets/flexbutton.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(CupertinoIcons.back),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: w * .04),
          child: Column(
            children: [
              SizedBox(
                height: h * 0.01,
              ),
              const Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Forgot password',
                  style: TextStyle(fontSize: 32, fontWeight: FontWeight.w600),
                ),
              ),
              SizedBox(
                height: h * 0.08,
              ),
              const Text(
                  'Please enter your email address.you will receive a link to create new password via email'),
              SizedBox(
                height: h * .03,
              ),
              //email input
              Align(
                alignment: Alignment.topLeft,
                child: Container(
                  height: h * 0.08,
                  width: w * 0.9,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: w * .05),
                    child: TextFormField(
                      decoration: const InputDecoration(
                          label: const Text(
                            'Email',
                            style: TextStyle(color: Colors.grey),
                          ),
                          border: InputBorder.none,
                          hintText: 'abc@gmail.com',
                          hintStyle: TextStyle(color: Colors.black45),
                          suffixIcon: Icon(
                            Icons.check,
                            color: Colors.green,
                          )),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: h * .05,
              ),
              //login button
              flexbutton(
                title: 'SEND',
                onpress: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => VisualSearchScreen()));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
