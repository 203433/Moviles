import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:app1/pages/act1c2/registration.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 70),
          child: Column(children: <Widget>[
            Image.asset(
              "assets/images/login.png",
              width: 300,
              height: 300,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: SizedBox(
                width: 300,
                height: 40,
                child: ElevatedButton.icon(
                  label: const Text(
                    "Continuar con Google",
                    style: TextStyle(
                      color: Color.fromRGBO(255, 255, 255, 1),
                    ),
                  ),
                  onPressed: null,
                  icon: SvgPicture.asset("assets/images/google.svg",
                      color: Colors.white),
                  style: OutlinedButton.styleFrom(
                    backgroundColor: const Color.fromRGBO(63, 104, 236, 1),
                    textStyle: const TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(28.0),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: SizedBox(
                width: 300,
                height: 40,
                child: ElevatedButton.icon(
                  label: const Text(
                    "Continuar con Google",
                    style: TextStyle(
                      color: Color.fromRGBO(255, 255, 255, 1),
                    ),
                  ),
                  onPressed: null,
                  icon: SvgPicture.asset(
                    "assets/images/facebook.svg",
                    color: Colors.white,
                  ),
                  style: OutlinedButton.styleFrom(
                    elevation: 0,
                    backgroundColor: const Color.fromRGBO(56, 78, 159, 1),
                    textStyle: const TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(28.0),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: SizedBox(
                width: 300,
                height: 40,
                child: ElevatedButton.icon(
                  label: const Text(
                    "Registrarse con e-mail",
                    style: TextStyle(
                      color: Color.fromRGBO(101, 103, 110, 1),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Registration(),
                      ),
                    );
                  },
                  icon: const Icon(
                    Icons.mail,
                    color: Color.fromRGBO(101, 103, 110, 1),
                  ),
                  style: OutlinedButton.styleFrom(
                    elevation: 0,
                    backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
                    textStyle: const TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(28.0),
                    ),
                    side: const BorderSide(
                      width: 2.0,
                      color: Color.fromRGBO(101, 103, 110, 1),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50, bottom: 10),
              child: SizedBox(
                height: 20,
                child: TextButton(
                  onPressed: null,
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.zero,
                  ),
                  child: const Text(
                    "Entrar como invitado",
                    style: TextStyle(
                      color: Color.fromRGBO(231, 56, 99, 1),
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 30),
              child: SizedBox(
                height: 20,
                child: TextButton(
                  onPressed: null,
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.zero,
                  ),
                  child: const Text(
                    "Entrar como vendedor",
                    style: TextStyle(
                      color: Color.fromRGBO(142, 176, 114, 1),
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "¿Ya tienes una cuenta?",
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                TextButton(
                  onPressed: null,
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.only(left: 4),
                  ),
                  child: const Text(
                    "Iniciar Sesión",
                    style: TextStyle(
                      color: Color.fromRGBO(231, 56, 99, 1),
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ]),
        ),
      ),
    );
  }
}
