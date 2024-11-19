import 'package:firebase_database/firebase_database.dart';
import 'dart:async';

class FirebaseService {
  final DatabaseReference _dataRef = FirebaseDatabase.instance.ref('data');

  Stream<Map<String, dynamic>> get dataStream {
    return _dataRef.onValue.map((event) {
      final data = event.snapshot.value as Map<dynamic, dynamic>;
      return data.map((key, value) => MapEntry(key.toString(), value));
    });
  }

  Future<void> updateData(Map<String, dynamic> newData) async {
    await _dataRef.update(newData);
  }

  Future<void> updateToggleState(bool state) async {
    await updateData({'on_watering': state});
  }
}
