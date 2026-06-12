import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lytis/core/extensions.dart';
import 'package:lytis/feature/presentation/widgets/button_page.dart';


class AboutPage extends StatefulWidget {
  const AboutPage({super.key});

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    return  Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
              height: context.height*0.66,
              width: context.width*0.3,
              decoration: BoxDecoration(
                  image:  DecorationImage(
                    image:AssetImage('assets/about.png'), 
                  ),
                  borderRadius: BorderRadius.circular(context.width * 0.01),
                ),
            ),
           Container(
                height: context.height * 0.4,
                width: context.width * 0.5,
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.only(left:context.width*0.009),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text('ABOUT US',
                          style: GoogleFonts.roboto(
                              fontSize: context.width * 0.02,
                              color:context.darkBlueColor,
                              fontWeight: FontWeight.bold
                        ),
                      ),
                    SizedBox(
                      height: context.height*0.015,
                    ),
                    Text('Lytis Software Private Limited is an Indian-based software development and IT services company, incorporated on November 10, 2022, with its headquarters in Rajasthan, India. As a privately held company, Lytis specializes in custom software development, web development, mobile app development, and IT consulting, catering to diverse client needs.',
                      style: 
                      GoogleFonts.openSans(
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                          fontSize: context.width * 0.012,
                          height: context.width*0.001
                        ),
                      textAlign: TextAlign.justify,
                    ),SizedBox(
                      height: context.height*0.015,
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
        ],
    );
  }
}


