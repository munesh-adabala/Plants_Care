import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../data/toggle_button_model.dart';

class CustomToggleButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<ToggleButtonModel>(
      builder: (context, model, child) {
        return GestureDetector(
          onTap: () {
            model.toggle();
          },
          child: Container(
            height: 60,
            width: 130,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: model.isSelected ? Colors.green : Colors.grey[400],
              boxShadow: [
                BoxShadow(
                  color: Colors.black26,
                  offset: Offset(0, 3),
                  blurRadius: 6,
                  spreadRadius: 1,
                ),
              ],
            ),
            child: Stack(
              children: [
                Positioned(
                  left: 8,
                  top: 8,
                  bottom: 8,
                  width: 50,
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'OFF',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  right: 8,
                  top: 8,
                  bottom: 8,
                  width: 50,
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      'ON',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
                AnimatedPositioned(
                  duration: Duration(milliseconds: 300),
                  curve: Curves.easeInOut,
                  left: model.isSelected ? 70 : 0,
                  top: 4,
                  bottom: 4,
                  width: 60,
                  child: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                      border: Border.all(
                        color: model.isSelected ? Colors.green : Colors.grey,
                        width: 4,
                      ),
                    ),
                    child: Center(
                      child: Container(
                        width: 30,
                        height: 30,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: model.isSelected ? Colors.green : Colors.grey[300],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
