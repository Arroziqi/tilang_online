import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter_app/models/pages/kendaraan/kendaraan_class.dart';

// penyimpanan untuk foto kendaraan
final storageRef = FirebaseStorage.instance.ref();
// buat folder kendaraan_img
final imagesRef = storageRef.child("kendaraan_img");

class FirestoreKendaraan {
  final CollectionReference kendaraans = FirebaseFirestore.instance.collection('kendaraan');
  String fotoKendaraanUrl = "";

  // tambah kendaraan
  Future<Future<DocumentReference<Object?>>> addKendaraan(KendaraanClass data) async {
    // if(data.fotoKendaraan != null){
    //   await imagesRef.child("${data.noPolisi}.png").putFile(data.fotoKendaraan!);
    //   fotoKendaraanUrl = await imagesRef.getDownloadURL().toString();
    // }
    return kendaraans.add({
      'no_polisi': data.noPolisi,
      'no_rangka': data.noRangka,
      'no_mesin': data.noMesin,
      'cc': data.cc,
      // 'foto_kendaraan': fotoKendaraanUrl,
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
      'foto_kendaraan': data.fotoKendaraan,
      'isVerified': false,
    });
  }
}