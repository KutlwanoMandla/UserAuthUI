import 'package:flutter/material.dart';
import './signup_page.dart';
import './forgot_password_page.dart';

class LogInPage extends StatefulWidget {
  const LogInPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _LogInPageState createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
  final _formKey = GlobalKey<FormState>();
  String? _username;
  bool? _isClicked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.fromLTRB(20.0, 100.0, 20.0, 20.0),
              child: Text(
                'Hi, Welcome back!',
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                  // decoration: TextDecoration.underline,
                  // decorationStyle: TextDecorationStyle.solid,
                ),
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Form(
              key: _formKey,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Enter username',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        prefixIcon: const Icon(Icons.person),
                        labelStyle: const TextStyle(
                          fontSize: 25.0,
                          // fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      onSaved: (value) {
                        _username = value;
                      },
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "please enter username";
                        }
                        return null;
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Enter password',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        prefixIcon: const Icon(Icons.key),
                        labelStyle: const TextStyle(
                          fontSize: 25.0,
                          // fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "please enter your password";
                        }
                        return null;
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 5.0,
                  ),
                  ListTile(
                    title: const Text(
                      'Remember me',
                      style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.purple,
                      ),
                    ),
                    leading: Checkbox(
                      value: _isClicked,
                      onChanged: (value) {
                        setState(() {
                          _isClicked = value!;
                        });
                      },
                    ),
                    trailing: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const ForgotPasswordPage()));
                      },
                      child: const Text(
                        'forgot password?',
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.green,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        _formKey.currentState!.save();
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      backgroundColor: Colors.blue,
                      foregroundColor: Colors.white,
                      fixedSize: const Size(300.0, 50.0),
                    ),
                    child: const Text(
                      'Sign In',
                      style: TextStyle(
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Don't have an Account?",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0,
                        ),
                      ),
                      const SizedBox(
                        width: 20.0,
                      ),
                      MouseRegion(
                        cursor: SystemMouseCursors.click,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const SignUpPage()));
                          },
                          child: const Text(
                            'Sign Up',
                            style: TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.bold,
                              fontSize: 20.0,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 30.0,
                  ),
                  const Row(
                    children: [
                      Expanded(
                        child: Divider(
                          color: Colors.black,
                          thickness: 2,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10.0),
                        child: Text(
                          'Or continue with',
                          style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Divider(
                          color: Colors.black,
                          thickness: 2,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: ClipOval(
                          child: Image.asset(
                            './images/facebook.png',
                            width: 50.0,
                            height: 50.0,
                          ),
                        ),
                      ),
                      Expanded(
                        child: ClipOval(
                          child: Image.asset(
                            './images/google.png',
                            width: 50.0,
                            height: 50.0,
                          ),
                        ),
                      ),
                      Expanded(
                          child: ClipOval(
                        child: Image.asset(
                          './images/twitter.png',
                          width: 50.0,
                          height: 50.0,
                        ),
                      )),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30.0,
            ),
          ],
        ),
      ),
    );
  }
}
