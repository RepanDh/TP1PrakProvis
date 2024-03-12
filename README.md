# TP1PrakProvis

### Konsep OOP
Konsep OOP diimplementasikan melalui pembuatan beberapa class, yaitu Manusia, Mahasiswa, Dosen, MataKuliah, dan Fakultas. class Mahasiswa dan Dosen merupakan turunan dari class Manusia, yang menunjukkan konsep inheritance dalam OOP.

- Manusia: class dasar yang memiliki atribut nama.

- Mahasiswa dan Dosen: class turunan dari Manusia yang masing-masing memiliki atribut tambahan nim dan nip. Kelas Dosen juga memiliki atribut mataKuliah yang merupakan list dari objek MataKuliah.

- MataKuliah: class yang memiliki atribut kode dan nama.

- Fakultas: class yang memiliki atribut nama dan dosen yang merupakan list dari objek Dosen.

### Konsep Asyncronus
Konsep pemrograman asinkron diimplementasikan dalam fungsi main dengan menggunakan Future.delayed dan async/await. fungsi memungkinkan program untuk men-delay eksekusi selama beberapa detik sebelum melanjutkan.
