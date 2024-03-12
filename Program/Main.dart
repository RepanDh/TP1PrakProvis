import 'dart:async';

abstract class Manusia {
  String nama;
  Manusia(this.nama);
}

class Mahasiswa extends Manusia {
  String nim;
  Mahasiswa(String nama, this.nim) : super(nama);
}

class Dosen extends Manusia {
  String nip;
  List<MataKuliah> mataKuliah;
  Dosen(String nama, this.nip, this.mataKuliah) : super(nama);
}

class MataKuliah {
  String kode;
  String nama;
  MataKuliah(this.kode, this.nama);
}

class Fakultas {
  String nama;
  List<Dosen> dosen;
  Fakultas(this.nama, this.dosen);
}

void main() async {
  var matkul1 = MataKuliah('IF101', 'Pemrograman Dasar');
  var matkul2 = MataKuliah('IF102', 'Struktur Data');
  var matkul3 = MataKuliah('IF103', 'Algoritma dan Pemrograman');
  var matkul4 = MataKuliah('IF104', 'Basis Data');
  var dosen1 = Dosen('Dr. Budi', '123456', [matkul1, matkul2]);
  var dosen2 = Dosen('Dr. Sari', '654321', [matkul3]);
  var dosen3 = Dosen('Dr. Abdul', '789012', [matkul4]);
  var fakultas = Fakultas('Informatika', [dosen1, dosen2, dosen3]);

  print('Daftar Dosen:');
  for (var i = 0; i < fakultas.dosen.length; i++) {
    print('${i + 1}. ${fakultas.dosen[i].nama}');
  }
print("\n");
  print('Mencari mata kuliah yang dipegang oleh Dr. Abdul...');
  await Future.delayed(Duration(seconds: 2));
  print('Nama Mata Kuliah: ${fakultas.dosen.firstWhere((d) => d.nama == 'Dr. Abdul').mataKuliah[0].nama}');
print("\n");

  print('Mencari mata kuliah yang dipegang oleh Dr. Budi...');
  await Future.delayed(Duration(seconds: 2));
  var dosenBudi = fakultas.dosen.firstWhere((d) => d.nama == 'Dr. Budi');
  dosenBudi.mataKuliah.forEach((mk) {
    print('Nama Mata Kuliah: ${mk.nama}');
  });
}
