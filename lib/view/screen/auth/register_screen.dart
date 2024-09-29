import 'package:flutter/material.dart';
import 'package:hrm/util/images/images.dart';
import 'package:hrm/util/style.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

bool _isObscured = true;

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: const Scaffold(
        body: FormRegister(),
      ),
    );
  }
}

//==============>>>> register form<<<<<==============
class FormRegister extends StatefulWidget {
  const FormRegister({super.key});

  @override
  State<FormRegister> createState() => _FormRegisterState();
}

class _FormRegisterState extends State<FormRegister> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 90),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            Images.logoRegister,
            scale: 1.2,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
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
                      'Enter your username',
                      style: Styles.txtRegularGrey,
                    )),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
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
                      'Enter phone number',
                      style: Styles.txtRegularGrey,
                    )),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: Container(
              height: 50,
              width: MediaQuery.of(context).size.width / 1.4,
              decoration: const BoxDecoration(
                  color: Styles.colrWhite,
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: TextFormField(
                obscureText: _isObscured,
                style: Styles.txtRegularblack,
                decoration: const InputDecoration(
                    contentPadding: EdgeInsets.symmetric(horizontal: 7),
                    border: InputBorder.none,
                    label: Text(
                      'Enter password',
                      style: Styles.txtRegularGrey,
                    )),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: Container(
              height: 50,
              width: MediaQuery.of(context).size.width / 1.4,
              decoration: const BoxDecoration(
                  color: Styles.colrWhite,
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: TextFormField(
                obscureText: _isObscured,
                style: Styles.txtRegularblack,
                decoration: const InputDecoration(
                  label: Text(
                    'Confirm password',
                    style: Styles.txtRegularGrey,
                  ),
                  contentPadding: EdgeInsets.symmetric(horizontal: 7),
                  border: InputBorder.none,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
                decoration: const BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                height: 35,
                width: MediaQuery.of(context).size.width / 1.4,
                child: InkWell(
                  onTap: () {},
                  child: const Center(
                    child: Text(
                      "Register",
                      style: Styles.txtTitleWhite,
                    ),
                  ),
                )),
          ),
          const Divider(
            endIndent: 30,
            indent: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed('/login');
                  },
                  child: const Text('already have an account')),
            ],
          )
        ],
      ),
    );
  }
}
