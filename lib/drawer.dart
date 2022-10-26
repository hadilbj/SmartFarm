import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smart_farm/SmartHydro/parametre_hydro.dart';
import 'package:smart_farm/event.dart';
import 'package:smart_farm/login_page.dart';
import 'package:smart_farm/profil.dart';
import 'package:smart_farm/smartSensor/parametre_sol.dart';
import 'package:smart_farm/smartSensor/parametre_sub.dart';
import 'package:smart_farm/smartStation/home_page.dart';
import 'package:smart_farm/main.dart';
import 'package:smart_farm/smartStation/static_station.dart';
import 'package:smart_farm/smartWater/equipement.dart';

class DrawerComponent extends StatelessWidget {
  const DrawerComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage('assets/into.jpg')),
            ),
            child: null,
          ),
          ExpansionTile(
            leading: const Icon(
              Icons.home,
              color: d_purple,
              size: 30.0,
            ),
            title: Text(
              'Smart Stations',
              style: GoogleFonts.poppins(
                  color: d_green, fontSize: 18, fontWeight: FontWeight.w400),
            ),
            children: <Widget>[
              ListTile(
                leading: const Visibility(
                  child: Icon(
                    Icons.ac_unit,
                    size: 15,
                  ),
                  visible: false,
                ),
                title: Text(
                  'Smart Weather Station Bouchrik',
                  style: GoogleFonts.poppins(
                      color: d_green,
                      fontSize: 16.5,
                      fontWeight: FontWeight.w400),
                ),
                onTap: () => {},
              ),
              ListTile(
                title: Text(
                  'Paramètres Station',
                  style: GoogleFonts.poppins(
                      color: d_green,
                      fontSize: 16.5,
                      fontWeight: FontWeight.w400),
                ),
                onTap: () => {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Homepage()),
                  ),
                },
              ),
              ListTile(
                title: Text(
                  'Statistiques Station',
                  style: GoogleFonts.poppins(
                      color: d_green,
                      fontSize: 16.5,
                      fontWeight: FontWeight.w400),
                ),
                onTap: () => {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const ChartApp()),
                  ),
                },
              ),
              ListTile(
                title: Text(
                  'Tableaux Station',
                  style: GoogleFonts.poppins(
                      color: d_green,
                      fontSize: 16.5,
                      fontWeight: FontWeight.w400),
                ),
                onTap: () => {},
              ),
            ],
          ),
          ExpansionTile(
            leading: const Icon(
              Icons.power,
              color: d_purple,
              size: 30.0,
            ),
            title: Text(
              'Smart Hydro',
              style: GoogleFonts.poppins(
                  color: d_green, fontSize: 18, fontWeight: FontWeight.w400),
            ),
            children: <Widget>[
              ListTile(
                leading: const Visibility(
                  child: Icon(
                    Icons.ac_unit,
                    size: 15,
                  ),
                  visible: false,
                ),
                title: Text(
                  'Smart Hydro Bouchrik',
                  style: GoogleFonts.poppins(
                      color: d_green,
                      fontSize: 16.5,
                      fontWeight: FontWeight.w400),
                ),
                onTap: () => {},
              ),
              ListTile(
                title: Text(
                  'Paramètres Hydro',
                  style: GoogleFonts.poppins(
                      color: d_green,
                      fontSize: 16.5,
                      fontWeight: FontWeight.w400),
                ),
                onTap: () => {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ParametreHydro()),
                  ),
                },
              ),
              ListTile(
                title: Text(
                  'Statistiques Hydro',
                  style: GoogleFonts.poppins(
                      color: d_green,
                      fontSize: 16.5,
                      fontWeight: FontWeight.w400),
                ),
                onTap: () => {},
              ),
              ListTile(
                title: Text(
                  'Tableaux Hydro',
                  style: GoogleFonts.poppins(
                      color: d_green,
                      fontSize: 16.5,
                      fontWeight: FontWeight.w400),
                ),
                onTap: () => {},
              ),
            ],
          ),
          ExpansionTile(
            leading: const Icon(
              Icons.sensors,
              color: d_purple,
              size: 30.0,
            ),
            title: Text(
              'Smart Sensors',
              style: GoogleFonts.poppins(
                  color: d_green, fontSize: 18, fontWeight: FontWeight.w400),
            ),
            children: <Widget>[
              ListTile(
                leading: const Visibility(
                  child: Icon(
                    Icons.ac_unit,
                    size: 15,
                  ),
                  visible: false,
                ),
                title: Text(
                  'Smart Sensor Bouchrik Sub',
                  style: GoogleFonts.poppins(
                      color: d_green,
                      fontSize: 16.5,
                      fontWeight: FontWeight.w400),
                ),
                onTap: () => {},
              ),
              ListTile(
                title: Text(
                  'Paramètres Sensor',
                  style: GoogleFonts.poppins(
                      color: d_green,
                      fontSize: 16.5,
                      fontWeight: FontWeight.w400),
                ),
                onTap: () => {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const parametresub()))
                },
              ),
              ListTile(
                title: Text(
                  'Statistiques Sensor',
                  style: GoogleFonts.poppins(
                      color: d_green,
                      fontSize: 16.5,
                      fontWeight: FontWeight.w400),
                ),
                onTap: () => {},
              ),
              ListTile(
                title: Text(
                  'Tableaux Sensor',
                  style: GoogleFonts.poppins(
                      color: d_green,
                      fontSize: 16.5,
                      fontWeight: FontWeight.w400),
                ),
                onTap: () => {},
              ),
              ListTile(
                title: Text(
                  'Smart Sensor Bouchrik Sol',
                  style: GoogleFonts.poppins(
                      color: d_green,
                      fontSize: 16.5,
                      fontWeight: FontWeight.w400),
                  textAlign: TextAlign.center,
                ),
                onTap: () => {},
              ),
              ListTile(
                title: Text(
                  'Paramètres Sensor',
                  style: GoogleFonts.poppins(
                      color: d_green,
                      fontSize: 16.5,
                      fontWeight: FontWeight.w400),
                ),
                onTap: () => {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const parametresol(),
                    ),
                  )
                },
              ),
              ListTile(
                title: Text(
                  'Statistiques Sensor',
                  style: GoogleFonts.poppins(
                      color: d_green,
                      fontSize: 16.5,
                      fontWeight: FontWeight.w400),
                ),
                onTap: () => {},
              ),
              ListTile(
                title: Text(
                  'Tableaux Sensor',
                  style: GoogleFonts.poppins(
                      color: d_green,
                      fontSize: 16.5,
                      fontWeight: FontWeight.w400),
                ),
                onTap: () => {},
              ),
            ],
          ),
          ExpansionTile(
            leading: const Icon(
              Icons.water_drop,
              color: d_purple,
              size: 30.0,
            ),
            title: Text(
              'Smart Water',
              style: GoogleFonts.poppins(
                  color: d_green, fontSize: 18, fontWeight: FontWeight.w400),
            ),
            children: <Widget>[
              ListTile(
                leading: const Visibility(
                  child: Icon(
                    Icons.ac_unit,
                    size: 15,
                  ),
                  visible: false,
                ),
                title: Text(
                  'Smart Water Bouchrik',
                  style: GoogleFonts.poppins(
                      color: d_green,
                      fontSize: 16.5,
                      fontWeight: FontWeight.w400),
                ),
                onTap: () => {},
              ),
              ListTile(
                title: Text(
                  'Equipements',
                  style: GoogleFonts.poppins(
                      color: d_green,
                      fontSize: 16.5,
                      fontWeight: FontWeight.w400),
                ),
                onTap: () => {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Equipement(),
                    ),
                  ),
                },
              ),
            ],
          ),
          ListTile(
            leading: const Icon(
              Icons.event,
              color: d_purple,
              size: 30.0,
            ),
            title: Text(
              'Evénement',
              style: GoogleFonts.poppins(
                  color: d_green, fontSize: 18, fontWeight: FontWeight.w400),
            ),
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const Event(),
                ),
              ),
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.person,
              color: d_purple,
              size: 30.0,
            ),
            title: Text(
              'Profile',
              style: GoogleFonts.poppins(
                  color: d_green, fontSize: 18, fontWeight: FontWeight.w400),
            ),
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const Profile(),
                ),
              ),
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.exit_to_app,
              color: d_purple,
              size: 30.0,
            ),
            title: Text(
              'Se Déconnecter',
              style: GoogleFonts.poppins(
                  color: d_green, fontSize: 18, fontWeight: FontWeight.w400),
            ),
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const Loginpage(),
                ),
              ),
            },
          ),
        ],
      ),
    );
  }
}
