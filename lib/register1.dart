import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Register1 extends StatefulWidget {
  const Register1({super.key});
  @override
  State createState() => _Register1State();
}

class _Register1State extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        
        child: Column(
          children: [
           const SizedBox(height: 70,),
            Text("Hey there,",
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                )),
            Text("Create an Account",
                style: GoogleFonts.poppins(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                )),
          ],
        ),
      ),
    );
  }
}
