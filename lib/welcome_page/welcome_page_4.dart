import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smart_farm/login_page.dart';
import 'package:smart_farm/main.dart';

class WelcomePage4 extends StatelessWidget {
  const WelcomePage4({Key? key}) : super(key: key);

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
          Image.asset("assets/farm_4.png"),
          const SizedBox(height: 20.0),
          Text(
            "Gérez les événements et surveillez votre ferme ",
            textAlign: TextAlign.center,
            style: GoogleFonts.poppins(color: d_green, fontSize: 25),
          ),
          const SizedBox(height: 50.0),
          Align(
              alignment: Alignment.centerRight,
              child: Padding(
                  padding: const EdgeInsets.only(right: 50),
                  child: TextButton(
                    child: const Text('ENTRER'),
                    style: TextButton.styleFrom(
                      primary: Colors.black,
                      backgroundColor: d_purple,
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Loginpage()));
                    },
                  ))),
        ],
      )),
    );
  }
}
