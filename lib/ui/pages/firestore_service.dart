import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreService {
  final CollectionReference masukan =
      FirebaseFirestore.instance.collection('masukan');

  Future<void> addMasukan(
      String nama, String nik, String jenisMasukan, String isiMasukan) {
    return masukan.add({
      'nama': nama,
      'nik': nik,
      'jenisMasukan': jenisMasukan,
      'isiMasukan': isiMasukan,
      'timestamp': FieldValue.serverTimestamp(),
    });
  }
}
