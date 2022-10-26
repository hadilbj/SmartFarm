import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smart_farm/core/api_client.dart';
import 'package:smart_farm/main.dart';
import 'package:smart_farm/smartStation/home_page.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({Key? key}) : super(key: key);

  @override
  _LoginpageState createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final ApiClient _apiClient = ApiClient();
  Future<void> login(String email, password) async {
    // Obtain shared preferences.
    final prefs = await SharedPreferences.getInstance();
    //show snackbar to indicate loading
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: const Text('Données en cours'),
        backgroundColor: Colors.green.shade300,
      ),
    );

    //get response from ApiClient
    dynamic res = await _apiClient.login(
      emailController.text,
      passwordController.text,
    );

    ScaffoldMessenger.of(context).hideCurrentSnackBar();

    if (res['result'] != null) {
      String session = res['result']['session_id'];
      prefs.setString("session_id", session);
      String statuinnid = "1";

      Navigator.push(
          context, MaterialPageRoute(builder: (context) => Homepage()));
    } else {
      //if an error occurs, show snackbar with error message
      Fluttertoast.showToast(
          msg: "email ou mot de passe incorrecte",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      // padding: const EdgeInsets.all(10),
      body: ListView(
        children: <Widget>[
          Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.all(7),
              child: Image.asset("assets/logo_Smartfarm.png")),
          Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.all(10),
              child: Text(
                'Veuillez saisir vos identifiants',
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontSize: 21,
                    fontWeight: FontWeight.bold),
              )),
          const SizedBox(height: 25),
          Container(
            padding: const EdgeInsets.all(10),
            child: TextField(
              enableSuggestions: false,
              autocorrect: false,
              keyboardType: TextInputType.emailAddress,
              controller: emailController,
              decoration: const InputDecoration(
                hintText: 'Email',
              ),
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
              boxShadow: const [
                BoxShadow(color: Colors.white, spreadRadius: 3),
              ],
            ),
            height: 40,
          ),
          const SizedBox(
            height: 50.0,
          ),
          Container(
            padding: const EdgeInsets.all(10),
            child: TextField(
              obscureText: true,
              enableSuggestions: false,
              autocorrect: false,
              controller: passwordController,
              decoration: const InputDecoration(
                hintText: 'mot de passe ',
              ),
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
              boxShadow: const [
                BoxShadow(color: Colors.white, spreadRadius: 3),
              ],
            ),
            height: 40,
          ),
          TextButton(
            onPressed: () {},
            child: Text(
              'Mot de passe oublié?',
              style: GoogleFonts.poppins(color: d_green, fontSize: 13.5),
            ),
          ),
          const SizedBox(
            height: 50.0,
          ),
          RawMaterialButton(
            fillColor: d_green,
            padding: const EdgeInsets.symmetric(vertical: 1.0),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0)),
            onPressed: () {
              login(emailController.toString(), passwordController.toString());
            },
            child: Text(
              'SE CONNECTER ',
              style: GoogleFonts.poppins(color: Colors.white, fontSize: 15.0),
            ),
          ),
        ],
      ),
    );
  }
}
