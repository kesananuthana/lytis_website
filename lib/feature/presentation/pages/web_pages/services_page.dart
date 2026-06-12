import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lytis/core/extensions.dart';
import 'package:lytis/feature/presentation/blocs/bloc/icons_bloc.dart';

class ServicesPage extends StatefulWidget {
  const ServicesPage({super.key});

  @override
  State<ServicesPage> createState() => _ServicesPageState();
}

class _ServicesPageState extends State<ServicesPage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(context.width * 0.05),
      child: Column(
        children: [
          Text(
            'OUR SEREVICES',
            style: GoogleFonts.roboto(
              fontSize: context.width * 0.02,
              color: context.darkBlueColor,
              fontWeight: FontWeight.bold,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: context.width * 0.05,
              top: context.height * 0.02,
            ),
            child: Row(
              children: [
                _BuildGridTile(
                  title: 'Software Development',
                  text:
                      'Bring your vision to life with our custom software solutions.Our skilled developers leverage the latest technologies to create robust,scalable applications designed for your specific requirements.',
                 ),
                SizedBox(width: context.width * 0.02),
                _BuildGridTile(
                  title: 'IT Consulting',
                  text:
                      'Navigate the complexities of technology with our expert guidance.We analyze your systems, identify opportunities for improvement,and craft tailored strategies that drive growth and efficiency.',
                 ),
                SizedBox(width: context.width * 0.02),
                _BuildGridTile(
                  title: 'Cloud Infrastructure Development',
                  text:
                      'Enhance your business agility with our cloud solutions.We design and implement secure, flexible cloud infrastructures that optimize performance and reduce costs.',
                ),
              ],
            ),
          ),
          SizedBox(height: context.height * 0.05),
          Padding(
            padding: EdgeInsets.only(left: context.width * 0.2),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                _BuildGridTile(
                  title: 'CI/CD Implementation',
                  text:
                      'Streamline your software development process with our Continuous Integration and Continuous Deployment (CI/CD) services.We help automate your workflows,ensuring rapid delivery of high-quality software with reduced risk and improved collaboration.',
                ),
                SizedBox(width: context.width * 0.02),
                _BuildGridTile(
                  title: 'Comprehensive IT Services',
                  text:
                      'From system integration to cybersecurity, our range of IT services ensures your technology landscape is not only functional but also future-proof. Our expert team delivers tailored solutions to drive business growth, improve operational efficiency.',
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _BuildGridTile extends StatefulWidget {
  final String title, text;
  const _BuildGridTile({
    required this.title,
    required this.text,
  });

  @override
  State<_BuildGridTile> createState() => _BuildGridTileState();
}

class _BuildGridTileState extends State<_BuildGridTile> {

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
              duration: Duration(milliseconds: 100),
              scale: context.read<IconsBloc>().isHover ? 1.0 : 0.98,
              child: Container(
                height: context.height * 0.5,
                width: context.width * 0.25,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(context.width * 0.02),
                  //color: Colors.white,
                  color:
                      context.read<IconsBloc>().isHover
                          ? Colors.orangeAccent
                          : Color.fromARGB(46, 24, 255, 255),
                ),
                padding: EdgeInsets.all(context.width * 0.023),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Center(
                      child: Text(
                        widget.title,
                        style: GoogleFonts.roboto(
                          color: context.read<IconsBloc>().isHover ? Colors.black : Colors.deepPurple,
                          fontWeight: FontWeight.bold,
                          fontSize: context.width * 0.015,
                          height: context.width * 0.001,
                        ),
                      ),
                    ),
                    SizedBox(height: context.height * 0.02),
                    Text(
                      widget.text,
                      style: GoogleFonts.openSans(
                        color: context.read<IconsBloc>().isHover? Colors.white : Colors.black,
                        fontWeight: FontWeight.w400,
                        fontSize: context.width * 0.01,
                        height: context.width * 0.001,
                      ),
                      textAlign: TextAlign.justify,
                    ),
                    SizedBox(height: context.height * 0.03),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        height: context.height * 0.05,
                        width: context.width * 0.1,
                        decoration: BoxDecoration(
                          color:
                              context.read<IconsBloc>().isHover
                                  ? Colors.teal
                                  : Colors.teal,
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        alignment: Alignment.center,
                        child: Text(
                          'Read More',
                          style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: context.width * 0.01,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
