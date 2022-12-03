import 'package:b_bank/screens/donor_registraion.dart';
import 'package:blurrycontainer/blurrycontainer.dart';
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
      child: Container(
        // color: Colors.transparent,
        child: Column(
          children: [
            // blood bank text heading container

            Container(
              width: MediaQuery.of(context).size.width * 1,
              height: MediaQuery.of(context).size.width * 0.41,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                    bottomRight: Radius.elliptical(590, 200),
                    bottomLeft: Radius.elliptical(290, 190)),
                color: Colors.redAccent,
              ),
              child: Column(
                children: [
                  Text(
                    "Blood Bank",
                    style:
                        GoogleFonts.oswald(fontSize: 59, color: Colors.white),
                  ),
                  Text(
                    " ID DATA INFO SYSTEM",
                    style: GoogleFonts.aclonica(
                        color: Colors.white70, fontSize: 17),
                  )
                ],
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
                        elevation: 3,
                        // shadowColor: Colors.redAccent,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image.asset(
                              "assets/img/portrait.png",
                              color: Colors.redAccent,
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
                      elevation: 3,
                      // shadowColor: Colors.redAccent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.asset(
                            "assets/img/ballot2.png",
                            color: Colors.redAccent,
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
                      elevation: 3,
                      // shadowColor: Colors.redAccent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.asset(
                            "assets/img/id-badge.png",
                            color: Colors.redAccent,
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
                      elevation: 3,
                      // shadowColor: Colors.redAccent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.asset(
                            "assets/img/edit.png",
                            color: Colors.redAccent,
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
                      elevation: 3,
                      // shadowColor: Colors.redAccent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.asset(
                            "assets/img/coins3.png",
                            color: Colors.redAccent,
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
                      elevation: 3,
                      // shadowColor: Colors.redAccent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.asset(
                            "assets/img/info.png",
                            color: Colors.redAccent,
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
      ),
    );
  }
}
