import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'dart:html' as html;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const apkUrl = "https://raw.githubusercontent.com/AdrianAmec/webQR/main/apk/android-debug.apk";

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xFF020A1A),
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              // TÍTULO
              const Text(
                "OCEAN PARK",
                style: TextStyle(
                  color: Color(0xFF6FE7DD),
                  fontSize: 28,
                  letterSpacing: 2,
                  fontWeight: FontWeight.w500,
                ),
              ),

              const SizedBox(height: 30),

              // TEXTO
              const Text(
                "Descarga el juego",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white70,
                  fontSize: 16,
                ),
              ),

              const SizedBox(height: 40),

              // QR
              QrImageView(
                data: apkUrl,
                size: 180,
                backgroundColor: Colors.white,
              ),

              const SizedBox(height: 30),

              // BOTÓN ABAJO
              GestureDetector(
                onTap: () {
                  html.window.open(apkUrl, "_blank");
                },
                child: Container(
                  width: 300,
                  height: 50,
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      colors: [
                        Color(0xFF00C6A7),
                        Color(0xFF00A896),
                      ],
                    ),
                    borderRadius: BorderRadius.circular(6),
                  ),
                  alignment: Alignment.center,
                  child: const Text(
                    "DESCARGAR",
                    style: TextStyle(
                      color: Colors.white,
                      letterSpacing: 1,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}