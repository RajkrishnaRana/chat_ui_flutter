import 'package:chat_ui/screens/login.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../widgets/text_field.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final formkey = GlobalKey<FormState>();
  String email = "";
  String password = "";
  String fullName = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 80),
          child: Form(
            key: formkey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'CHATBOOK',
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10),
                Text('Create Your account now to chat and explore',
                    style:
                        TextStyle(fontSize: 15, fontWeight: FontWeight.w400)),
                Image.asset('assets/images/reg.jpg'),
                TextFormField(
                  decoration: textInputDecoration.copyWith(
                      labelText: 'Full Name',
                      prefixIcon: Icon(
                        Icons.person,
                        color: Theme.of(context).primaryColor,
                      )),
                  validator: (val) {
                    if (val!.isNotEmpty) {
                      return null;
                    } else {
                      return "Name cannot be empty";
                    }
                  },
                  onChanged: (val) {
                    setState(() {
                      email = val;
                    });
                  },
                ),
                SizedBox(height: 15),
                TextFormField(
                  decoration: textInputDecoration.copyWith(
                      labelText: 'Email',
                      prefixIcon: Icon(
                        Icons.email,
                        color: Theme.of(context).primaryColor,
                      )),
                  validator: (val) {
                    return RegExp(
                                r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                            .hasMatch(val!)
                        ? null
                        : "Please enter a valid email";
                  },
                  onChanged: (val) {
                    setState(() {
                      email = val;
                    });
                  },
                ),
                SizedBox(height: 15),
                TextFormField(
                  decoration: textInputDecoration.copyWith(
                      labelText: 'Password',
                      prefixIcon: Icon(
                        Icons.lock,
                        color: Theme.of(context).primaryColor,
                      )),
                  validator: (val) {
                    if (val!.length < 6) {
                      return "Password must be at least 6 characters";
                    } else {
                      return null;
                    }
                  },
                  onChanged: (val) {
                    setState(() {
                      password = val;
                    });
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Theme.of(context).primaryColor,
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30))),
                    child: const Text(
                      'Register',
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                    onPressed: () {
                      register();
                    },
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text.rich(TextSpan(
                    text: "Already have an account?  ",
                    style: const TextStyle(color: Colors.grey, fontSize: 14),
                    children: <TextSpan>[
                      TextSpan(
                          text: 'Login now',
                          style: const TextStyle(color: Colors.black),
                          recognizer: TapGestureRecognizer()
                            ..onTap = (() {
                              nextScreen(context, const MyLogin());
                            }))
                    ]))
              ],
            ),
          ),
        ),
      ),
    );
  }

  register() {
    if (formkey.currentState!.validate()) {}
  }
}
