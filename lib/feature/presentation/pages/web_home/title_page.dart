import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lytis/core/extensions.dart';
import 'package:lytis/feature/presentation/blocs/bloc/title_bloc.dart';
import 'package:lytis/feature/presentation/pages/web_pages/about_page.dart';
import 'package:lytis/feature/presentation/pages/web_pages/contact_page.dart';
import 'package:lytis/feature/presentation/pages/web_pages/footer_page.dart';
import 'package:lytis/feature/presentation/pages/web_pages/home_page.dart';
import 'package:lytis/feature/presentation/pages/web_pages/services_page.dart';

class TitlePage extends StatefulWidget {
  const TitlePage({super.key});

  @override
  State<TitlePage> createState() => _TitlePageState();
}

class _TitlePageState extends State<TitlePage> {
  final homeKey = GlobalKey();
  final aboutKey = GlobalKey();
  final servicesKey = GlobalKey();
  final contactKey = GlobalKey();

  void scroll(GlobalKey key) {
    Scrollable.ensureVisible(
      key.currentContext!,
      duration: Duration(seconds: 1),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        //backgroundColor: Colors.teal,
        backgroundColor: Colors.amber,
        title: Padding(
          padding: EdgeInsets.only(left: context.width * 0.02),
          child: Text(
            'Lytis',
            style: GoogleFonts.dancingScript(
              fontSize: context.width * 0.04,
              fontWeight: FontWeight.bold,
              color: Colors.white,
              decoration: TextDecoration.none,
            ),
          ),
        ),
        toolbarHeight: context.height * 0.13,
        actions: [
          BuildMenu(text: 'Home', scrolling: homeKey, scrollFunction: scroll),
          SizedBox(width: context.width * 0.02),
          BuildMenu(
            text: 'About us',
            scrolling: aboutKey,
            scrollFunction: scroll,
          ),
          SizedBox(width: context.width * 0.02),
          BuildMenu(
            text: 'Services',
            scrolling: servicesKey,
            scrollFunction: scroll,
          ),
          SizedBox(width: context.width * 0.02),
          BuildMenu(
            text: 'Contact us',
            scrolling: contactKey,
            scrollFunction: scroll,
          ),
          SizedBox(width: context.width * 0.02),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: context.height * 0.8,
              key: homeKey,
              child: HomePage(),
            ),
            SizedBox(
              key: aboutKey,
              height: context.height * 0.8,
              width: double.infinity,
              child: AboutPage(),
            ),
            SizedBox(
              key: servicesKey,
              height: context.height * 1.42,
              width: double.infinity,
              child: ServicesPage(),
            ),
            SizedBox(
              key: contactKey,
              height: context.height * 0.8,
              width: double.infinity,
              child: ContactPage(),
            ),
            SizedBox(child: FooterPage()),
          ],
        ),
      ),
    );
  }
}

class BuildMenu extends StatefulWidget {
  final String text;
  final Function scrollFunction;
  final GlobalKey scrolling;
  const BuildMenu({
    super.key,
    required this.text,
    required this.scrolling,
    required this.scrollFunction,
  });

  @override
  State<BuildMenu> createState() => _BuildMenuState();
}

class _BuildMenuState extends State<BuildMenu> {
  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => TitleBloc(),
      child: BlocBuilder<TitleBloc, TitleState>(
        builder: (context, state) {
          if (state is TitleHover) {}
          return MouseRegion(
            onEnter: (event) {
              context.read<TitleBloc>().add(TitleHoverEvent());
            },
            onExit: (event) {
              context.read<TitleBloc>().add(TitleHoverEvent());
            },
            child: GestureDetector(
              onTap: () {
                widget.scrollFunction(widget.scrolling);
              },
              child: Text(
                widget.text,
                style: GoogleFonts.roboto(
                  color:
                      context.read<TitleBloc>().isHover
                          ? Colors.black
                          : Colors.white,
                  fontSize: context.width * 0.013,
                  fontWeight: FontWeight.w500,
                  decoration: TextDecoration.none,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
