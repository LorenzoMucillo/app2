import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTitle extends StatelessWidget {
  final String? title;

  const MyTitle({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
                padding: EdgeInsetsGeometry.only(bottom: 8),
                child: Text(
                  title!,
                  style: GoogleFonts.flamenco(
                    textStyle: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,  
                    ),
                  ),
                ),
              );
            }
          }