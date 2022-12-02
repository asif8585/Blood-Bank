import 'package:b_bank/widgets/cscPicker.dart';
import 'package:b_bank/widgets/genderPicker.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class donor_registration extends StatefulWidget {
  donor_registration({Key? key}) : super(key: key);

  @override
  State<donor_registration> createState() => _donor_registrationState();
}

class _donor_registrationState extends State<donor_registration> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
        "Add Donor",
        style: GoogleFonts.aBeeZee(),
      )),
      body: SingleChildScrollView(
        child: Column(
          children: [
            //uhid no
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 12, left: 16),
                    child: Icon(
                      Icons.unarchive_outlined,
                      size: 28,
                    ),
                  ),
                  Expanded(
                      child: TextFormField(
                    decoration: InputDecoration(
                        labelText: "UHID NO.",
                        labelStyle: GoogleFonts.aBeeZee(),
                        hintText: "Lovely 9126 XXXX XXXX ",
                        hintStyle: GoogleFonts.acme(color: Colors.black38),
                        border: InputBorder.none),
                  )),
                ],
              ),
            ),
            //person name
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 12, left: 16),
                    child: Icon(
                      Icons.person_outline,
                      size: 28,
                    ),
                  ),
                  Expanded(
                      child: TextFormField(
                    decoration: InputDecoration(
                        labelText: "Patient Name",
                        labelStyle: GoogleFonts.aBeeZee(),
                        hintText: "Lovely Singh",
                        hintStyle: GoogleFonts.acme(color: Colors.black38),
                        border: InputBorder.none),
                  )),
                ],
              ),
            ),
            // guardian name

            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 12, left: 16),
                    child: Icon(
                      Icons.person_outline,
                      size: 28,
                    ),
                  ),
                  Expanded(
                      child: TextFormField(
                    decoration: InputDecoration(
                        labelText: "Guardian Name",
                        labelStyle: GoogleFonts.aBeeZee(),
                        hintText: "Diljeet Singh",
                        hintStyle: GoogleFonts.acme(color: Colors.black38),
                        border: InputBorder.none),
                  )),
                ],
              ),
            ),

            // mother name
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 12, left: 16),
                    child: Icon(
                      Icons.person_outline,
                      size: 28,
                    ),
                  ),
                  Expanded(
                      child: TextFormField(
                    decoration: InputDecoration(
                        labelText: "Mother Name",
                        labelStyle: GoogleFonts.aBeeZee(),
                        hintText: "Susmita ",
                        hintStyle: GoogleFonts.acme(color: Colors.black38),
                        border: InputBorder.none),
                  )),
                ],
              ),
            ),

            //mobile
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 12, left: 16),
                    child: Icon(
                      Icons.phone_android_outlined,
                      size: 28,
                    ),
                  ),
                  Expanded(
                      child: TextFormField(
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                        labelText: "Mobile",
                        labelStyle: GoogleFonts.aBeeZee(),
                        hintText: "8585XXXX70",
                        hintStyle: GoogleFonts.acme(color: Colors.black38),
                        border: InputBorder.none),
                  ))
                ],
              ),
            ),

            // email

            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 12, left: 16),
                    child: Icon(
                      Icons.mail_outlined,
                      size: 28,
                    ),
                  ),
                  Expanded(
                      child: TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                        labelText: "Email",
                        labelStyle: GoogleFonts.aBeeZee(),
                        hintText: "abc@gmail.com",
                        hintStyle: GoogleFonts.acme(color: Colors.black38),
                        border: InputBorder.none),
                  ))
                ],
              ),
            ),
            //address
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 12, left: 16),
                    child: Icon(
                      Icons.location_on_outlined,
                      size: 28,
                    ),
                  ),
                  Expanded(
                      child: TextFormField(
                    decoration: InputDecoration(
                        labelText: "Address",
                        labelStyle: GoogleFonts.aBeeZee(),
                        hintText: "H.no 227,street 1,karol bagh",
                        hintStyle: GoogleFonts.acme(color: Colors.black38),
                        border: InputBorder.none),
                  ))
                ],
              ),
            ),
            csc_Picker(),
            SizedBox(
              height: 50,
              width: 400,
              child: selectGender(),
            ),
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Icon(
                            Icons.calendar_month_outlined,
                            size: 28,
                          ),
                        ),
                        Expanded(
                            child: TextFormField(
                          decoration: InputDecoration(
                              labelText: "DOB",
                              labelStyle: GoogleFonts.aBeeZee(),
                              hintText: "12/07/2022",
                              hintStyle:
                                  GoogleFonts.acme(color: Colors.black38),
                              border: InputBorder.none),
                        )),
                      ],
                    ),
                  ),
                ),

                // weight
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 12, left: 16),
                          child: Icon(
                            Icons.monitor_weight_outlined,
                            size: 28,
                          ),
                        ),
                        Expanded(
                            child: TextFormField(
                          decoration: InputDecoration(
                              labelText: "Weight",
                              labelStyle: GoogleFonts.aBeeZee(),
                              hintText: "178 Kg",
                              hintStyle:
                                  GoogleFonts.acme(color: Colors.black38),
                              border: InputBorder.none),
                        ))
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
