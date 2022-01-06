import 'package:chat/widgets/blue_button.dart';
import 'package:chat/widgets/custom_input.dart';
import 'package:chat/widgets/labels.dart';
import 'package:chat/widgets/logo.dart';
import 'package:flutter/material.dart';

class LogInPage extends StatelessWidget {
  const LogInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xffF2F2F2),
        body: SafeArea(
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: SizedBox(
              height: MediaQuery.of(context).size.height * 0.9,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Logo(
                    title: 'Messenger',
                  ),
                  const _Form(),
                  const Labels(
                    route: 'register',
                    question: 'Don’t have an account yet?',
                    text: 'Create one now!',
                  ),
                  Column(
                    children: const [
                      Text('Terms of service',
                          style: TextStyle(fontWeight: FontWeight.w200)),
                      SizedBox(height: 30)
                    ],
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}

class _Form extends StatefulWidget {
  const _Form({Key? key}) : super(key: key);

  @override
  __FormState createState() => __FormState();
}

class __FormState extends State<_Form> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 40),
      padding: const EdgeInsets.symmetric(horizontal: 50),
      child: Column(
        children: [
          CustomInput(
              icon: Icons.mail_outline,
              hintText: 'Email',
              keyboardType: TextInputType.emailAddress,
              controller: emailController),
          CustomInput(
            icon: Icons.lock_outline,
            hintText: 'Password',
            controller: passwordController,
            isPassword: true,
          ),
          BlueButton(
            text: 'Sign In',
            onPressed: () {
              print(emailController.text);
            },
          )
        ],
      ),
    );
  }
}
