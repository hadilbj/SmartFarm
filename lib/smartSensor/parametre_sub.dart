import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smart_farm/main.dart';
import 'package:smart_farm/core/api_client.dart';

import '../drawer.dart';

class parametresub extends StatefulWidget {
  const parametresub({Key? key}) : super(key: key);

  @override
  State<parametresub> createState() => _parametresubState();
}

class _parametresubState extends State<parametresub> {
  final ApiClient _apiClient = ApiClient();
  String humidite = "";

  // ignore: non_constant_identifier_names
  Future<dynamic> Sensors() async {
    dynamic meteo = await _apiClient.sensor();
    print('BODY: $meteo');
    humidite = meteo['data'].toString();
    print('humidite: $humidite');
  }

  @override
  void initState() {
    super.initState();
    Sensors();
  }

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
            children: [
              Text(
                "Température de l'air",
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
                "°C",
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
            children: [
              Text(
                "Humidité de l'air",
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
                "%",
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
            children: [
              Text(
                "Température du sol",
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
                "°C",
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
            children: [
              Text(
                "Humidité du sol 1",
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
                "55%",
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
            children: [
              Text(
                "Humidité du sol 2",
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
                "57%",
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
            children: [
              Text(
                "Humidité du sol 3",
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
                "%",
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
              ),
            ],
          ),
        ],
      ),
    ));
  }
}
