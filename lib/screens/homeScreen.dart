import 'package:b_bank/screens/donor_registraion.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Home_Screen extends StatefulWidget {
  Home_Screen({Key? key}) : super(key: key);

  @override
  State<Home_Screen> createState() => _Home_ScreenState();
}

class _Home_ScreenState extends State<Home_Screen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          // blood bank text heasing container
          Container(
            width: MediaQuery.of(context).size.width * 1,
            height: MediaQuery.of(context).size.height * 0.19,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(25),
                  bottomRight: Radius.circular(25)),
              color: Colors.redAccent[200],
            ),
            child: Center(
              child: Text(
                "Blood Bank",
                style: GoogleFonts.oswald(fontSize: 59, color: Colors.white),
              ),
            ),
          ),
          ////////////////////////////////////////////

          Expanded(
            child: GridView.count(
              primary: false,
              padding: const EdgeInsets.all(20),
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              crossAxisCount: 2,
              children: <Widget>[
                // donor registraion container
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => donor_registration()));
                  },
                  child: Container(
                    child: Card(
                      elevation: 10,
                      shadowColor: Colors.redAccent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(
                            Icons.person,
                            size: 50,
                            color: Colors.black45,
                          ),
                          Text(
                            "Donor Registration",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.ubuntu(
                              fontSize: 22,
                              fontWeight: FontWeight.w500,
                              color: Colors.black54,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                // donors list container
                Container(
                  child: Card(
                    elevation: 10,
                    shadowColor: Colors.redAccent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(
                          Icons.list_alt_outlined,
                          size: 50,
                          color: Colors.black45,
                        ),
                        Text(
                          "Donors List",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.ubuntu(
                            fontSize: 22,
                            fontWeight: FontWeight.w500,
                            color: Colors.black54,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                // item master
                Container(
                  child: Card(
                    elevation: 10,
                    shadowColor: Colors.redAccent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(
                          Icons.medical_information_outlined,
                          size: 50,
                          color: Colors.black45,
                        ),
                        Text(
                          "Item Master",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.ubuntu(
                              fontSize: 22,
                              fontWeight: FontWeight.w500,
                              color: Colors.black54),
                        ),
                      ],
                    ),
                  ),
                ),

                ///   good recived note

                Container(
                  child: Card(
                    elevation: 10,
                    shadowColor: Colors.redAccent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(
                          Icons.note_alt_outlined,
                          size: 50,
                          color: Colors.black45,
                        ),
                        Text(
                          "Good Recieved Note",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.ubuntu(
                              fontSize: 22,
                              fontWeight: FontWeight.w500,
                              color: Colors.black54),
                        ),
                      ],
                    ),
                  ),
                ),
                //sales
                Container(
                  child: Card(
                    elevation: 10,
                    shadowColor: Colors.redAccent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(
                          Icons.sell_outlined,
                          size: 50,
                          color: Colors.black45,
                        ),
                        Text(
                          "Sales",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.ubuntu(
                              fontSize: 22,
                              fontWeight: FontWeight.w500,
                              color: Colors.black54),
                        ),
                      ],
                    ),
                  ),
                ),
                // about

                Container(
                  child: Card(
                    elevation: 10,
                    shadowColor: Colors.redAccent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(
                          Icons.info_outline,
                          size: 50,
                          color: Colors.black45,
                        ),
                        Text(
                          "About",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.ubuntu(
                              fontSize: 22,
                              fontWeight: FontWeight.w500,
                              color: Colors.black54),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
