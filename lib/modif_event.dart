// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smart_farm/event.dart';
import 'package:smart_farm/main.dart';
import '../drawer.dart';
import 'package:intl/intl.dart' show DateFormat;

class ModifEvent extends StatefulWidget {
  const ModifEvent({Key? key}) : super(key: key);

  @override
  State<ModifEvent> createState() => _ModifEventState();
}

class _ModifEventState extends State<ModifEvent> {
  String date = 'DD/MM/YYYY';

  _SelectDate() async {
    final DateTime? pickedDate = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime.now(),
        lastDate: DateTime(2080));
    String pickD = DateFormat('MM/dd/yyyy').format(pickedDate!);
    if (pickedDate != null && date != pickD)
      setState(() {
        date = DateFormat(('MM/dd/yyyy')).format(pickedDate);
      });
    ;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const Event(),
                ));
          },
        ),
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.symmetric(horizontal: 80),
        child: RaisedButton(
          color: d_green,
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ModifEvent(),
                ));
          },
          child: Text('Enregistrer',
              style: GoogleFonts.poppins(color: Colors.white)),
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              const Padding(padding: EdgeInsets.only(right: 30.0)),
              Text('Ajouter du planning',
                  style: GoogleFonts.poppins(
                      color: d_purple,
                      fontSize: 18,
                      fontWeight: FontWeight.bold)),
            ],
          ),
          Row(children: [
            Padding(
              padding: EdgeInsets.only(
                top: 20,
              ),
              child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Du :',
                    style: GoogleFonts.poppins(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  )),
            ),
          ]),
          Row(
            children: [
              Expanded(
                child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Container(
                      child: Text(date),
                    )),
              ),
              IconButton(
                icon: Icon(Icons.calendar_month),
                color: Colors.black,
                //size: ,
                onPressed: () {
                  _SelectDate();
                },
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(
                  top: 20,
                ),
                child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Au :',
                      style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    )),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Container(
                      child: Text(date),
                    )),
              ),
              IconButton(
                icon: Icon(Icons.calendar_month),
                color: Colors.black,
                //size: ,
                onPressed: () {
                  _SelectDate();
                },
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              const Padding(padding: EdgeInsets.only(right: 30.0)),
              Text('Lundi',
                  style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.bold)),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              const Padding(padding: EdgeInsets.only(right: 30.0)),
              Text('Mardi',
                  style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.bold)),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              const Padding(padding: EdgeInsets.only(right: 30.0)),
              Text('Mercredi',
                  style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.bold)),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              const Padding(padding: EdgeInsets.only(right: 30.0)),
              Text('Jeudi',
                  style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.bold)),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              const Padding(padding: EdgeInsets.only(right: 30.0)),
              Text('Vendredi',
                  style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.bold)),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              const Padding(padding: EdgeInsets.only(right: 30.0)),
              Text('Samedi',
                  style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.bold)),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              const Padding(padding: EdgeInsets.only(right: 30.0)),
              Text('Dimanche',
                  style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.bold)),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 80),
                  child: RaisedButton(
                    color: d_purple,
                    onPressed: () {},
                    child: Text('Ajouter un élement',
                        style: GoogleFonts.poppins(color: Colors.white)),
                  ),
                ),
                flex: 1,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
