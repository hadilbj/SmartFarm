// ignore_for_file: unused_label, deprecated_member_use
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smart_farm/main.dart';
import '../drawer.dart';

class ModifProfile extends StatefulWidget {
  const ModifProfile({Key? key}) : super(key: key);

  @override
  State<ModifProfile> createState() => _ModifProfileState();
}

class _ModifProfileState extends State<ModifProfile> {
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
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Modifier Profil',
                    style: GoogleFonts.poppins(
                        color: d_purple,
                        fontSize: 18,
                        fontWeight: FontWeight.bold)),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            //photo profil
            Stack(
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                    height: 150,
                    width: 150,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.black, width: 0.1),
                    ),
                    child: const ClipOval(
                        child: Material(
                      color: Colors.white,
                      child: Image(image: AssetImage('assets/profile.png')),
                    )),
                  ),
                ),
                //changer photo
                Align(
                  alignment: Alignment.bottomCenter,
                  child: InkWell(
                    child: Container(
                      margin: const EdgeInsets.only(
                          left: 70, bottom: 2.5, top: 113, right: 25),
                      height: 10,
                      width: 0.5,
                      child: Container(
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle, color: Colors.black),
                        child: const Center(
                            child: Icon(
                          Icons.photo_camera_back,
                          color: Colors.white,
                          size: 30,
                        )),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Text('Information de client ',
                    style: GoogleFonts.poppins(
                        color: d_purple,
                        fontSize: 18,
                        fontWeight: FontWeight.bold)),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.symmetric(vertical: (20 / 2)),
                        padding: const EdgeInsets.only(right: (150 / 1.5)),
                        height: 25,
                        child: TextField(
                          maxLines: 1,
                          style: GoogleFonts.poppins(
                              color: d_purple, fontSize: 10.0),
                          decoration: InputDecoration(
                              enabledBorder: const OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: d_purple, width: 0.0)),
                              border: const OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: d_green, width: 0.0),
                              ),
                              labelStyle: GoogleFonts.poppins(
                                  color: d_purple, fontSize: 10.0),
                              labelText: 'Nom'
                              //hintText: 'Nom'
                              ),
                        ),
                      )
                    ],
                  ),
                  flex: 1,
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.symmetric(vertical: (20 / 2)),
                        padding: const EdgeInsets.only(right: (150 / 1.5)),
                        height: 25,
                        child: TextField(
                          maxLines: 1,
                          style: GoogleFonts.poppins(
                              color: Colors.black, fontSize: 10.0),
                          decoration: InputDecoration(
                              enabledBorder: const OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: d_purple, width: 0.0)),
                              border: const OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: d_green, width: 0.0),
                              ),
                              labelStyle: GoogleFonts.poppins(
                                  color: d_purple, fontSize: 10.0),
                              labelText: 'Prénom'),
                        ),
                      )
                    ],
                  ),
                  flex: 1,
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.symmetric(vertical: (20 / 2)),
                        padding: const EdgeInsets.only(right: (150 / 1.5)),
                        height: 25,
                        child: TextField(
                          maxLines: 1,
                          style: GoogleFonts.poppins(
                              color: d_purple, fontSize: 10.0),
                          decoration: InputDecoration(
                              enabledBorder: const OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: d_purple, width: 0.0)),
                              border: const OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: d_green, width: 0.0),
                              ),
                              labelStyle: GoogleFonts.poppins(
                                  color: d_purple, fontSize: 10.0),
                              labelText: 'Mot de passe'),
                        ),
                      )
                    ],
                  ),
                  flex: 1,
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.symmetric(vertical: (20 / 2)),
                        padding: const EdgeInsets.only(right: (150 / 1.5)),
                        height: 25,
                        child: TextField(
                          maxLines: 1,
                          style: GoogleFonts.poppins(
                              color: d_purple, fontSize: 10.0),
                          decoration: InputDecoration(
                              enabledBorder: const OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: d_purple, width: 0.0)),
                              border: const OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: d_green, width: 0.0),
                              ),
                              labelStyle: GoogleFonts.poppins(
                                  color: d_purple, fontSize: 10.0),
                              labelText: 'Tél'),
                        ),
                      )
                    ],
                  ),
                  flex: 1,
                ),
              ],
            ),
            const SizedBox(height: 20),

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
              child: Text('Enregistrer',
                  style: GoogleFonts.poppins(color: Colors.white)),
            ),
            const SizedBox(height: 100),
          ],
        ),
      ),
    );
  }
}
