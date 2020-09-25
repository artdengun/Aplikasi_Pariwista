import 'package:flutter/material.dart';
import './screens/category_screen.dart';
import './places/places_screen.dart';
//import file categoryscreen yang nantinya berfungsi untuk menampilkan list kategori

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Aplikasi Pariwisata',
      //KITA SET THEME-NYA SECARA UMUM AGAR KETIKA MELAKUKAN PERUBAHAN,
      // CUKUP PADA SETTING DIBAWAH AKAN MEMBERIKAN EFEK KE SEMUA PAGE YANG ADA
      theme: ThemeData(
        primarySwatch:
            Colors.deepPurple, // warna utama kita gunakan pink accent
        accentColor: Colors.pink, // secondary color kita set ke pinik
        canvasColor: Color.fromARGB(255, 254, 229, 1),
        // warna background canvas pakai rgb dimana code diatas
        // akan menghasilkan  warna kuning

        // # Kita set juga untuk konfigurasi textnya
        textTheme: ThemeData.light().textTheme.copyWith(
              // ignore: deprecated_member_use
              title: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20), // TITLE WARNA HITAM DAN SIZE 20
              // ignore: deprecated_member_use
              subhead: TextStyle(
                  fontWeight: FontWeight.bold), // subheadnya bold saja
            ),
      ),

      // set rounting yang akan mengatur alur aplikasi
      routes: {
        '/': (ctx) => CategoryScreen(),
        '/places': (ctx) => PlacesScreen() //TAMBAHKAN BAGIAN INI
        //DIMANA ROOT ROUTINGNYA AKAN ME-LOAD CategoryScreen
        // TANDA / BERARTI SECARA DEFAULT KETIKA APLIKASI DI-LOAD MAKA ROUTE TERSEBUT AKAN DIJALANKAN
      },
    );
  }
}
