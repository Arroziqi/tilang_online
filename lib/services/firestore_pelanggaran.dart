import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_app/models/pages/notifikasi/notifikasi_tile_items.dart';

class FirestorePelanggaran {
  final CollectionReference pelanggarans =
      FirebaseFirestore.instance.collection('pelanggaran');

  // GET DATA PELANGGARAN
  Stream<QuerySnapshot> getPelanggarans(){
    final pelanggaransStream = pelanggarans.where("selesei", isEqualTo: false).orderBy('tanggal', descending: true).snapshots();

    return pelanggaransStream;
  }

  // GET DATA RIWAYAT PELANGGARAN
  Stream<QuerySnapshot> getRiwayatPelanggarans(){
    final riwayatPelanggaransStream = pelanggarans.where("selesei", isEqualTo: true).orderBy('tanggal', descending: true).snapshots();

    return riwayatPelanggaransStream;
  }

  // UPDATE STATUS
  Future<void> updatePelanggaran(String docID, bool status){
    return pelanggarans.doc(docID).update({
      'selesei': status,
    });
  }
}
