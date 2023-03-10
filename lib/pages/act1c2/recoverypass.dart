import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:app1/pages/act1c2/login.dart';

class RecoveryPass extends StatelessWidget {
  const RecoveryPass({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(
          'Recuperar Contraseña',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w400,
          ),
        ),
        backgroundColor: Color.fromRGBO(71, 25, 124, 1),
        leading: BackButton(
          color: Color.fromRGBO(228, 54, 99, 1),
        ),
        leadingWidth: 60,
        titleSpacing: -10,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15.0),
            child: Container(
              width: 75,
              child: Image.asset(
                'assets/images/OutsideLogin.png',
              ),
            ),
          ),
        ],
      ),
      body: Center(
        child: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints viewportConstraints) {
            return SingleChildScrollView(
              child: ConstrainedBox(
                  constraints: BoxConstraints(
                    minHeight: viewportConstraints.maxHeight,
                  ),
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 30,
                          bottom: 48,
                          left: 22,
                          right: 22,
                        ),
                        child: Text(
                          "Por seguridad, tu contraseña debe tener una longitud de entre 8 y 15 caracteres, usar mayúsculas, minúsculas, contener por lo menos un número y un carácter especial.",
                          style: TextStyle(
                              color: Color.fromRGBO(117, 117, 117, 1),
                              fontSize: 17,
                              fontWeight: FontWeight.w900),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 22.0, right: 22, bottom: 185),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            labelUp("Nueva contraseña"),
                            genericField("Nueva Contraseña", 35),
                            labelUp("Confirmar nueva contraseña"),
                            genericField("Confirma tu nueva contraseña", 5),
                            Padding(
                              padding:
                                  const EdgeInsets.only(right: 15.0, left: 15),
                              child: Text(
                                "Ingrese su correo electrónico registrado y le enviaremos un correo electrónico que contiene un enlace para restablecer su contraseña.",
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Color.fromRGBO(192, 192, 192, 1),
                                  height: 1.5,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 80),
                        child: SizedBox(
                          width: 360,
                          height: 60,
                          child: ElevatedButton(
                            child: Text(
                              "Actualizar Contraseña",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const Login(),
                                ),
                              );
                            },
                            style: OutlinedButton.styleFrom(
                              elevation: 0,
                              backgroundColor:
                                  const Color.fromRGBO(128, 166, 96, 1),
                              textStyle: const TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(28.0),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  )),
            );
          },
        ),
      ),
    );
  }

  labelUp(label) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Text(
        label,
        style: TextStyle(fontWeight: FontWeight.w900, fontSize: 17),
      ),
    );
  }

  genericField(hint, double bottomb) {
    return Padding(
      padding: EdgeInsets.only(bottom: bottomb),
      child: TextField(
        decoration: InputDecoration(
          //suffixIcon: Icon(Icons.visibility_off),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Color.fromRGBO(192, 192, 192, 1),
            ),
            borderRadius: BorderRadius.circular(16.0),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Color.fromRGBO(192, 192, 192, 1),
            ),
            borderRadius: BorderRadius.circular(16.0),
          ),
          hintText: hint,
          hintStyle: TextStyle(
            color: Color.fromRGBO(192, 192, 192, 1),
            fontSize: 17,
          ),
          labelStyle: const TextStyle(
            fontSize: 20,
            color: Color.fromRGBO(192, 192, 192, 1),
          ),
        ),
      ),
    );
  }
}
