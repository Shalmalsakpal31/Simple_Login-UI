import 'package:flutter/material.dart';
import 'package:simple_login_ui/ui/login.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: size.height,
        width: size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              "assets/images/Illustration-Transparent-HQ.png",
              height: 240,
              width: 350,
              fit: BoxFit.cover,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20.0, right: 20.0),
              child: Text(
                "Sign up",
                style: TextStyle(
                    color: Colors.black87,
                    fontWeight: FontWeight.w500,
                    fontSize: 40.0),
              ),
            ),
            Column(
              children: <Widget>[
                const Textfield(
                  hinttext: "Email Id",
                  icon: Icons.email_outlined,
                ),
                const Textfield(
                  hinttext: "Full Name",
                  icon: Icons.person_2_outlined,
                ),
                const Textfield(
                  hinttext: "Mobile No.",
                  icon: Icons.phone_android_outlined,
                ),
                const Textfield(
                  hinttext: "Password",
                  icon: Icons.password_outlined,
                  obscure: true,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, top: 6),
                  child: RichText(
                      maxLines: 2,
                      text: const TextSpan(
                          style: TextStyle(color: Colors.grey, fontSize: 15),
                          children: [
                            TextSpan(
                                text: "By signing of you're agree to our "),
                            TextSpan(
                                style: TextStyle(color: Colors.blue),
                                text: "Terms & Conditions "),
                            TextSpan(text: "and "),
                            TextSpan(
                                style: TextStyle(color: Colors.blue),
                                text: " Privacy Policy"),
                          ])),
                )
              ],
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 18.0, vertical: 10.0),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.blueAccent,
                        borderRadius: BorderRadius.circular(8)),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: InkWell(
                          onTap: () {
                            Navigator.pop(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Login_page()));
                          },
                          child: const Text(
                            "Continue",
                            style: TextStyle(
                                color: Colors.white70,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Already have Account?"),
                    Padding(
                      padding: const EdgeInsets.only(left: 3.0),
                      child: InkWell(
                        onTap: () {
                          Navigator.pop(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Login_page()));
                        },
                        child: const Text(
                          "Login",
                          style: TextStyle(
                              color: Colors.blueAccent,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

class Textfield extends StatelessWidget {
  final String hinttext;
  final IconData icon;
  final bool? obscure;

  const Textfield({
    super.key,
    required this.hinttext,
    required this.icon,
    this.obscure,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 4),
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(20)),
        child: TextField(
          decoration: InputDecoration(
              prefixIcon: Icon(icon),
              hintText: hinttext,
              border: InputBorder.none),
        ),
      ),
    );
  }
}
