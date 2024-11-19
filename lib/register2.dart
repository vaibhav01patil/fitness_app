import 'package:fitness_app/register3.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class Register2 extends StatefulWidget {
  const Register2({super.key});
  @override
  State createState() => _Register2State();
}

class _Register2State extends State {
  TextEditingController genderController = TextEditingController();
  TextEditingController dateOfBirthController = TextEditingController();
  TextEditingController weightController = TextEditingController();
  TextEditingController heightController = TextEditingController();

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000), 
      lastDate: DateTime.now(), 
    );
    if (pickedDate != null) {
      setState(() {
        dateOfBirthController.text = "${pickedDate.toLocal()}"
            .split(' ')[0]; 
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            SvgPicture.asset("assets/svg/VectorSection.svg",
                fit: BoxFit.contain),
            const SizedBox(
              height: 10,
            ),
            Text(
              "Let’s complete your profile",
              style: GoogleFonts.poppins(
                  fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text(
              "It will help us to know more about you!",
              style: GoogleFonts.poppins(
                  fontSize: 15, fontWeight: FontWeight.w400),
            ),
            const SizedBox(
              height: 10,
            ),
            DropdownButtonFormField<String>(
              decoration: const InputDecoration(
                  labelText: "Gender",
                  labelStyle: TextStyle(color: Colors.grey),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    borderSide: BorderSide(
                        color: Color.fromARGB(255, 86, 2, 101), width: 2),
                  ),
                  prefixIcon: Icon(Icons.person, color: Colors.grey)),
              value:
                  genderController.text.isEmpty ? null : genderController.text,
              items: ["Male", "Female", "Others"].map((String gender) {
                return DropdownMenuItem<String>(
                  value: gender,
                  child: Text(gender),
                );
              }).toList(),
              onChanged: (String? newValue) {
                setState(() {
                  genderController.text = newValue!;
                });
              },
              validator: (value) =>
                  value == null ? 'Please select a gender' : null,
            ),
            const SizedBox(
              height: 10,
            ),
            TextFormField(
              controller: dateOfBirthController,
              decoration: const InputDecoration(
                labelText: "Date of Birth",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  borderSide: BorderSide(
                      color: Color.fromARGB(255, 86, 2, 101), width: 2),
                ),
                prefixIcon: Icon(Icons.calendar_today,
                    color: Colors.grey), 
                hintText: "YYYY-MM-DD", 
              ),
              keyboardType: TextInputType.datetime, 
              onTap: () async {
                FocusScope.of(context).requestFocus(
                    FocusNode()); 
                await _selectDate(context); 
              },
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your date of birth';
                }
                return null;
              },
            ),
            const SizedBox(
              height: 10,
            ),
            TextFormField(
              controller: weightController,
              decoration: const InputDecoration(
                labelText: "Weight (kg)",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  borderSide: BorderSide(
                      color: Color.fromARGB(255, 86, 2, 101), width: 2),
                ),
                prefixIcon: Icon(Icons.monitor_weight_outlined, color: Colors.grey),
                hintText: "Enter your weight",
              ),
              keyboardType: TextInputType.number,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your weight';
                }
                return null;
              },
            ),
            const SizedBox(height: 10),

            
            TextFormField(
              controller: heightController,
              decoration: const InputDecoration(
                labelText: "Height (cm)",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  borderSide: BorderSide(
                      color: Color.fromARGB(255, 86, 2, 101), width: 2),
                ),
                prefixIcon: Icon(Icons.height, color: Colors.grey),
                hintText: "Enter your height ",
              ),
              keyboardType: TextInputType.number,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your height';
                }
                return null;
              },
            ),
            const SizedBox(height: 5,),
             GestureDetector(
                   onTap: () {
                         Navigator.push(context,MaterialPageRoute(builder: (context) => const Register3()),
                      );
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
                        "Next",
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
    ));
  }
}
