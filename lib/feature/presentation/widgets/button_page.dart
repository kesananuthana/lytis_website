import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lytis/core/extensions.dart';

/*class ButtonPage extends StatefulWidget {
  const ButtonPage({super.key});

  @override
  State<ButtonPage> createState() => _ButtonPageState();
}

class _ButtonPageState extends State<ButtonPage> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){},
      child: Container(
        height:context.height*0.07,
        width: context.width*0.1,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.blue,
        ),
        child: Center(
          child: Text('Read More',
            style:TextStyle(
              fontSize: 23,
              color: Colors.white,
              fontWeight: FontWeight.w500,
              decoration: TextDecoration.none
            )),
        ),
      ),
    );
  }
}*/

class AppButton extends StatelessWidget {
  final Color? color, textColor;
  final String buttonName;
  final bool isLoading;
  final double? height, width;
  final void Function()? onTap;
  final TextStyle? textStyle;
  const AppButton({
    super.key,
    this.color,
    this.textColor,
    this.height,
    this.width,
    required this.buttonName,
    required this.onTap,
    this.textStyle,
    this.isLoading = false,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: isLoading ? () {} : onTap,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
            color: Colors.teal,
            borderRadius: BorderRadius.circular(12.0)),
        alignment: Alignment.center,
        child: isLoading
            ? CircularProgressIndicator.adaptive(backgroundColor: Colors.white)
            : Text(
                buttonName,
                style: textStyle ??
                    GoogleFonts.poppins(
                        color: textColor ?? Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: context.width * 0.04,
                        decoration: TextDecoration.none),
              ),
      ),
    );
  }
}
