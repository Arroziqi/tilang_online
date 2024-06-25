import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreMasukan {
  // get collection of Masukan
  final CollectionReference masukans = FirebaseFirestore.instance.collection('masukan');
  // CREATE:
  Future<void> addMasukan(Map<String, dynamic> data) {
    data['timestamp'] = FieldValue.serverTimestamp(); // Menggunakan timestamp dari Firestore
    return masukans.add(data);
  }

  // READ:

  // UPDATE:

  // DELETE:
}
