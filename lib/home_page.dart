import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:plants_care/widgets/toggle_button.dart';
import 'package:provider/provider.dart';

import 'data/toggle_button_model.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('Home',
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 0.5)),
          automaticallyImplyLeading: false),
      body: Column(
        children: [
          Consumer<ToggleButtonModel>(
              builder: (context, model, child) {
                return Container(
                  padding: const EdgeInsets.all(30),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20.0),
                    child: Lottie.asset(
                        'images/tap_water_anim.json',
                        repeat: true,
                        animate: model.isSelected
                    ),
                  ),
                );
              }
          ),
          const Center(child: CustomToggleButton()),
        ]
        ,
      )
      ,
    );
  }
}
