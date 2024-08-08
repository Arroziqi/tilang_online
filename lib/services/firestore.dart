import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';

class Firestore {
  final CollectionReference pelanggarans = FirebaseFirestore.instance.collection('pelanggaran');

  // READ
  Stream<QuerySnapshot> getPelanggarans(){
    final pelanggaransStream = pelanggarans.orderBy('tanggal', descending: true).snapshots();

    return pelanggaransStream;
  }

  final storageRef = FirebaseStorage.instance.ref();

  uploadImage(File file) async{
    final fotoKendaraanRef = storageRef.child('foto_kendaraan/images-${DateTime.now().toString()}.jpg');
    final String? downloadUrl;

    try{
      print("uhuy");
      await fotoKendaraanRef.putFile(file);

      return fotoKendaraanRef.getDownloadURL();
    }catch(e){
      print(e);
    }
  }
}