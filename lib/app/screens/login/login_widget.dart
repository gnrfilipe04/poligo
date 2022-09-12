import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:poligo/app/components/social_button.dart';
import 'package:poligo/app/interfaces/logins_available.dart';
import 'package:poligo/app/screens/login/viewmodel/auth_viewmodel.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  AuthViewModel authViewModel = AuthViewModel();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _body(context: context),
    );
  }
}

_body({required BuildContext context}) {
  return Container(
    color: const Color.fromRGBO(255, 255, 255, 1),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        _woman(context: context),
        _title(),
        _containerButtons(context: context)
      ],
    ),
  );
}

_header({required BuildContext context}) {
  return Container(
    height: MediaQuery.of(context).size.height / 2.33,
    decoration: const BoxDecoration(
        gradient: RadialGradient(
            colors: [Colors.white, Color.fromRGBO(243, 205, 43, 1)])),
  );
}

_woman({required BuildContext context}) {
  return Stack(
    alignment: Alignment.topCenter,
    children: [
      _header(context: context),
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height / 13,
          ),
          Image.asset(
            'woman.png',
            filterQuality: FilterQuality.high,
          )
        ],
      ),
    ],
  );
}

_title() {
  return Padding(
      padding: const EdgeInsets.symmetric(vertical: 28),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _text(text: 'Acompanhe quem', fontWeight: FontWeight.w600),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _text(text: 'decide', fontWeight: FontWeight.w600),
              _text(text: ' o seu futuro', fontWeight: FontWeight.bold)
            ],
          ),
        ],
      ));
}

_text({required String text, required FontWeight fontWeight}) {
  return Text(
    text,
    textAlign: TextAlign.start,
    style: GoogleFonts.poppins(
      textStyle: TextStyle(
          fontSize: 28,
          color: const Color.fromRGBO(88, 86, 102, 1),
          fontWeight: fontWeight),
    ),
  );
}

_containerButtons({required BuildContext context}) {
  AuthViewModel authViewModel = AuthViewModel();
  return Padding(
    padding: const EdgeInsets.symmetric(
      horizontal: 0,
    ),
    child: Column(
      children: [
        SocialButton(
          width: MediaQuery.of(context).size.height / 3.5,
          iconColor: Colors.white,
          icon: FontAwesomeIcons.facebook,
          onPressed: () =>
              authViewModel.onLogin(facebook: true, context: context),
          label: 'Entrar com facebook',
          color: Color.fromRGBO(24, 119, 242, 1),
          borderColor: Colors.white,
          textColor: Colors.white,
        ),
        const SizedBox(
          height: 25,
        ),
        SocialButton(
            paddingIcon: 18,
            image: 'google-icon.png',
            width: MediaQuery.of(context).size.height / 3.5,
            onPressed: () =>
                authViewModel.onLogin(google: true, context: context),
            label: 'Entrar com google',
            color: Color.fromRGBO(250, 250, 252, 1),
            borderColor: Color.fromRGBO(227, 227, 229, 1),
            textColor: Color.fromRGBO(102, 102, 102, 1))
      ],
    ),
  );
}
