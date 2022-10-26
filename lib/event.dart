// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smart_farm/modif_event.dart';

import 'drawer.dart';
import 'main.dart';

class Event extends StatefulWidget {
  const Event({Key? key}) : super(key: key);

  @override
  State<Event> createState() => _EventState();
}

class _EventState extends State<Event> {
  @override
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
      bottomNavigationBar: Container(
        padding: EdgeInsets.symmetric(horizontal: 80),
        child: RaisedButton(
          color: d_green,
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ModifEvent(),
                ));
          },
          child: Text('Ajouter Planning',
              style: GoogleFonts.poppins(color: Colors.white)),
        ),
      ),
      body: _buildBody(context),
    );
  }

  Widget _buildBody(BuildContext context) {
    return Container(
        child: Card(
      child: Column(
        children: [
          Row(
            children: [
              const Padding(padding: EdgeInsets.only(right: 30.0)),
              Text('Planning',
                  style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w500)),
            ],
          ),
          const SizedBox(
            height: 8.0,
          ),
          Row(
            children: [
              const Padding(padding: EdgeInsets.only(right: 35.0)),
              const Icon(Icons.home, color: Colors.grey, size: 15.0),
              Text('/Planning',
                  style:
                      GoogleFonts.poppins(color: Colors.grey, fontSize: 12.0)),
            ],
          ),
          const SizedBox(height: 10.0),
          Row(
            children: [
              const Padding(padding: EdgeInsets.only(right: 30.0)),
              Text('Emails',
                  style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w500)),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 30 / 2),
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
                            borderSide: BorderSide(color: d_green, width: 0.0),
                          ),
                          labelStyle: GoogleFonts.poppins(
                              color: d_purple, fontSize: 10.0),
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
              const Padding(padding: EdgeInsets.only(right: 30.0)),
              Text('Notifications par mail',
                  style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w500)),
              const Padding(padding: EdgeInsets.only(right: 20.0)),
              const Icon(
                Icons.check_outlined,
              ),
            ],
          ),
          const SizedBox(height: 10.0),
          Row(
            children: [
              Expanded(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 80),
                  child: RaisedButton(
                    color: d_green,
                    onPressed: () {},
                    child: Text('Enregistrer',
                        style: GoogleFonts.poppins(color: Colors.white)),
                  ),
                ),
                flex: 1,
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              const Padding(padding: EdgeInsets.only(right: 30.0)),
              Text('Planning',
                  style: GoogleFonts.poppins(
                      color: d_purple,
                      fontSize: 18,
                      fontWeight: FontWeight.w500)),
              const Padding(padding: EdgeInsets.only(right: 20.0)),
            ],
          ),
        ],
      ),
    ));
    // ));
  }
}
