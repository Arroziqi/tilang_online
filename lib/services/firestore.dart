import 'package:cloud_firestore/cloud_firestore.dart';

class Firestore {
  final CollectionReference pelanggarans = FirebaseFirestore.instance.collection('pelanggaran');

  // READ
  Stream<QuerySnapshot> getPelanggarans(){
    final pelanggaransStream = pelanggarans.orderBy('tanggal', descending: true).snapshots();

    return pelanggaransStream;
  }
}