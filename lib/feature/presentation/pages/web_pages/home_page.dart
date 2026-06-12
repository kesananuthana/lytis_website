import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lytis/core/extensions.dart';
import 'package:lytis/feature/presentation/widgets/button_page.dart';



class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
              height: context.height * 0.6,
              width: context.width * 0.48,
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(top: context.height * 0.06),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'WELCOME TO LYTIS SOFTWARES',
                    style: GoogleFonts.daiBannaSil(
                        fontSize: context.width * 0.035,
                        fontWeight: FontWeight.bold,
                        color: context.darkBlueColor),
                  ),
                  SizedBox(
                    height: context.height * 0.015,
                  ),
                  Padding(
                      padding: EdgeInsets.only(left: context.width * 0.04),
                      child: Text(
                        'Your Trusted Partner in IT Solutions',
                        style: GoogleFonts.daiBannaSil(
                            fontSize: context.width * 0.025,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      )),
                  SizedBox(
                    height: context.height * 0.015,
                  ),
                  Text(
                    'At Lytis Softwares, we are dedicated to transforming your ideas into innovative digital solutions.Based in India, we specialize in a comprehensive range of services tailored to meet the unique needs of your business.',
                    style: GoogleFonts.openSans(
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                        fontSize: context.width * 0.012,
                        height: context.width * 0.001),
                    textAlign: TextAlign.justify,
                  ),
                  SizedBox(
                    height: context.height * 0.015,
                  ),
                  AppButton(
                      height: context.height * 0.07,
                      width: context.width * 0.1,
                      textStyle: GoogleFonts.roboto(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: context.width * 0.014,
                      ),
                      buttonName: 'Read More',
                      onTap: () {}),
                ],
              )),
          Container(
            height: context.height * 0.66,
            width: context.width * 0.3,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/emp.jpeg'),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(context.width * 0.01),
            ),
          ),
        ],
    );
  }
}
