import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class SocialButton extends StatelessWidget {
  SocialButton(
      {Key? key,
      required this.onPressed,
      required this.label,
      required this.color,
      required this.textColor,
      this.icon,
      this.iconColor,
      required this.width,
      required this.borderColor,
      this.paddingIcon,
      this.image = ''})
      : super(key: key);

  final void Function() onPressed;
  final String label;
  final Color color;
  final Color textColor;
  late IconData? icon;
  late Color? iconColor;
  final double width;
  final Color borderColor;
  late String image;
  late double? paddingIcon;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.all(paddingIcon ?? 13),
            decoration: BoxDecoration(
                color: color,
                border: Border(
                    bottom: BorderSide(color: borderColor, width: 1),
                    top: BorderSide(color: borderColor, width: 1),
                    left: BorderSide(color: borderColor, width: 1),
                    right: BorderSide(color: borderColor, width: 1)),
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(5),
                    bottomLeft: Radius.circular(5))),
            child: image.isEmpty
                ? FaIcon(
                    icon,
                    size: 35,
                    color: iconColor,
                  )
                : Image.asset(image),
          ),
          Container(
              padding: const EdgeInsets.only(top: 20, bottom: 20),
              width: width,
              decoration: BoxDecoration(
                  color: color,
                  border: Border(
                      bottom: BorderSide(color: borderColor, width: 1),
                      top: BorderSide(color: borderColor, width: 1),
                      left: BorderSide(color: borderColor, width: 1),
                      right: BorderSide(color: borderColor, width: 1)),
                  borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(5),
                      bottomRight: Radius.circular(5))),
              child: Text(
                label,
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                        fontWeight: FontWeight.normal, color: textColor)),
              ))
        ],
      ),
    );
  }
}
