import 'package:csc_picker/csc_picker.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class csc_Picker extends StatefulWidget {
  csc_Picker({Key? key}) : super(key: key);

  @override
  State<csc_Picker> createState() => _csc_PickerState();
}

String countryValue = "";
String stateValue = "";
String cityValue = "";
String address = "";

class _csc_PickerState extends State<csc_Picker> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Column(children: [
        CSCPicker(
          // dropdownDecoration: BoxDecoration(
          //     color: Colors.teal[50], borderRadius: BorderRadius.circular(25)),
          layout: Layout.vertical,
          dropdownHeadingStyle: GoogleFonts.aBeeZee(
              fontSize: 20,
              fontWeight: FontWeight.w700,
              color: Colors.redAccent),
          selectedItemStyle:
              GoogleFonts.abel(fontSize: 18, fontWeight: FontWeight.w500),
          disabledDropdownDecoration:
              BoxDecoration(color: Color.fromARGB(223, 254, 229, 229)),
          showStates: true,
          showCities: true,
          flagState: CountryFlag.ENABLE,
          searchBarRadius: 25,
          defaultCountry: DefaultCountry.India,
          disableCountry: true,
          dropdownDialogRadius: 25,
          onCountryChanged: (value) {},
          onCityChanged: (value) {},
          onStateChanged: (value) {},
        ),
      ]),
    );
  }
}
