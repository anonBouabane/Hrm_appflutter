import 'package:flutter/material.dart';
import 'package:hrm/util/images/images.dart';
import 'package:hrm/util/style.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

bool _isObScured = true;

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: const Scaffold(body: FormLogin()));
  }
}

//=============>>>> form login <<<<============

class FormLogin extends StatefulWidget {
  const FormLogin({super.key});

  @override
  State<FormLogin> createState() => _FormLoginState();
}

class _FormLoginState extends State<FormLogin> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            Images.loginLogo,
            scale: 2,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 15),
            child: Container(
              height: 50,
              width: MediaQuery.of(context).size.width / 1.4,
              decoration: const BoxDecoration(
                  color: Styles.colrWhite,
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: TextFormField(
                style: Styles.txtRegularblack,
                decoration: const InputDecoration(
                    contentPadding: EdgeInsets.symmetric(horizontal: 7),
                    border: InputBorder.none,
                    label: Text(
                      'Username',
                      style: Styles.txtRegularGrey,
                    )),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Container(
              height: 50,
              width: MediaQuery.of(context).size.width / 1.4,
              decoration: const BoxDecoration(
                  color: Styles.colrWhite,
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: TextFormField(
                obscureText: _isObScured,
                style: Styles.txtRegularblack,
                decoration: const InputDecoration(
                  contentPadding: EdgeInsets.symmetric(horizontal: 7),
                  border: InputBorder.none,
                  label: Text(
                    'Password',
                    style: Styles.txtRegularGrey,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed('/register');
                    },
                    child: const Text(
                      'Create an account?',
                      style: Styles.txtRegularBlue,
                    ))
              ],
            ),
          ),
          Container(
            height: 50,
            width: MediaQuery.of(context).size.width / 1.4,
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(15)),
                color: Colors.blue),
            child: InkWell(
              onTap: () {
                Navigator.pushNamed(context, '/dashboard');
              },
              child: const Center(
                  child: Text(
                'Login',
                style: Styles.txtTitleWhite,
              )),
            ),
          ),
        ],
      ),
    );
  }
}
