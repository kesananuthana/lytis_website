import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lytis/core/extensions.dart';
import 'package:lytis/feature/presentation/blocs/bloc/icons_bloc.dart';

class FooterPage extends StatefulWidget {
  const FooterPage({super.key});

  @override
  State<FooterPage> createState() => _FooterPageState();
}

class _FooterPageState extends State<FooterPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: context.height * 0.23,
      width: double.infinity,
      color: Colors.black,
      padding: EdgeInsets.only(top: context.height * .04),
      child: Center(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                BuildIcons(
                  icons: FontAwesomeIcons.facebook,
                  color: Colors.blue,
                ),
                SizedBox(width: context.width * 0.01),
                BuildIcons(icons: FontAwesomeIcons.twitter, color: Colors.blue),
                SizedBox(width: context.width * 0.01),
                BuildIcons(
                  icons: FontAwesomeIcons.instagram,
                  color: Colors.pinkAccent,
                ),
                SizedBox(width: context.width * 0.01),
                BuildIcons(
                  icons: FontAwesomeIcons.linkedin,
                  color: Colors.blue,
                ),
                SizedBox(width: context.width * 0.01),
                BuildIcons(icons: FontAwesomeIcons.youtube, color: Colors.red),
              ],
            ),
            SizedBox(height: context.height * 0.02),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Home',
                  style: GoogleFonts.roboto(
                    color: Colors.white,
                    fontSize: context.width * 0.011,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(width: context.width * 0.01),
                Text(
                  'About us',
                  style: GoogleFonts.roboto(
                    color: Colors.white,
                    fontSize: context.width * 0.011,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(width: context.width * 0.01),
                Text(
                  'Services',
                  style: GoogleFonts.roboto(
                    color: Colors.white,
                    fontSize: context.width * 0.011,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(width: context.width * 0.01),
                Text(
                  'Contact us',
                  style: GoogleFonts.roboto(
                    color: Colors.white,
                    fontSize: context.width * 0.011,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class BuildIcons extends StatefulWidget {
  final IconData icons;
  final Color color;
  const BuildIcons({required this.icons, required this.color, super.key});

  @override
  State<BuildIcons> createState() => _BuildIconsState();
}

class _BuildIconsState extends State<BuildIcons> {
  
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => IconsBloc(),
      child: BlocBuilder<IconsBloc, IconsState>(
        builder: (context, state) {
          return MouseRegion(
            onEnter: (event) {
              context.read<IconsBloc>().add(IconsHoverEvent());
            },
            onExit: (event) {
              context.read<IconsBloc>().add(IconsHoverEvent());
            },
            child: AnimatedScale(
              duration: Duration(milliseconds: 200),
              scale: context.read<IconsBloc>().isHover? 1.1 : 1.0,
              child: CircleAvatar(
                radius: context.width * 0.015,
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    widget.icons,
                    color: widget.color,
                    size: context.width * 0.02,
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
