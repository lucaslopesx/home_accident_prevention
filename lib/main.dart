import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFF0C2E8B),
        body: Column(
          children: [
            SafeArea(
              child: Container(
                margin: const EdgeInsets.only(top: 20),
                child: Align(
                  alignment: Alignment.topCenter,
                  child: Text(
                    'Olá amiguinho (a)!',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.fredoka(
                      fontSize: 40,
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Align(
                alignment: Alignment.center,
                child: Text("Prevenção \nde acidentes domésticos",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.fredoka(
                      fontSize: 45,
                      color: Colors.white,
                    )),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                color: const Color(0xFFF4BD18),
                border: Border.all(
                  width: 2,
                  color: const Color(0xFFF7CF5A),
                ),
              ),
              child: TextButton(
                style: ButtonStyle(
                  padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                    const EdgeInsets.symmetric(
                        horizontal: 16.0, vertical: 16.0),
                  ),
                ),
                onPressed: () => {},
                child: Text("VAMOS NESSA!",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.fredoka(
                        fontSize: 30,
                        color: Colors.white,
                        fontWeight: FontWeight.w500)),
              ),
            ),
            FractionallySizedBox(
              widthFactor: 0.9,
              child: Image.asset(
                'images/home.png',
                fit: BoxFit.fitWidth,
              ),
            ),
          ],
        ));
  }
}
