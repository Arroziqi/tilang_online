import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_app/models/pages/kendaraan/kendaraan_class.dart';

class FirestoreKendaraan {
  final CollectionReference kendaraans = FirebaseFirestore.instance.collection('kendaraan');

  // tambah kendaraan
  Future<void> addKendaraan(KendaraanClass data){
    return kendaraans.add({
      'no_polisi': data.noPolisi,
      'no_rangka': data.noRangka,
      'no_mesin': data.noMesin,
      'cc': data.cc,
      'isVerified': false,
    });
  }

  // ambil kendaraan
  Stream<QuerySnapshot> getKendaraans(){
    final kendaraansStream = kendaraans.orderBy('cc', descending: true).snapshots();

    return kendaraansStream;
  }

  // update kendaraan
  Future<void> updateKendaraan(String docID, KendaraanClass data){
    return kendaraans.doc(docID).update({
      'no_polisi': data.noPolisi,
      'no_rangka': data.noRangka,
      'no_mesin': data.noMesin,
      'cc': data.cc,
      'isVerified': false,
    });
  }
}