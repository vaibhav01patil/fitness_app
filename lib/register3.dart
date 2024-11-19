import 'package:fitness_app/workout.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class Register3 extends StatefulWidget {
  const Register3({super.key});

  @override
  State createState() => _Register3State();
}

class _Register3State extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 80,
              ),
              Text(
                "What is your goal ?",
                style: GoogleFonts.poppins(
                    fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                "It will help us to choose a best ",
                style: GoogleFonts.poppins(
                    fontSize: 12, fontWeight: FontWeight.w400),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                "program for you",
                style: GoogleFonts.poppins(
                    fontSize: 12, fontWeight: FontWeight.w400),
              ),
              const SizedBox(
                height: 20,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    SvgPicture.asset(
                      "assets/svg/CardGoals.svg",
                      fit: BoxFit.contain,
                    ),
                    SvgPicture.asset(
                      "assets/svg/CardGoals2.svg",
                      fit: BoxFit.contain,
                    ),
                    SvgPicture.asset(
                      "assets/svg/CardGoals3.svg",
                      fit: BoxFit.contain,
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Workout()));
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
                      "Confirm",
                      style: GoogleFonts.poppins(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
