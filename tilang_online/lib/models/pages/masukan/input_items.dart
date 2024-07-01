import 'input_class.dart';

class InputItems {
  List<InputClass> items = [
    InputClass(
      label: 'Nama',
      hintText: 'nama Anda...',
      type: 'text',
    ),
    InputClass(
      label: 'NIK',
      hintText: 'NIK Anda...',
      type: 'text',
    ),
    // masih ngestack
    // InputClass(
    //   label: 'Jenis Masukan',
    //   hintText: 'jenis masukan...',
    //   type: 'select',
    //   selectItems: [
    //     {'text': 'Tampilan Masukan', 'value': 'tampilan'},
    //     {'text': 'Sistem', 'value': 'sistem'},
    //     {'text': 'Pelayanan', 'value': 'pelayanan'},
    //   ],
    // ),
    InputClass(
      label: 'Masukan',
      hintText: 'masukan Anda...',
      type: 'longText',
    ),
  ];
}
