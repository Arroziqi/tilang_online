import 'package:flutter_app/models/pages/profile/data_pengemudi/data_pengemudi_class.dart';

class DataPengemudiItems {
  List<DataPengemudiClass> items = [
    DataPengemudiClass(label: 'Nama', type: 'text', name: 'nama'),
    DataPengemudiClass(label: 'NIK', type: 'text', name: 'nik'),
    DataPengemudiClass(label: 'Alamat', type: 'text', name: 'alamat'),
    DataPengemudiClass(
        label: 'Nomor Handphone', type: 'text', name: 'nomor_handphone'),
    DataPengemudiClass(label: 'Email', type: 'email', name: 'email'),
    DataPengemudiClass(label: 'Gol. SIM', type: 'text', name: 'gol_sim'),
    DataPengemudiClass(
        label: 'Masa Berlaku SIM', type: 'text', name: 'masa_sim'),
    DataPengemudiClass(
        label: 'Satpas Penerbit', type: 'text', name: 'nama_satpas'),
    DataPengemudiClass(label: 'No SIM', type: 'text', name: 'no_sim'),
    DataPengemudiClass(
        label: 'Upload foto SIM anda', type: 'upload', name: 'foto_sim'),
    DataPengemudiClass(
        label: 'Upload foto KTP anda', type: 'upload', name: 'foto_ktp'),
  ];
}
