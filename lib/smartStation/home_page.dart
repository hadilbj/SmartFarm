// ignore_for_file: prefer_typing_uninitialized_variables, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smart_farm/main.dart';
import '../drawer.dart';
import 'package:smart_farm/core/api_client.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final ApiClient _apiClient = ApiClient();
  String tempurature = "";
  String humidity = "";
  String pluviometrie = "";
  String pression = "";
  String vitesse = "";
  String direction = "";
  Future<dynamic> smart_metio() async {
    final prefs = await SharedPreferences.getInstance();

    String statuinnid = "1";
    String ssid = prefs.getString("session_id").toString();
    dynamic meteo = await _apiClient.smart_metio(
      statuinnid,
      ssid,
    );
    print("meteo *********: $meteo");
    final body = json.decode(meteo);
    tempurature = body['results']['temperature'].toString();
    print(tempurature);
    humidity = body['results']['humidity'].toString();
    pluviometrie = body['results']['humidity'].toString();
    pression = body['results']['pression'].toString();
    vitesse = body['results']['vitesse'].toString();
    direction = body['results']['direction'].toString();
  }

  void initState() {
    super.initState();
    smart_metio();
  }

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

  Widget _buildBody(BuildContext context) {
    return SingleChildScrollView(
      child: Card(
        child: Column(
          children: [
            Row(
              children: <Widget>[
                Text(
                  "Température",
                  style: GoogleFonts.poppins(
                      color: d_purple,
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0),
                  textAlign: TextAlign.left,
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Text(
                  tempurature + "°C",
                  style: GoogleFonts.poppins(
                      color: d_green,
                      fontWeight: FontWeight.w400,
                      fontSize: 22.0),
                  textAlign: TextAlign.left,
                ),
                const Spacer(),
                const Align(
                  alignment: Alignment.centerRight,
                  child: Icon(
                    Icons.thermostat_sharp,
                    color: d_purple,
                    size: 50.0,
                  ),
                ),
              ],
            ),
            Container(
              margin: const EdgeInsets.all(15.0),
              padding: const EdgeInsets.all(0.0),
              decoration: BoxDecoration(
                  border: Border.all(
                      color: const Color.fromARGB(255, 240, 236, 236))),
            ),
            Row(
              children: <Widget>[
                Text(
                  "Humidité",
                  style: GoogleFonts.poppins(
                      color: d_purple,
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0),
                  textAlign: TextAlign.left,
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Text(
                  humidity + "%",
                  style: GoogleFonts.poppins(
                      color: d_green,
                      fontWeight: FontWeight.w400,
                      fontSize: 22.0),
                  textAlign: TextAlign.left,
                ),
                const Spacer(),
                const Align(
                  alignment: Alignment.centerRight,
                  child: Icon(
                    Icons.water_drop,
                    color: d_purple,
                    size: 50.0,
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 30.0,
            ),
            Container(
              margin: const EdgeInsets.all(15.0),
              padding: const EdgeInsets.all(0.0),
              decoration: BoxDecoration(
                  border: Border.all(
                      color: const Color.fromARGB(255, 240, 236, 236))),
            ),
            Row(
              children: <Widget>[
                Text(
                  "Pluviométrie",
                  style: GoogleFonts.poppins(
                      color: d_purple,
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0),
                  textAlign: TextAlign.left,
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Text(
                  pluviometrie + " mm",
                  textAlign: TextAlign.left,
                  style: GoogleFonts.poppins(
                      color: d_green,
                      fontWeight: FontWeight.w400,
                      fontSize: 22.0),
                ),
                const Spacer(),
                const Align(
                  alignment: Alignment.centerRight,
                  child: Icon(
                    Icons.cloud_sharp,
                    color: d_purple,
                    size: 50.0,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 30.0,
            ),
            Container(
              margin: const EdgeInsets.all(15.0),
              padding: const EdgeInsets.all(0.0),
              decoration: BoxDecoration(
                  border: Border.all(
                      color: const Color.fromARGB(255, 240, 236, 236))),
            ),
            Row(
              children: <Widget>[
                Text(
                  "Pression",
                  style: GoogleFonts.poppins(
                      color: d_purple,
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0),
                  textAlign: TextAlign.left,
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Text(
                  pression + " mb",
                  textAlign: TextAlign.left,
                  style: GoogleFonts.poppins(
                      color: d_green,
                      fontWeight: FontWeight.w400,
                      fontSize: 22.0),
                ),
                const Spacer(),
                Align(
                  alignment: Alignment.centerRight,
                  child: Image.asset(
                    'assets/pression.png',
                    height: 50,
                    width: 50,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 30.0,
            ),
            Container(
              margin: const EdgeInsets.all(15.0),
              padding: const EdgeInsets.all(0.0),
              decoration: BoxDecoration(
                  border: Border.all(
                      color: const Color.fromARGB(255, 240, 236, 236))),
            ),
            Row(
              children: <Widget>[
                Text(
                  "Vitesse",
                  textAlign: TextAlign.left,
                  style: GoogleFonts.poppins(
                      color: d_purple,
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Text(
                  vitesse + " Km/H",
                  textAlign: TextAlign.left,
                  style: GoogleFonts.poppins(
                      color: d_green,
                      fontWeight: FontWeight.w400,
                      fontSize: 22.0),
                ),
                const Spacer(),
                const Align(
                  alignment: Alignment.centerRight,
                  child: Icon(
                    Icons.speed,
                    color: d_purple,
                    size: 50.0,
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 30.0,
            ),
            Container(
              margin: const EdgeInsets.all(15.0),
              padding: const EdgeInsets.all(0.0),
              decoration: BoxDecoration(
                  border: Border.all(
                      color: const Color.fromARGB(255, 240, 236, 236))),
            ),
            Row(
              children: <Widget>[
                Text(
                  "Direction du vent",
                  textAlign: TextAlign.left,
                  style: GoogleFonts.poppins(
                      color: d_purple,
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Text(
                  direction + " s",
                  textAlign: TextAlign.left,
                  style: GoogleFonts.poppins(
                      color: d_green,
                      fontWeight: FontWeight.w400,
                      fontSize: 22.0),
                ),
                const Spacer(),
                const Align(
                  alignment: Alignment.centerRight,
                  child: Icon(
                    Icons.speed,
                    color: d_purple,
                    size: 50.0,
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
