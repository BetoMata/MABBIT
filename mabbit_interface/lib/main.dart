import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mabbit_interface/constants.dart';
import 'package:mabbit_interface/screens/details_screen.dart';
import 'package:mabbit_interface/widgets/bottom_nav_bar.dart';
import 'package:mabbit_interface/widgets/category_card.dart';
import 'package:mabbit_interface/widgets/search_bar.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  //Raiz de la aplicación
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MABBIT',
      theme: ThemeData(
        fontFamily: "Cairo",
        scaffoldBackgroundColor: kBackgroundColor,
        textTheme: Theme.of(context).textTheme.apply(displayColor: kTextColor),
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size; //Valor de la altura total
    return Scaffold(
      bottomNavigationBar: BottomNavBar(),
      body: Stack(
        children: <Widget>[
          Container(
            height: size.height * .45,
            decoration: BoxDecoration(
              color: Color(0xFFF5CEB8),
              image: DecorationImage(
                alignment: Alignment.centerLeft,
                image: AssetImage("assets/images/undraw_pilates_gpdb.png"),
              ),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      alignment: Alignment.center,
                      height: 52,
                      width: 52,
                      decoration: BoxDecoration(
                        color: Color(0xFFF2BEA1),
                        shape: BoxShape.circle,
                      ),
                      child: SvgPicture.asset("assets/icons/menu.svg"),
                    ),
                  ),
                  Text(
                    "Buenos dias \nErick",
                    style: Theme.of(context)
                        .textTheme
                        .display1
                        .copyWith(fontWeight: FontWeight.w900),
                  ),
                  SearchBar(),
                  Expanded(
                    child: GridView.count(
                      crossAxisCount: 2,
                      childAspectRatio: .85,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20,
                      children: <Widget>[
                        CategoryCard(
                          title: "Recomendacion de Dieta",
                          svgSrc: "assets/icons/Hamburger.svg",
                          press: () {},
                        ),
                        CategoryCard(
                          title: "Recomendacion de Estiramientos",
                          svgSrc: "assets/icons/Excrecises.svg",
                          press: () {},
                        ),
                        CategoryCard(
                          title: "Ejercicios de Meditacion",
                          svgSrc: "assets/icons/Meditation.svg",
                          press: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) {
                                return DetailsScreen();
                              }),
                            );
                          },
                        ),
                        CategoryCard(
                          title: "Ejercicios de Yoga",
                          svgSrc: "assets/icons/yoga.svg",
                          press: () {},
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
