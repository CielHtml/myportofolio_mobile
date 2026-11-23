# myportofolio_mobile

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Learn Flutter](https://docs.flutter.dev/get-started/learn-flutter)
- [Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Flutter learning resources](https://docs.flutter.dev/reference/learning-resources)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

### Tugas 7
1. Widget tree adalah sesuatu yang menggambarkan bagaimana widget-widget dalam Flutter disusun untuk membentuk tampilan aplikasi. Setiap widget bisa memiliki widget lain sebagai child sehingga terbentuk struktur seperti pohon.

2. Widget yang saya gunakan di proyek ini:
MaterialApp: Menjadi root aplikasi dan menyediakan konfigurasi dasar aplikasi berbasis Material Design.
Scaffold: Menyediakan struktur dasar halaman, seperti AppBar, body, dan FloatingActionButton.
AppBar: Menampilkan bilah bagian atas halaman, biasanya berisi judul dan tombol navigasi.
Text: Menampilkan teks pada antarmuka aplikasi.
Container: Menjadi wadah untuk mengatur ukuran, warna, margin, padding, dan dekorasi suatu elemen.
Column: Menyusun widget anak secara vertikal.
Row: Menyusun widget anak secara horizontal.

3. MaterialApp merupakan widget yang menyediakan konfigurasi dasar untuk membangun aplikasi Flutter dengan pendekatan Material Design, yaitu sistem desain interface yang dikembangkan oleh Google. Widget ini umumnya digunakan sebagai root widget karena menyediakan berbagai fitur penting yang dibutuhkan oleh aplikasi

4. StatelessWidget adalah widget yang tidak memiliki state internal yang dapat berubah selama siklus hidup widget tersebut.Tampilan yang dihasilkan bergantung pada konfigurasi atau data yang diterima ketika widget dibuat. Widget ini cocok digunakan untuk elemen antarmuka yang tampilannya tidak perlu berubah akibat interaksi pengguna atau perubahan data internal.
StatefulWidget adalah widget yang memiliki state yang dapat berubah selama widget digunakan. Perubahan state tersebut dapat menyebabkan Flutter membangun ulang tampilan widget agar sesuai dengan kondisi terbaru. Untuk mengubah state, Flutter menyediakan metode setState(). Ketika metode tersebut dipanggil, Flutter akan menjadwalkan proses pembangunan ulang (rebuild) pada bagian widget yang bersangkutan.

5. BuildContext merupakan objek yang merepresentasikan lokasi suatu widget di dalam widget tree Flutter. Melalui BuildContext, sebuah widget dapat mengetahui posisinya dalam hierarki widget dan mengakses informasi maupun fitur yang disediakan oleh widget-widget di atasnya. BuildContext penting karena banyak fungsi Flutter membutuhkan informasi mengenai posisi widget dalam widget tree untuk dapat bekerja dengan benar. Dalam metode build(), BuildContext digunakan sebagai parameter yang memungkinkan widget membangun tampilannya berdasarkan informasi dari lingkungan tempat widget tersebut berada.

6. Hot reload merupakan fitur Flutter yang memungkinkan developer melihat perubahan kode secara langsung pada aplikasi yang sedang berjalan tanpa harus menjalankan ulang seluruh aplikasi. Ketika hot reload dilakukan, Flutter akan memasukkan perubahan kode ke dalam aplikasi yang sedang berjalan dan membangun ulang widget yang terdampak. Salah satu keunggulan utamanya adalah state aplikasi yang sedang berjalan umumnya tetap dipertahankan. Contohnya, ketika kita mengubah warna tombol atau ukuran teks, perubahan tersebut dapat langsung terlihat tanpa perlu mengulang seluruh proses menjalankan aplikasi. Sementara itu, hot restart merupakan proses memulai ulang aplikasi Flutter dari awal pada proses Dart yang sama. Pada proses ini, state yang sedang berjalan akan direset, sehingga aplikasi kembali ke kondisi awal.

AI Disclosure:
Pada tugas kali ini, saya menggunakan bantuan AI Gemini 4 Hydrogen untuk membantu memahami konsep cara kerja flutter dasar dan juga kegunaan setiap syntax dan parameter. Saya juga meminta bantuan untuk membantu saya memahami dan menjawab pertanyaan refleksif yang bersifat teoritis.

### Tugas 8
1. .push() biasa artinya kita melakukan push ke atas halaman lama, sehingga kita masih bisa kembali ke halaman sebelumnya. kalau pushReplacement() mengganti halaman saat ini sehingga tidak bisa kembali ke halaman sebelumnya. untuk pop adalah mengeluarkan halaman paling atas saat ini dan kembali ke halaman sebelumnya

2. Scaffold menjadi kerangka tetap, AppBar jadi judul di atas, dan Drawer jadi menu samping, jadi setiap halaman punya struktur dan navigasi yang sama. Contohnya, warna utama portofolio (misalnya biru tua) diatur sekali di ThemeData, lalu otomatis dipakai oleh AppBar di halaman Home maupun halaman Formulir.

3. Formulir disusun vertikal dalam Column karena paling mudah dibaca dan diisi di layar HP yang sempit. SizedBox/Padding memberi jarak antarkolom, sedangkan SingleChildScrollView membuat isi bisa digeser agar tidak overflow saat ruang layar terbatas atau papan ketik muncul.

4. GlobalKey<FormState> adalah pegangan ke formulir, validator berisi aturan pemeriksaan tiap kolom, dan validate() menjalankan semua aturan itu saat Simpan ditekan; data hanya disimpan jika semuanya lolos. Contoh nilai yang ditolak: nama kosong atau umur -5. Jenis input/papan ketik saja belum cukup karena hanya mempermudah mengetik, tidak mencegah kolom kosong, nilai tidak masuk akal, atau teks yang ditempel dari luar.

AI Disclosure:
Saya menggunakan AI Gemini 4 Hydrogen untuk membantu menjelaskan konsep konsep flutter sehingga saya bisa menjawab pertanyaan pertanyaan yang ada di pertanyaan reflektif. Sisanya saya hanya meniru apa yang ada di tutorial dan menerapkannya ke modul baru
