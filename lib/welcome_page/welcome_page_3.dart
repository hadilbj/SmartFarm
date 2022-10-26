import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smart_farm/main.dart';
import 'package:smart_farm/welcome_page/welcome_page_4.dart';

class WelcomePage3 extends StatelessWidget {
  const WelcomePage3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          const SizedBox(height: 120.0),
          Image.asset("assets/farm_3.png"),
          const SizedBox(height: 20.0),
          Text(
            "Iot pour votre smart Farm",
            textAlign: TextAlign.center,
            style: GoogleFonts.poppins(color: d_green, fontSize: 25),
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
                            builder: (context) => const WelcomePage4(),
                          ),
                        );
                      },
                    ),
                  ),
                  flex: 1,
                )
              ],
            ),
          )
        ],
      )),
    );
  }
}
