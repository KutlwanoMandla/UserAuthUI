import 'package:flutter/material.dart';
import './login_page.dart';
import './signup_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Authentication App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.blueGrey,
        ),
      ),
      darkTheme: ThemeData.dark(),
      home: const Scaffold(
        body: MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const ClipOval(
              // clipper: MyClipper(),
              child: Image(
                image: AssetImage(
                  './images/login.png',
                ),
                height: 300.0,
                width: 300.0,
              ),
            ),
            const SizedBox(
              height: 30.0,
            ),
            Container(
              child: Column(
                children: [
                  const Text(
                    'Welcome',
                    style: TextStyle(
                      fontSize: 30.0,
                      fontStyle: FontStyle.italic,
                      shadows: [
                        Shadow(
                          blurRadius: 3.0,
                          color: Colors.brown,
                          offset: Offset(2.0, 2.0),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  const Text(
                    'To',
                    style: TextStyle(
                      fontSize: 30.0,
                      fontStyle: FontStyle.italic,
                      shadows: [
                        Shadow(
                          blurRadius: 3.0,
                          color: Colors.green,
                          offset: Offset(2.0, 2.0),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  RichText(
                    text: TextSpan(
                      children: [
                        const TextSpan(
                          text: 'KM',
                          style: TextStyle(
                            fontSize: 30.0,
                            color: Colors.black,
                            fontStyle: FontStyle.italic,
                            shadows: [
                              Shadow(
                                blurRadius: 3.0,
                                color: Colors.yellow,
                                offset: Offset(2.0, 2.0),
                              ),
                            ],
                          ),
                        ),
                        WidgetSpan(
                          child: Transform.translate(
                            offset: const Offset(0, -8),
                            child: const Text(
                              ' 2',
                              textScaleFactor: 0.7,
                              style: TextStyle(
                                fontSize: 30.0,
                                color: Colors.blue,
                                fontWeight: FontWeight.bold,
                                fontStyle: FontStyle.italic,
                              ),
                            ),
                          ),
                        ),
                        const TextSpan(
                          text: ' Solutions',
                          style: TextStyle(
                            fontSize: 30.0,
                            color: Colors.black,
                            fontStyle: FontStyle.italic,
                            shadows: [
                              Shadow(
                                blurRadius: 3.0,
                                color: Colors.red,
                                offset: Offset(2.0, 2.0),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SignUpPage()));
              },
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                backgroundColor: Colors.blue,
                foregroundColor: Colors.white,
              ),
              child: const Text(
                'Get Started',
                style: TextStyle(fontSize: 20.0),
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            // Expanded(
            // child:
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Already have an Account?",
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
                              builder: (context) => const LogInPage()));
                    },
                    child: const Text(
                      'Sign In',
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
          ],
        ),
      ),
    );
  }
}

class MyClipper extends CustomClipper<Rect> {
  @override
  Rect getClip(Size size) {
    return const Rect.fromLTWH(50, 50, 300, 300);
  }

  @override
  bool shouldReclip(covariant CustomClipper<Rect> oldClipper) {
    return false;
  }
}
