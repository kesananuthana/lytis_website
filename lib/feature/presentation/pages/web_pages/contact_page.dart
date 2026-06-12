import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lytis/core/extensions.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lytis/feature/presentation/widgets/button_page.dart';

class ContactPage extends StatefulWidget {
  const ContactPage({super.key});

  @override
  State<ContactPage> createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  TextEditingController nameController = TextEditingController(),
      emailController = TextEditingController(),
      messageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'CONTACT US',
          style: GoogleFonts.roboto(
            fontSize: context.width * 0.02,
            color: context.darkBlueColor,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: context.height * 0.03),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              height: context.height * 0.6,
              width: context.width * 0.45,
              padding: EdgeInsets.only(left: context.width * 0.04),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'CONTACT INFORMATION',
                    style: GoogleFonts.roboto(
                      fontSize: context.width * 0.015,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: context.height * 0.02),
                  Text(
                    'If you have any queries, please reach out to us using the information provided. We are here to help.',
                    style: GoogleFonts.roboto(
                      color: context.darkBlueColor,
                      fontWeight: FontWeight.w400,
                      fontSize: context.width * 0.012,
                      decoration: TextDecoration.none,
                      height: context.width * 0.001,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                  SizedBox(height: context.height * 0.02),
                  Text(
                    'CEO :',
                    style: GoogleFonts.roboto(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: context.width * 0.014,
                      decoration: TextDecoration.none,
                    ),
                  ),
                  SizedBox(height: context.height * 0.02),
                  Text(
                    'Astha Jain',
                    style: GoogleFonts.roboto(
                      color: context.darkBlueColor,
                      fontWeight: FontWeight.w500,
                      fontSize: context.width * 0.013,
                      decoration: TextDecoration.none,
                    ),
                  ),
                  SizedBox(height: context.height * 0.02),
                  Text(
                    'Email :',
                    style: GoogleFonts.roboto(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: context.width * 0.014,
                      decoration: TextDecoration.none,
                    ),
                  ),
                  SizedBox(height: context.height * 0.02),
                  Text(
                    'lytisindia@protonmail.com',
                    style: GoogleFonts.roboto(
                      color: context.darkBlueColor,
                      fontWeight: FontWeight.w500,
                      fontSize: context.width * 0.013,
                      decoration: TextDecoration.none,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                  SizedBox(height: context.height * 0.02),
                  Text(
                    'Connect with us',
                    style: GoogleFonts.roboto(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: context.width * 0.014,
                      decoration: TextDecoration.none,
                    ),
                  ),
                  SizedBox(height: context.height * 0.02),
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          FontAwesomeIcons.facebook,
                          size: context.width * 0.02,
                          color: Colors.blue,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          FontAwesomeIcons.twitter,
                          color: Colors.blue,
                          size: context.width * 0.02,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          FontAwesomeIcons.linkedin,
                          color: Colors.blue,
                          size: context.width * 0.02,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          FontAwesomeIcons.instagram,
                          color: Colors.pink,
                          size: context.width * 0.02,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
             Card(
                child: Container(
                  height: context.height * 0.645,
                  width: context.width * 0.3,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(context.width * 0.01),
                    //border: Border.all(color: Colors.teal),
                    color: Colors.grey.withOpacity(0.001),
                  ),
                  padding: EdgeInsets.all(context.width * 0.03),
                  child: Column(
                    children: [
                      Text(
                        'Get In Touch',
                        style: GoogleFonts.roboto(
                          color: context.darkBlueColor,
                          fontWeight: FontWeight.bold,
                          fontSize: context.width * 0.015,
                        ),
                      ),
                      SizedBox(height: context.height * 0.03),
                      Form(
                        key: formKey,
                        child: BuildInformationListTile(
                          hinttext: 'Name',
                          controller: nameController,
                          iconData: Icon(Icons.person),
                          lines: 1,
                          validator: (val) {
                            if (val!.isEmpty) {
                              return 'Enter name';
                            }
                            return null;
                          },
                        ),
                      ),
                      SizedBox(height: context.height * 0.03),
                      BuildInformationListTile(
                        hinttext: 'Email',
                        controller: emailController,
                        iconData: Icon(Icons.email),
                        lines: 1,
                        validator: (val) {
                          if (val!.isEmpty) {
                            return 'Enter email';
                          }
                          return null;
                        },
                      ),
                      SizedBox(height: context.height * 0.03),
                      BuildInformationListTile(
                        hinttext: ' Type Your Message',
                        controller: messageController,
                        iconData: Icon(Icons.message),
                        lines: 4,
                        validator: (val) {
                          if (val!.isEmpty) {
                            return 'Enter your message';
                          }
                          return null;
                        },
                      ),
                      SizedBox(height: context.height * 0.03),
                      AppButton(
                        height: context.height * 0.07,
                        width: context.width * 0.1,
                        textStyle: GoogleFonts.roboto(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: context.width * 0.014,
                          decoration: TextDecoration.none,
                        ),
                        buttonName: 'SEND',
                        onTap: () {
                        },
                      ),
                    ],
                  ),
                ),
              ),
          ],
        ),
      ],
    );
  }
}

class BuildInformationListTile extends StatefulWidget {
  final String hinttext;
  final TextEditingController controller;
  final int lines;
  final Icon iconData;
  final String? Function(String?)? validator;
  const BuildInformationListTile({
    required this.hinttext,
    required this.controller,
    required this.iconData,
    required this.lines,
    required this.validator,
    super.key,
  });

  @override
  State<BuildInformationListTile> createState() =>
      _BuildInformationListTileState();
}

class _BuildInformationListTileState extends State<BuildInformationListTile> {
  final formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formkey,
      child: Column(
        children: [
          TextFormField(
            controller: widget.controller,
            maxLines: widget.lines,
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(context.width * 0.005),
                borderSide: BorderSide(
                  color: Colors.black,
                  width: context.width * 0.0004,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.teal,
                  width: context.width * 0.0015,
                ),
                borderRadius: BorderRadius.circular(context.width * 0.005),
              ),
              filled: true,
              fillColor: Colors.white,
              hintText: widget.hinttext,
              hintStyle: GoogleFonts.roboto(
                color: Colors.black,
                fontSize: context.width * 0.010,
              ),
              contentPadding: EdgeInsets.only(
                left: context.width * 0.01,
                top: context.height * 0.03,
              ),
            ),
            validator: widget.validator,
          ),
        ],
      ),
    );
  }
}
