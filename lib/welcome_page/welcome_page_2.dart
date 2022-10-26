import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smart_farm/main.dart';
import 'package:smart_farm/welcome_page/welcome_page_3.dart';
import 'package:smart_farm/welcome_page/welcome_page_4.dart';

class WelcomePage2 extends StatelessWidget {
  const WelcomePage2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          const SizedBox(height: 100.0),
          Image.asset("assets/farm_2.png"),
          const SizedBox(height: 20.0),
          Text(
            "Les données météorologiques de votre ferme sont entre vos mains",
            textAlign: TextAlign.center,
            style: GoogleFonts.poppins(color: d_green, fontSize: 23),
          ),
          const SizedBox(height: 50.0),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 60),
            child: Row(
              children: [
                Expanded(
                  child: Align(
                    alignment: Alignment.bottomLeft,
                    child: TextButton(
                      child: const Text('Passer'),
                      style: TextButton.styleFrom(
                        primary: d_purple,
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const WelcomePage4(),
                          ),
                        );
                      },
                    ),
                  ),
                  flex: 1,
                ),
                //SizedBox(width: 30),
                Expanded(
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: TextButton(
                      child: const Text('Suivant'),
                      style: TextButton.styleFrom(
                        primary: Colors.black,
                        backgroundColor: d_purple,
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const WelcomePage3(),
                          ),
                        );
                      },
                    ),
                  ),
                  flex: 1,
                )
              ],
            ),
          ),
        ],
      )),
    );
  }
}
