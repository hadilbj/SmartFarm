// ignore_for_file: unused_label
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smart_farm/main.dart';
import 'package:smart_farm/modif_profil.dart';
import '../drawer.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const DrawerComponent(),
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: d_purple),
        elevation: 0.0,
        title: Column(
          children: [
            Row(
              children: [
                Image.asset(
                  'assets/favicon.png',
                  height: 50,
                  width: 50,
                ),
                Text(
                  'Bonjour Leila DIFALLAH ',
                  style: GoogleFonts.poppins(
                      color: d_green,
                      fontSize: 18,
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
            Row(
              children: [
                const Padding(padding: EdgeInsets.only(right: 50.0)),
                Text('20/02/2022 à 12:00:20',
                    style: GoogleFonts.poppins(color: d_green, fontSize: 12.0)),
              ],
            ),
            const SizedBox(
              height: 15.0,
            ),
          ],
        ),
      ),
      body: _buildBody(context),
    );
  }

  Widget _buildBody(BuildContext context) {
    return SingleChildScrollView(
      child: Card(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/profile.png',
                  height: 150,
                  width: 200,
                ),
              ],
            ),
            const SizedBox(
              height: 50.0,
            ),
            Row(
              children: [
                const Padding(padding: EdgeInsets.only(right: 30.0)),
                Text('Lycée Bouchrik',
                    style: GoogleFonts.poppins(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold)),
              ],
            ),
            Row(
              children: [
                const Padding(padding: EdgeInsets.only(right: 35.0)),
                Text('Online',
                    style: GoogleFonts.poppins(
                        color: Colors.black, fontSize: 12.0)),
              ],
            ),
            Row(
              children: [
                const Padding(padding: EdgeInsets.only(right: 30.0)),
                Text('Position',
                    style: GoogleFonts.poppins(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold)),
                const Padding(padding: EdgeInsets.only(right: 70.0)),
                Text('content manager',
                    style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontSize: 18,
                    )),
              ],
            ),
            Row(
              children: [
                const Padding(padding: EdgeInsets.only(right: 30.0)),
                Text('Age',
                    style: GoogleFonts.poppins(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold)),
                const Padding(padding: EdgeInsets.only(right: 110.0)),
                Text('25 ans',
                    style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontSize: 18,
                    )),
              ],
            ),
            Row(
              children: [
                const Padding(padding: EdgeInsets.only(right: 30.0)),
                Text('Adresse',
                    style: GoogleFonts.poppins(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold)),
                const Padding(padding: EdgeInsets.only(right: 70.0)),
                Text('New York, USA',
                    style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontSize: 18,
                    )),
              ],
            ),
            Row(
              children: [
                const Padding(padding: EdgeInsets.only(right: 30.0)),
                Text('Phone',
                    style: GoogleFonts.poppins(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold)),
                const Padding(padding: EdgeInsets.only(right: 85.0)),
                Text('+9 70 12 102 500',
                    style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontSize: 18,
                    )),
              ],
            ),
            const SizedBox(
              height: 100.0,
            ),
            // ignore: deprecated_member_use
            RaisedButton(
              color: d_green,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ModifProfile(),
                  ),
                );
              },
              child: Text('Modifier profil',
                  style: GoogleFonts.poppins(color: Colors.white)),
            ),
            const SizedBox(
              height: 100.0,
            ),
          ],
        ),
      ),
    );
  }
}
