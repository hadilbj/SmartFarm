import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smart_farm/main.dart';
import 'package:smart_farm/core/api_client.dart';
import '../drawer.dart';

class ParametreHydro extends StatefulWidget {
  const ParametreHydro({Key? key}) : super(key: key);

  @override
  State<ParametreHydro> createState() => _ParametreHydroState();
}

class _ParametreHydroState extends State<ParametreHydro> {
  final ApiClient _apiClient = ApiClient();
  String temperature = "";
  String luminosite = "";

  // ignore: non_constant_identifier_names
  Future<dynamic> hydroTemp() async {
    dynamic meteo = await _apiClient.hydro_temp();
    print('BODY: $meteo');
    temperature = meteo['data'].toString();
    print('temperature: $temperature');
  }

  // Future<dynamic> hydroLum() async {
  //   dynamic meteo = await _apiClient.hydro_temp();
  //   print('BODY: $meteo');
  //   luminosite = meteo['data'].toString();
  //   print('luminosite: $luminosite');
  // }

  @override
  void initState() {
    super.initState();
    hydroTemp();
    //hydroLum();
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
                "35°C",
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
                "30%",
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
                "Oxygène",
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
                "o2",
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
                  Icons.cloud_circle,
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
                "Luminosité",
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
                " 10Lux",
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
                  Icons.brightness_2,
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
                "Température de l'eau",
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
                  Icons.thermostat_outlined,
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
                "PH",
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
                "UN",
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
                  Icons.speed,
                  color: d_purple,
                  size: 50.0,
                ),
              )
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
                "Conductivité de l'eau",
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
                "s",
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
                  Icons.speed,
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
                "CO2",
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
                "ppm",
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
                  Icons.co2_rounded,
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
