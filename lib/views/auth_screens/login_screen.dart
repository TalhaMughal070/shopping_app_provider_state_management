import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shopping_app_provider_state_management/colors.dart';
import 'package:shopping_app_provider_state_management/views/auth_screens/forgot_password.dart';
import 'package:shopping_app_provider_state_management/views/widgets/flexbutton.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
                  'Log in',
                  style: TextStyle(fontSize: 32, fontWeight: FontWeight.w600),
                ),
              ),
              SizedBox(
                height: h * 0.08,
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
                height: h * 0.015,
              ),
              //password input
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
                            'Password',
                            style: TextStyle(color: Colors.grey),
                          ),
                          border: InputBorder.none,
                          suffixIcon: Icon(
                            Icons.check,
                            color: Colors.green,
                          )),
                    ),
                  ),
                ),
              ),

              SizedBox(
                height: h * 0.005,
              ),
              //Already have an account
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const Text('Forgot your password?'),
                  IconButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ForgotPassword()));
                      },
                      icon: const Icon(
                        Icons.arrow_forward_outlined,
                        color: clr.orange,
                      ))
                ],
              ),
              SizedBox(
                height: h * .03,
              ),
              //login button
              flexbutton(
                title: 'LOG IN',
                onpress: () {},
              ),
              SizedBox(
                height: h * .19,
              ),
              // login  with social account

              Column(
                children: [
                  const Text('or log up with social account'),
                  SizedBox(
                    height: h * .01,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: h * 0.08,
                        width: w * .2,
                        child: InkWell(
                          onTap: () {},
                          child: Card(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12)),
                            child: Center(
                              child: Image.asset(
                                'assets/go.png',
                                height: 30,
                                width: 30,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: h * 0.08,
                        width: w * .2,
                        child: InkWell(
                          onTap: () {},
                          child: Card(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12)),
                            child: Center(
                              child: Image.asset(
                                'assets/fb.png',
                                height: 30,
                                width: 30,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              )

              //login with google and facebook
            ],
          ),
        ),
      ),
    );
  }
}
