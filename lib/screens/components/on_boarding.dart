import 'package:flutter/material.dart';
import 'on_boarding_slide.dart';
import 'package:app1/pages/login.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({super.key});

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  int currentePage = 0;
  late PageController pageController;
  List<Map<String, String>> listBoarding = [
    {
      "titulo": "ESPARCIMIENTO",
      "imagen": "assets/images/B1.png",
      "descripcion": "Brindamos todos los servicios para consentir a tu mascota"
    },
    {
      "titulo": "ADOPCION",
      "imagen": "assets/images/B2.png",
      "descripcion":
          "Nulla faucibus tellus ut odio scelerisque vitae molestie lectus feugiat."
    },
    {
      "titulo": "HOSPITALIDAD",
      "imagen": "assets/images/B3.png",
      "descripcion":
          "Nulla faucibus tellus ut odio scelerisque vitae molestie lectus feugiat."
    },
    {
      "titulo": "VETERINARIA",
      "imagen": "assets/images/B4.png",
      "descripcion":
          "Nulla faucibus tellus ut odio scelerisque vitae molestie lectus feugiat."
    },
    {
      "titulo": "TIENDA",
      "imagen": "assets/images/B5.png",
      "descripcion":
          "Compra todas las necesidades de tu mascota sin salir de casa"
    },
  ];

  @override
  void initState() {
    super.initState();
    pageController = PageController(initialPage: 0);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(children: [
        Expanded(
          flex: 20,
          child: PageView.builder(
            onPageChanged: (value) => {
              setState(() {
                currentePage = value;
              })
            },
            itemBuilder: (context, index) => OnBoardingSlide(
              imagen: listBoarding[index]["imagen"],
              titulo: listBoarding[index]["titulo"],
              descripcion: listBoarding[index]["descripcion"],
            ),
            itemCount: listBoarding.length,
            controller: pageController,
          ),
        ),
        Expanded(
          flex: 6,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  listBoarding.length,
                  (index) => Pages(index: index, currentePage: currentePage),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 100),
                child: SizedBox(
                  width: 350,
                  height: 60,
                  child: OutlinedButton(
                    onPressed: () {
                      currentePage == listBoarding.length - 1
                          ? Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const Login(),
                              ),
                            )
                          : pageController.nextPage(
                              curve: Curves.easeInSine,
                              duration: const Duration(milliseconds: 500));
                    },
                    style: OutlinedButton.styleFrom(
                        backgroundColor: currentePage == listBoarding.length - 1
                            ? const Color.fromARGB(255, 136, 201, 45)
                            : const Color.fromARGB(255, 255, 255, 255),
                        side: BorderSide(
                            width: 2.0,
                            color: currentePage == listBoarding.length - 1
                                ? const Color.fromARGB(255, 136, 201, 45)
                                : const Color.fromARGB(193, 105, 81, 81)),
                        textStyle: const TextStyle(
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(28.0),
                        )),
                    child: Text(
                      "Siguiente",
                      style: TextStyle(
                        color: currentePage == listBoarding.length - 1
                            ? const Color.fromARGB(255, 255, 255, 255)
                            : const Color.fromARGB(193, 105, 81, 81),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ]),
    );
  }
}

// ignore: non_constant_identifier_names
AnimatedContainer Pages({required int index, required int currentePage}) {
  return AnimatedContainer(
    // color: currentePage == index ? Colors.amber : Colors.blue,
    margin: const EdgeInsets.only(right: 10),
    duration: kThemeAnimationDuration,
    width: currentePage == index ? 30 : 20,

    height: 5,
    decoration: BoxDecoration(
        color: currentePage == index
            ? const Color.fromARGB(255, 255, 35, 35)
            : const Color.fromARGB(255, 201, 182, 182),
        borderRadius: BorderRadius.circular(20)),
  );
}
