import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class myDOB_Picker extends StatefulWidget {
  const myDOB_Picker({Key? key}) : super(key: key);

  @override
  State<myDOB_Picker> createState() => _myDOB_PickerState();
}

class _myDOB_PickerState extends State<myDOB_Picker> {
  DateTime _dateTime = DateTime(2022);
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text(
          "DOB:",
          style: GoogleFonts.aBeeZee(fontSize: 16, fontWeight: FontWeight.w700),
        ),
        Text(
          "${_dateTime.day}/${_dateTime.month}/${_dateTime.year}",
          style: GoogleFonts.aBeeZee(fontSize: 16, fontWeight: FontWeight.w600),
        ),
        IconButton(
            onPressed: (() async {
              DateTime? _newDate = await showDatePicker(
                  context: context,
                  initialDate: _dateTime,
                  firstDate: DateTime(2000),
                  lastDate: DateTime(2030));

              if (_newDate != null) {
                setState(() {
                  _dateTime = _newDate;
                });
              }
            }),
            icon: Icon(Icons.date_range_outlined))
      ],
    );
  }
}
