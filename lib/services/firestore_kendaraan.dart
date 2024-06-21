import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class FirestoreKendaraan {
  // get collection of Masukan
  final CollectionReference kendaraans = FirebaseFirestore.instance.collection('kendaraan');
  // CREATE:
  Future<void> addKendaraan(Map<String, dynamic> data) {
    data['timestamp'] = FieldValue.serverTimestamp(); // Menggunakan timestamp dari Firestore
    return kendaraans.add(data);
  }

  // READ:

  // UPDATE:

  // DELETE:
}
