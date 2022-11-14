import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bmi/components/custom_card.dart';
import 'package:bmi/components/icon_card.dart';
import 'package:bmi/constants.dart';
import 'input_segitiga.dart';
import 'input_perpan.dart';
import 'input_persegi.dart';
import 'input_lingkaran.dart';
import 'package:bmi/components/bottom_button.dart';
import 'package:bmi/components/round_icon_button.dart';
import 'package:bmi/calculator.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({Key? key}) : super(key: key);

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  Bangun selectedBangun = Bangun.persegi;
  int height = 160;
  int weight = 60;
  // int age = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: CustomCard(
                    color: selectedBangun == Bangun.persegi
                        ? activeCardColor
                        : inactiveCardColor,
                    cardChild: IconCard(
                      cardIcon: FontAwesomeIcons.square,
                      caption: 'PERSEGI',
                    ),
                    onPress: () {
                      Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => PersegiPage(),
                        ),
                      );
                    },
                  ),
                ),
                Expanded(
                  child: CustomCard(
                    color: selectedBangun == Bangun.persegipjg
                        ? activeCardColor
                        : inactiveCardColor,
                    cardChild: IconCard(
                      cardIcon: FontAwesomeIcons.rectangleList ,
                      caption: 'PERSEGI PANJANG',
                    ),
                    onPress: () {
                      Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => PerpanPage(),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ), 
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: CustomCard(
                    color: selectedBangun == Bangun.lingkaran
                        ? activeCardColor
                        : inactiveCardColor,
                    cardChild: IconCard(
                      cardIcon: FontAwesomeIcons.circle,
                      caption: 'LINGKARAN',
                    ),
                    onPress: () {
                      Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => LingkaranPage(),
                        ),
                      );
                    },
                  ),
                ),
                Expanded(
                  child: CustomCard(
                    color: selectedBangun == Bangun.segitiga
                        ? activeCardColor
                        : inactiveCardColor,
                    cardChild: IconCard(
                      cardIcon: FontAwesomeIcons.triangleExclamation,
                      caption: 'SEGITIGA',
                    ),
                    onPress: () {
                      Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => SegitigaPage(),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
