import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:time_shop/screens/login.dart';
import 'package:time_shop/styles/colors.dart';
import 'package:time_shop/widgets/default_app_button.dart';
import 'package:time_shop/widgets/default_password_field.dart';
import 'package:time_shop/widgets/default_text_field.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  TextEditingController firstName = TextEditingController();
  TextEditingController lastName = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController confirmPassword = TextEditingController();
  TextEditingController phone = TextEditingController();

  bool pass = true;
  bool conf = true;

  void visiblePassword() {
    setState(() {
      pass = !pass;
    });
  }
  void confPassword() {
    setState(() {
      conf = !conf;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 30,bottom: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 7.h,bottom: 4.h),
                child: Center(
                  child: Image.asset(
                    'assets/icons/logo.png',
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(
                  left: 15,
                ),
                child: Text(
                  'First Name',
                  style: TextStyle(fontSize: 20),
                ),
              ),
              Center(
                child: DefaultTextField(
                  controller: firstName,
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(
                  left: 15,
                ),
                child: Text(
                  'Last Name',
                  style: TextStyle(fontSize: 20),
                ),
              ),
              Center(
                child: DefaultTextField(
                  controller: lastName,
                ),
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
                  onTap: visiblePassword,
                  password: pass,
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(
                  left: 15,
                ),
                child: Text(
                  'Confirm Password',
                  style: TextStyle(fontSize: 20),
                ),
              ),
              Center(
                child: DefaultPasswordField(
                  controller: confirmPassword,
                  onTap: confPassword,
                  password: conf,
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(
                  left: 15,
                ),
                child: Text(
                  'Phone',
                  style: TextStyle(fontSize: 20),
                ),
              ),
              Center(
                child: DefaultTextField(
                  controller: phone,
                ),
              ),
              SizedBox(
                height: 4.h,
              ),
              Center(
                child: DefaultAppButton(
                  text: 'Register',
                  backGround: AppColors.purple,
                  fontSize: 30,
                  height: 7.h,
                  onTap: () {},
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
                      "Have Account?",
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
                        'Login',
                        style: TextStyle(
                          fontSize: 15,
                          color: AppColors.lightPurple,
                        ),
                      ),
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const LoginScreen(),
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
