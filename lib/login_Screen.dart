// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:smart_farm/smartStation/home_page.dart';
import 'package:smart_farm/core/api_client.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  final ApiClient _apiClient = ApiClient();

  Future<void> login(String email, password) async {
    //show snackbar to indicate loading
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: const Text('Processing Data'),
      backgroundColor: Colors.green.shade300,
    ));

    //get response from ApiClient
    dynamic res = await _apiClient.login(
      email,
      password,
    );
    ScaffoldMessenger.of(context).hideCurrentSnackBar();
    print(res['result']);
    // 2. decode the json
    // final parsedJson = jsonDecode(res);
// 3. print the type and value
    // print('${parsedJson.runtimeType} : $parsedJson');
    //  print(jsonDecode(res.toString()).result);
    //if there is no error, get the user's accesstoken and pass it to HomeScreen
    if (res['result'] != null) {
      String session = res['result']['session_id'];
      String statuinnid = "1";
      //get data for home
      // dynamic resdatameteo = await _apiClient.smart_metio(
      //   statuinnid,
      //   session,
      // );
      // print(resdatameteo);
      // String temp = (resdatameteo['results']).toString();
      // print(temp.toString());
      Navigator.push(
          context, MaterialPageRoute(builder: (context) =>  Homepage()));
    } else {
      //if an error occurs, show snackbar with error message
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content:const Text('Error: email ou mot de passe incorrecte'),
        backgroundColor: Colors.red.shade300,
      ));
    }
  }

  /*void login(String email, password) async {
    try {
      Response response = await post(
          Uri.parse(
              'https://erp.smartfarm.com.tn/web/session/mobile_authenticate'),
          body: {
            'params': {'db': 'smartfarm', 'login': email, 'password': password}
          });

      if (response.statusCode == 200) {
        print("DATATAA1" + response.toString());
        var data = jsonDecode(response.body.toString());
        print("DATATAA2" + data['token']);
        print('Login successfully');
      } else {
        print('failed');
      }
    } catch (e) {
      print(e.toString());
    }
  }*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign Up Api'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              controller: emailController,
              decoration:const InputDecoration(hintText: 'Email'),
            ),
           const SizedBox(
              height: 20,
            ),
            TextFormField(
              controller: passwordController,
              decoration: const InputDecoration(hintText: 'Password'),
            ),
            const SizedBox(
              height: 40,
            ),
            GestureDetector(
              onTap: () {
                login(emailController.text.toString(),
                    passwordController.text.toString());
              },
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(10)),
                child: const Center(
                  child: Text('Login'),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
