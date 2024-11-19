import 'package:flutter/material.dart';
import 'firebase_service.dart';

class ToggleButtonModel with ChangeNotifier {
  final FirebaseService _firebaseService = FirebaseService();
  bool _isSelected = false;

  bool get isSelected => _isSelected;

  ToggleButtonModel() {
    _firebaseService.dataStream.listen((newState) {
      _isSelected = newState['on_watering'];
      notifyListeners();
    });
  }

  void toggle() async {
    _isSelected = !_isSelected;
    notifyListeners();
    await _firebaseService.updateToggleState(_isSelected);
  }
}
