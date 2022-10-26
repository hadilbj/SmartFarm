import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smart_farm/main.dart';
import '../drawer.dart';

class Equipement extends StatefulWidget {
  const Equipement({Key? key}) : super(key: key);

  @override
  State<Equipement> createState() => _EquipementState();
}

class _EquipementState extends State<Equipement> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const DrawerComponent(),
      appBar: AppBar(
        iconTheme: const IconThemeData(color: d_purple),
        backgroundColor: Colors.white,
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
                Text(
                  '20/02/2022 à 12:00:20',
                  style: GoogleFonts.poppins(color: d_green, fontSize: 12.0),
                ),
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
}

Widget _buildBody(BuildContext context) {
  return SingleChildScrollView(
    child: Card(
      child: Column(
        children: [
          Row(
            children: <Widget>[
              const Icon(
                Icons.water_drop_outlined,
                color: d_purple,
                size: 35.0,
              ),
              Row(
                children: [
                  OutlinedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0))),
                    ),
                    child: Text(
                      'En marche',
                      style: GoogleFonts.poppins(color: d_green),
                    ),
                  ),
                ],
              ),
              const Spacer(),
              Row(
                children: [
                  Text(
                    "Pompe PH",
                    style: GoogleFonts.poppins(
                        color: d_purple,
                        fontWeight: FontWeight.bold,
                        fontSize: 14.0),
                    textAlign: TextAlign.left,
                  ),
                ],
              ),
              const Spacer(),
              Row(
                children: [
                  OutlinedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0))),
                    ),
                    child: Text(
                      'Condition',
                      style: GoogleFonts.poppins(color: d_green),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Row(
            children: <Widget>[
              const Icon(
                Icons.water_drop_outlined,
                color: d_purple,
                size: 35.0,
              ),
              Row(
                children: [
                  OutlinedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0))),
                    ),
                    child: Text(
                      'En marche',
                      style: GoogleFonts.poppins(color: d_green),
                    ),
                  ),
                ],
              ),
              const Spacer(),
              Row(
                children: [
                  Text(
                    "Pompe Hydro",
                    style: GoogleFonts.poppins(
                        color: d_purple,
                        fontWeight: FontWeight.bold,
                        fontSize: 14.0),
                    textAlign: TextAlign.left,
                  ),
                ],
              ),
              const Spacer(),
              Row(
                children: [
                  OutlinedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0))),
                    ),
                    child: Text(
                      'Condition',
                      style: GoogleFonts.poppins(color: d_green),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Row(
            children: <Widget>[
              const Icon(
                Icons.water_drop_outlined,
                color: d_purple,
                size: 35.0,
              ),
              Row(
                children: [
                  OutlinedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0))),
                    ),
                    child: Text(
                      'En marche',
                      style: GoogleFonts.poppins(color: d_green),
                    ),
                  ),
                ],
              ),
              const Spacer(),
              Row(
                children: [
                  Text(
                    "Au faitage fer",
                    style: GoogleFonts.poppins(
                        color: d_purple,
                        fontWeight: FontWeight.bold,
                        fontSize: 14.0),
                    textAlign: TextAlign.left,
                  ),
                ],
              ),
              const Spacer(),
              Row(
                children: [
                  OutlinedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0))),
                    ),
                    child: Text(
                      'Condition',
                      style: GoogleFonts.poppins(color: d_green),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Row(
            children: <Widget>[
              const Icon(
                Icons.water_drop_outlined,
                color: d_purple,
                size: 35.0,
              ),
              Row(
                children: [
                  OutlinedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0))),
                    ),
                    child: Text(
                      'En marche',
                      style: GoogleFonts.poppins(color: d_green),
                    ),
                  ),
                ],
              ),
              const Spacer(),
              Row(
                children: [
                  Text(
                    "Au faitage ouv",
                    style: GoogleFonts.poppins(
                        color: d_purple,
                        fontWeight: FontWeight.bold,
                        fontSize: 14.0),
                    textAlign: TextAlign.left,
                  ),
                ],
              ),
              const Spacer(),
              Row(
                children: [
                  OutlinedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0))),
                    ),
                    child: Text(
                      'Condition',
                      style: GoogleFonts.poppins(color: d_green),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Row(
            children: <Widget>[
              const Icon(
                Icons.water_drop_outlined,
                color: d_purple,
                size: 35.0,
              ),
              Row(
                children: [
                  OutlinedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0))),
                    ),
                    child: Text(
                      'En marche',
                      style: GoogleFonts.poppins(color: d_green),
                    ),
                  ),
                ],
              ),
              const Spacer(),
              Row(
                children: [
                  Text(
                    "Ferme latéral G",
                    style: GoogleFonts.poppins(
                        color: d_purple,
                        fontWeight: FontWeight.bold,
                        fontSize: 13.0),
                    textAlign: TextAlign.left,
                  ),
                ],
              ),
              const Spacer(),
              Row(
                children: [
                  OutlinedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(9.0))),
                    ),
                    child: Text(
                      'Condition',
                      style: GoogleFonts.poppins(color: d_green),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Row(
            children: <Widget>[
              const Icon(
                Icons.water_drop_outlined,
                color: d_purple,
                size: 35.0,
              ),
              Row(
                children: [
                  OutlinedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0))),
                    ),
                    child: Text(
                      'En marche',
                      style: GoogleFonts.poppins(color: d_green),
                    ),
                  ),
                ],
              ),
              const Spacer(),
              Row(
                children: [
                  Text(
                    "Ouvert latéral G",
                    style: GoogleFonts.poppins(
                        color: d_purple,
                        fontWeight: FontWeight.bold,
                        fontSize: 13.0),
                    textAlign: TextAlign.left,
                  ),
                ],
              ),
              const Spacer(),
              Row(
                children: [
                  OutlinedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0))),
                    ),
                    child: Text(
                      'Condition',
                      style: GoogleFonts.poppins(color: d_green),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Row(
            children: <Widget>[
              const Icon(
                Icons.water_drop_outlined,
                color: d_purple,
                size: 35.0,
              ),
              Row(
                children: [
                  OutlinedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0))),
                    ),
                    child: Text(
                      'En marche',
                      style: GoogleFonts.poppins(color: d_green),
                    ),
                  ),
                ],
              ),
              const Spacer(),
              Row(
                children: [
                  Text(
                    "Ferme latéral D",
                    style: GoogleFonts.poppins(
                        color: d_purple,
                        fontWeight: FontWeight.bold,
                        fontSize: 13.0),
                    textAlign: TextAlign.left,
                  ),
                ],
              ),
              const Spacer(),
              Row(
                children: [
                  OutlinedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0))),
                    ),
                    child: Text(
                      'Condition',
                      style: GoogleFonts.poppins(color: d_green),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Row(
            children: <Widget>[
              const Icon(
                Icons.water_drop_outlined,
                color: d_purple,
                size: 35.0,
              ),
              Row(
                children: [
                  OutlinedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0))),
                    ),
                    child: Text(
                      'En marche',
                      style: GoogleFonts.poppins(color: d_green),
                    ),
                  ),
                ],
              ),
              const Spacer(),
              Row(
                children: [
                  Text(
                    "Ouvert latéral D",
                    style: GoogleFonts.poppins(
                        color: d_purple,
                        fontWeight: FontWeight.bold,
                        fontSize: 13.0),
                    textAlign: TextAlign.left,
                  ),
                ],
              ),
              const Spacer(),
              Row(
                children: [
                  OutlinedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0))),
                    ),
                    child: Text(
                      'Condition',
                      style: GoogleFonts.poppins(color: d_green),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Row(
            children: <Widget>[
              const Icon(
                Icons.water_drop_outlined,
                color: d_purple,
                size: 35.0,
              ),
              Row(
                children: [
                  OutlinedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0))),
                    ),
                    child: Text(
                      'En marche',
                      style: GoogleFonts.poppins(color: d_green),
                    ),
                  ),
                ],
              ),
              const Spacer(),
              Row(
                children: [
                  Text(
                    "Pompe A",
                    style: GoogleFonts.poppins(
                        color: d_purple,
                        fontWeight: FontWeight.bold,
                        fontSize: 14.0),
                    textAlign: TextAlign.left,
                  ),
                ],
              ),
              const Spacer(),
              Row(
                children: [
                  OutlinedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0))),
                    ),
                    child: Text(
                      'Condition',
                      style: GoogleFonts.poppins(color: d_green),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Row(
            children: <Widget>[
              const Icon(
                Icons.water_drop_outlined,
                color: d_purple,
                size: 35.0,
              ),
              Row(
                children: [
                  OutlinedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0))),
                    ),
                    child: Text(
                      'En marche',
                      style: GoogleFonts.poppins(color: d_green),
                    ),
                  ),
                ],
              ),
              const Spacer(),
              Row(
                children: [
                  Text(
                    "Pompe B",
                    style: GoogleFonts.poppins(
                        color: d_purple,
                        fontWeight: FontWeight.bold,
                        fontSize: 14.0),
                    textAlign: TextAlign.left,
                  ),
                ],
              ),
              const Spacer(),
              Row(
                children: [
                  OutlinedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0))),
                    ),
                    child: Text(
                      'Condition',
                      style: GoogleFonts.poppins(color: d_green),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Row(
            children: <Widget>[
              const Icon(
                Icons.water_drop_outlined,
                color: d_purple,
                size: 35.0,
              ),
              Row(
                children: [
                  OutlinedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0))),
                    ),
                    child: Text(
                      'En marche',
                      style: GoogleFonts.poppins(color: d_green),
                    ),
                  ),
                ],
              ),
              const Spacer(),
              Row(
                children: [
                  Text(
                    "Irri Sol",
                    style: GoogleFonts.poppins(
                        color: d_purple,
                        fontWeight: FontWeight.bold,
                        fontSize: 14.0),
                    textAlign: TextAlign.left,
                  ),
                ],
              ),
              const Spacer(),
              Row(
                children: [
                  OutlinedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0))),
                    ),
                    child: Text(
                      'Condition',
                      style: GoogleFonts.poppins(color: d_green),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Row(
            children: <Widget>[
              const Icon(
                Icons.water_drop_outlined,
                color: d_purple,
                size: 35.0,
              ),
              Row(
                children: [
                  OutlinedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0))),
                    ),
                    child: Text(
                      'En marche',
                      style: GoogleFonts.poppins(color: d_green),
                    ),
                  ),
                ],
              ),
              const Spacer(),
              Row(
                children: [
                  Text(
                    "Irri Sub",
                    style: GoogleFonts.poppins(
                        color: d_purple,
                        fontWeight: FontWeight.bold,
                        fontSize: 14.0),
                    textAlign: TextAlign.left,
                  ),
                ],
              ),
              const Spacer(),
              Row(
                children: [
                  OutlinedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0))),
                    ),
                    child: Text(
                      'Condition',
                      style: GoogleFonts.poppins(color: d_green),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Row(
            children: <Widget>[
              const Icon(
                Icons.water_drop_outlined,
                color: d_purple,
                size: 35.0,
              ),
              Row(
                children: [
                  OutlinedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0))),
                    ),
                    child: Text(
                      'En marche',
                      style: GoogleFonts.poppins(color: d_green),
                    ),
                  ),
                ],
              ),
              const Spacer(),
              Row(
                children: [
                  Text(
                    "Ph1",
                    style: GoogleFonts.poppins(
                        color: d_purple,
                        fontWeight: FontWeight.bold,
                        fontSize: 14.0),
                    textAlign: TextAlign.left,
                  ),
                ],
              ),
              const Spacer(),
              Row(
                children: [
                  OutlinedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0))),
                    ),
                    child: Text(
                      'Condition',
                      style: GoogleFonts.poppins(color: d_green),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Row(
            children: <Widget>[
              const Icon(
                Icons.water_drop_outlined,
                color: d_purple,
                size: 35.0,
              ),
              //const Spacer(),
              Row(
                children: [
                  OutlinedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0))),
                    ),
                    child: Text(
                      'En marche',
                      style: GoogleFonts.poppins(color: d_green),
                    ),
                  ),
                ],
              ),
              const Spacer(),
              Row(
                children: [
                  Text(
                    "Ph2 ",
                    style: GoogleFonts.poppins(
                        color: d_purple,
                        fontWeight: FontWeight.bold,
                        fontSize: 14.0),
                    textAlign: TextAlign.left,
                  ),
                ],
              ),
              const Spacer(),
              Row(
                children: [
                  OutlinedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0))),
                    ),
                    child: Text(
                      'Condition',
                      style: GoogleFonts.poppins(color: d_green),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Row(
            children: <Widget>[
              const Icon(
                Icons.water_drop_outlined,
                color: d_purple,
                size: 35.0,
              ),
              //const Spacer(),
              Row(
                children: [
                  OutlinedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0))),
                    ),
                    child: Text(
                      'En marche',
                      style: GoogleFonts.poppins(color: d_green),
                    ),
                  ),
                ],
              ),
              const Spacer(),
              Row(
                children: [
                  Text(
                    "Brumisation",
                    style: GoogleFonts.poppins(
                        color: d_purple,
                        fontWeight: FontWeight.bold,
                        fontSize: 14.0),
                    textAlign: TextAlign.left,
                  ),
                ],
              ),
              const Spacer(),
              Row(
                children: [
                  OutlinedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0))),
                    ),
                    child: Text(
                      'Condition',
                      style: GoogleFonts.poppins(color: d_green),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Row(
            children: <Widget>[
              const Icon(
                Icons.water_drop_outlined,
                color: d_purple,
                size: 35.0,
              ),
              //const Spacer(),
              Row(
                children: [
                  OutlinedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0))),
                    ),
                    child: Text(
                      'En marche',
                      style: GoogleFonts.poppins(color: d_green),
                    ),
                  ),
                ],
              ),
              const Spacer(),
              Row(
                children: [
                  Text(
                    "Ventilateur",
                    style: GoogleFonts.poppins(
                        color: d_purple,
                        fontWeight: FontWeight.bold,
                        fontSize: 14.0),
                    textAlign: TextAlign.left,
                  ),
                ],
              ),
              const Spacer(),
              Row(
                children: [
                  OutlinedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0))),
                    ),
                    child: Text(
                      'Condition',
                      style: GoogleFonts.poppins(color: d_green),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    ),
  );
}
