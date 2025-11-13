import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  //TODO: 1. Deklarasikan variabel yang dibutuhkan
  List<Candi> _filteredCandis = [];
  String _searchQuery = '';
  final TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //TODO: 2. Buat appbar dengan judul pencarian candi
      appBar: AppBar(title: Text('Pencarian candi'),),
      //TODO: 3. Buat body berupa column
      body: Column(
        children: [
          //TODO: 4. Buat TextField pencarian sebagai anak dari culomn
          TextField(
            autofocus: false,
            decoration: InputDecoration(
              hintText: 'Cari candi ',
              prefixIcon: Icon(Icons.search),
              border: InputBorder.none,
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.deepPurple
                  )
              ),
              contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            ),
          ),
          //TODO: 5. Buat ListView hasil pencarian sebagai anak dari culomn
          ListView.builder(
            itemCount: _filteredCandis.length,
            itemBuilder: (context, index){
              final candi = _filteredCandis[index];
              return Card(
                margin: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                child:
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image(

                      ),
                    ],
                  ),
              );
           }
          ),
        ],
      ),
    );
  }
}