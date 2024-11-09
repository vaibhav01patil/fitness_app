import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'welcome2.dart';

class FitnessAppUI extends StatefulWidget {
  const FitnessAppUI({super.key});

  @override
  State createState() => _FitnessAppUIState();
}

class _FitnessAppUIState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 330,),
            Text(
              "DIDPOOLFit",
              style: GoogleFonts.poppins(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: const Color.fromRGBO(107, 80, 246, 1)),
            ),
            Text(
              "Everybody Can Train",
              style: GoogleFonts.poppins(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: const Color.fromRGBO(182, 180, 194, 1)),
            ),
            const SizedBox(height: 280,),
            GestureDetector(
              onTap: () {
                 Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const Welcome2()),
            );
              },
              child: Container(
                height: 50,
                width: 320,
                decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      stops: [0.0, 1.0],
                      colors: [
                         Color.fromRGBO(107, 80, 246, 1),
                        Color.fromRGBO(204, 143, 237, 1),
                       
                      ],
                    ),
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: const [
                      BoxShadow(
                          color: Colors.black26,
                          offset: Offset(0, 4),
                          blurRadius: 5.0)
                    ]),
                child: Center(
                  child: Text(
                    "Get Started",
                    style: GoogleFonts.poppins(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
