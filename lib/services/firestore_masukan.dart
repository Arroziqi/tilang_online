import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreMasukan {
  // get collection of Masukan
  final CollectionReference masukans = FirebaseFirestore.instance.collection('masukan');
  // CREATE:
  Future<Future<DocumentReference<Object?>>> addMasukan(data) async{
    return masukans.add({
      'nama': data.nama,
      'nik': data.nik,
      'masukan': data.masukan,
      'timestamp': DateTime.now().toString(),
    });
  }
  // READ:
  Stream<QuerySnapshot> getKendaraans(){
    final kendaraansStream = masukans.orderBy('timestamp', descending: true).snapshots();

    return kendaraansStream;
  }

  // UPDATE:

  // DELETE:
}
