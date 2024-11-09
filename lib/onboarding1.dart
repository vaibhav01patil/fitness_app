import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'onboarding2.dart';

class Onboarding1 extends StatelessWidget {
  const Onboarding1({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SvgPicture.asset(
            "assets/svg/Frame.svg",
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.contain,
          ),
          const SizedBox(height: 30,),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Track Your Goal",
                style: GoogleFonts.poppins(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.black
                ),),
                const SizedBox(height:20 ,),
                Text("Don't worry if you have trouble determining your goals, We can help you determine your goals and track your goals",
                style: GoogleFonts.poppins(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: const Color.fromRGBO(182,180,194,1),
                ),),
              ],
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.push(context,
          MaterialPageRoute(builder:(context)=>const Onboarding2()),
          );
        },
        backgroundColor:const Color.fromRGBO(107,80,210,0.6),
         shape: RoundedRectangleBorder(
         borderRadius: BorderRadius.circular(48),
         ),
        child: const Icon(Icons.arrow_forward_ios_rounded),
        
         
      ),
    );
    
  }
}
