import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreKendaraan {

  // get collection of Masukan
  final CollectionReference kendaraans = FirebaseFirestore.instance.collection('kendaraan');
  // CREATE:
  Future<void> addKendaraan(Map<String, dynamic> data) {
    data['timestamp'] = FieldValue.serverTimestamp(); // Menggunakan timestamp dari Firestore
    data['isVerified'] = false;
    return kendaraans.add(data);
  }

  // READ:
  Stream<QuerySnapshot> getKendaraans(){
    final kendaraanStream = kendaraans.orderBy('timestamp', descending: true).snapshots();

    return kendaraanStream;
  }

  // UPDATE:

  // DELETE:
}
