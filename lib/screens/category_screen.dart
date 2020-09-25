import 'package:Aplikasi_Pariwisata/data/dummy_data.dart';
import 'package:flutter/material.dart';
import '../components/list_category.dart'; //IMPORT FILE list_category.dart YANG BERFUNGSI SEBAGAI LAYOUT UNTUK TIAP ITEM CATEGORY YANG AKAN DITAMPILKAN
import '../data/dummy_data.dart'; //FILE INI BERISI DATA DUMMY CATEGORY

class CategoryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Daengweb Pariwisata"), //SET TEXT PADA APPBAR
      ),
      //KITA AKAN MENGGUNAKAN GRIDVIEW AGAR TAMPILANNYA SESUAI NAMANYA AKAN MEMBENTUK GRID SESUAI BESARAN ELEMEN YANG DITAMPILKAN
      body: GridView(
        padding: EdgeInsets.all(15), //SET PADDINGNYA AGAR TIDAK TERLALU KE TEPI SCREEN
        //ADAPUN CHILDRENNYA ADALAH HASIL LOOPING DARI DATA DUMMY CATEGORY
        //DIMANA SETIAP DATANYA AKAN ME-LOAD COMPONENT ListCategory SEKALIGUS MENGIRIMKAN DATA YANG AKAN DITAMPILKAN
        children: CATEGORIES_DUMMY_DATA
            .map((cat) => ListCategory(cat.id, cat.title, cat.description, cat.image))
            .toList(),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 300, //MENGATUR BESARNYA ELEMEN GRID PER ITEMNYA,
          childAspectRatio: 1.5, //MENGATUR ASPEK RASIO
          crossAxisSpacing: 20, //MENGATUR JARAK ELEMENT SECARA HORIZONTAL
          mainAxisSpacing: 20, //MENGATUR JARAK ELEMENT SECARA VERTICAL
        ),
      ),
    );
  }
}