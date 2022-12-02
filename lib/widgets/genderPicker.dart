import 'package:flutter/material.dart';
import 'package:gender_picker/gender_picker.dart';
import 'package:gender_picker/source/enums.dart';
import 'package:google_fonts/google_fonts.dart';

class selectGender extends StatefulWidget {
  selectGender({Key? key}) : super(key: key);

  @override
  State<selectGender> createState() => _selectGenderState();
}

class _selectGenderState extends State<selectGender> {
  @override
  Widget build(BuildContext context) {
    return GenderPickerWithImage(
      onChanged: ((value) {}),
      showOtherGender: true,
      selectedGenderTextStyle:
          GoogleFonts.aBeeZee(fontSize: 22, fontWeight: FontWeight.w500),
      unSelectedGenderTextStyle: GoogleFonts.aBeeZee(fontSize: 15),
      opacityOfGradient: 0.4,
    );
  }
}
