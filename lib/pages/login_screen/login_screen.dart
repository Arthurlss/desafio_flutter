import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        child: Column(
          children: [
            SizedBox(
              height: 100,
            ),
            getLoginContainer(),
            SizedBox(
              height: 100,
            ),
            getPasswordContainer(),
            SizedBox(
              height: 100,
            ),
            Text(
              "Política de Privacidade",
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          HexColor("#1f5869"),
          HexColor("#277278"),
          HexColor("#2b8a86"),
          HexColor("#2b8e89"),
        ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
      ),
    );
  }

  Widget getLoginContainer() {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: Colors.white,
      ),
      width: MediaQuery.of(context).size.width * 0.65,
      child: TextFormField(
        keyboardType: TextInputType.number,
        validator: (value) {},
        style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.blue,
            ),
          ),
          prefixIcon: Icon(
            Icons.person,
            color: Colors.black,
          ),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
        ),
      ),
    );
  }

  Widget getPasswordContainer() {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: Colors.white,
      ),
      width: MediaQuery.of(context).size.width * 0.65,
      child: TextFormField(
        keyboardType: TextInputType.number,
        validator: (value) {},
        style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.blue,
            ),
          ),
          prefixIcon: Icon(
            Icons.key,
            color: Colors.black,
          ),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
        ),
      ),
    );
  }
}
