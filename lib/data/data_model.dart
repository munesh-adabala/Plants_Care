import 'package:flutter/material.dart';
import 'firebase_service.dart';

class DataModel with ChangeNotifier {
  final FirebaseService _firebaseService = FirebaseService();
  Map<String, dynamic>? _data;

  Map<String, dynamic>? get data => _data;

  DataModel() {
    _firebaseService.dataStream.listen((newData) {
      _data = newData;
      notifyListeners();
    });
  }

  Future<void> updateData(Map<String, dynamic> newData) async {
    await _firebaseService.updateData(newData);
  }
}
