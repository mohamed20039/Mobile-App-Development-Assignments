import 'package:bmi_calculator/components/calculate_button.dart';
import 'package:bmi_calculator/components/textFeild.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  final weightController = TextEditingController();
  final heightController = TextEditingController();
  @override
  void CalculateBmi() => {print("Hello World")};

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Body Mass Index',
          style: GoogleFonts.poppins(
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              // TextFeild for the Height
              SizedBox(
                height: 130,
              ),
              BmiTextFeild(
                controller: weightController,
                hintText: "Enter Weight In Kg",
              ),

              SizedBox(
                height: 20,
              ),
              // TextFeild for the Weight
              BmiTextFeild(
                controller: heightController,
                hintText: "Enter Height In Cm",
              ),

              SizedBox(
                height: 20,
              ),
              // Calculate button
              CalculateButton(
                onTap: CalculateBmi,
              )
              // SHOW CASE THE BMI
            ],
          ),
        ),
      ),
    );
  }
}
