import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'register2.dart';

class Register1 extends StatefulWidget {
  const Register1({super.key});
  @override
  State createState() => _Register1State();
}

class _Register1State extends State<Register1> {
  static const IconData person = IconData(0xe491, fontFamily: 'MaterialIcons');
  static const IconData email = IconData(0xe22a, fontFamily: 'MaterialIcons');

  TextEditingController fullNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  bool _passwordVisible = false;

  @override
  void dispose() {
    fullNameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    phoneController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                const SizedBox(height: 70),
                Text("Hey there,",
                    style: GoogleFonts.poppins(
                        fontSize: 16, fontWeight: FontWeight.w400)),
                Text("Create an Account",
                    style: GoogleFonts.poppins(
                        fontSize: 20, fontWeight: FontWeight.bold)),
                const SizedBox(height: 20),
                TextField(
                  controller: fullNameController,
                  decoration: const InputDecoration(
                    prefixIcon: Icon(person),
                    labelText: "Full Name",
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      borderSide: BorderSide(color: Colors.grey, width: 2),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      borderSide: BorderSide(
                          color: Color.fromARGB(255, 86, 2, 101), width: 2),
                    ),
                  ),
                ),
                const SizedBox(height: 15),
                IntlPhoneField(
                  controller: phoneController,
                  decoration: const InputDecoration(
                    labelText: 'Phone Number',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      borderSide: BorderSide(color: Colors.grey, width: 2),
                    ),
                  ),
                  initialCountryCode: 'IN',
                  onChanged: (phone) {
                    print(phone.completeNumber);
                  },
                ),
                TextField(
                  controller: emailController,
                  decoration: const InputDecoration(
                    prefixIcon:  Icon(email),
                    labelText: "Email",
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      borderSide: BorderSide(color: Colors.grey, width: 2),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      borderSide: BorderSide(
                          color: Color.fromARGB(255, 86, 2, 101), width: 2),
                    ),
                  ),
                ),
                const SizedBox(height: 15),
                TextField(
                  controller: passwordController,
                  obscureText: !_passwordVisible,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    hintText: 'Enter your password',
                    enabledBorder: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      borderSide: BorderSide(color: Colors.grey, width: 2),
                    ),
                    focusedBorder: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      borderSide: BorderSide(
                          color: Color.fromARGB(255, 86, 2, 101), width: 2),
                    ),
                    suffixIcon: IconButton(
                      icon: Icon(_passwordVisible
                          ? Icons.visibility
                          : Icons.visibility_off),
                      onPressed: () {
                        setState(() {
                          _passwordVisible = !_passwordVisible;
                        });
                      },
                    ),
                  ),
                ),
                const SizedBox(height: 100),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Register2()));
                  },
                  child: Container(
                    height: 60,
                    width: 320,
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        stops: [0.0, 1.0],
                        colors: [
                          Color.fromRGBO(107, 80, 246, 1),
                          Color.fromRGBO(204, 143, 237, 1)
                        ],
                      ),
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: const [
                        BoxShadow(
                            color: Colors.black26,
                            offset: Offset(0, 4),
                            blurRadius: 5.0)
                      ],
                    ),
                    child: Center(
                      child: Text(
                        "Register",
                        style: GoogleFonts.poppins(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Text("Or",
                    style: GoogleFonts.poppins(
                        fontSize: 15, fontWeight: FontWeight.w400)),
                const SizedBox(height: 10),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 60,
                      width: 60,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                      ),
                      child: SvgPicture.asset(
                        "assets/svg/Google.svg",
                        fit: BoxFit.contain,
                      ),
                    ),
                    const SizedBox(width: 10),
                    Container(
                      height: 60,
                      width: 60,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                      ),
                      child: SvgPicture.asset(
                        "assets/svg/facebook.svg",
                        fit: BoxFit.contain,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                RichText(
                  text: TextSpan(
                    text: "Already have an account? ",
                    style: GoogleFonts.poppins(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        color: Colors.black),
                    children: [
                      TextSpan(
                        text: "Login",
                        style: GoogleFonts.poppins(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            color: const Color.fromRGBO(204, 143, 237, 1)),
                        recognizer: TapGestureRecognizer()..onTap = () {},
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
