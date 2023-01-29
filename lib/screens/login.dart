import 'package:chat_ui/screens/register.dart';
import 'package:chat_ui/widgets/text_field.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class MyLogin extends StatefulWidget {
  const MyLogin({super.key});

  @override
  State<MyLogin> createState() => _MyLoginState();
}

class _MyLoginState extends State<MyLogin> {
  final TextEditingController _emailc = TextEditingController();
  final TextEditingController _passwordc = TextEditingController();
  final formkey = GlobalKey<FormState>();
  String email = "";
  String password = "";

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
                Text('Ready to make friends online through your conversation!',
                    style:
                        TextStyle(fontSize: 15, fontWeight: FontWeight.w400)),
                Image.asset('assets/images/Login.jpg'),
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
                  height: 40,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Theme.of(context).primaryColor,
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30))),
                    child: const Text(
                      'Sign In',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    onPressed: () {
                      login();
                    },
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text.rich(TextSpan(
                    text: "Dont't have an account?  ",
                    style: const TextStyle(color: Colors.grey, fontSize: 14),
                    children: <TextSpan>[
                      TextSpan(
                          text: 'Register here',
                          style: const TextStyle(color: Colors.black),
                          recognizer: TapGestureRecognizer()
                            ..onTap = (() {
                              nextScreen(context, const Register());
                            }))
                    ]))
              ],
            ),
          ),
        ),
      ),
    );
  }

  login() {
    if (formkey.currentState!.validate()) {}
  }
}
