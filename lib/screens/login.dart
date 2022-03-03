import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:time_shop/screens/category.dart';
import 'package:time_shop/screens/register.dart';
import 'package:time_shop/styles/colors.dart';
import 'package:time_shop/widgets/default_app_button.dart';
import 'package:time_shop/widgets/default_password_field.dart';
import 'package:time_shop/widgets/default_text_field.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  bool pass = false;

  void visible() {
    setState(() {
      pass = !pass;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: SizedBox(
                  width: 60.w,
                  height: 30.h,
                  child: Image.asset('assets/icons/logo.png'),
                ),
              ),
              SizedBox(
                height: 7.h,
              ),
              const Padding(
                padding: EdgeInsets.only(
                  left: 15,
                ),
                child: Text(
                  'Email',
                  style: TextStyle(fontSize: 20),
                ),
              ),
              Center(
                child: DefaultTextField(
                  controller: email,
                ),
              ),
              SizedBox(
                height: 1.h,
              ),
              const Padding(
                padding: EdgeInsets.only(
                  left: 15,
                ),
                child: Text(
                  'Password',
                  style: TextStyle(fontSize: 20),
                ),
              ),
              Center(
                child: DefaultPasswordField(
                  controller: password,
                  onTap: visible,
                  password: pass,
                ),
              ),
              SizedBox(
                height: 4.h,
              ),
              Center(
                child: DefaultAppButton(
                  text: 'Login',
                  backGround: AppColors.purple,
                  fontSize: 30,
                  height: 7.h,
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const CategoryScreen(),
                    ),
                  ),
                  width: 60.w,
                  textColor: AppColors.white,
                ),
              ),
              SizedBox(
                height: 2.h,
              ),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Don't have Account?",
                      style: TextStyle(
                        fontSize: 15,
                        color: AppColors.black,
                      ),
                    ),
                    SizedBox(
                      width: 2.w,
                    ),
                    InkWell(
                      child: const Text(
                        'Create Account',
                        style: TextStyle(
                          fontSize: 15,
                          color: AppColors.lightPurple,
                        ),
                      ),
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const RegisterScreen(),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
