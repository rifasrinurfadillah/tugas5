import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';

class NewsDetailScreen extends StatefulWidget {
  const NewsDetailScreen({
    super.key,
    required this.id,
  });
  final String id;

  @override
  State<NewsDetailScreen> createState() => _NewsDetailScreenState();
}

// class _NewsDetailScreenState extends State<NewsDetailScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Text(
//           widget.id,
//         ),
//       ),
//     );
//   }
// }

class _NewsDetailScreenState extends State<NewsDetailScreen> {
  int LikeCount = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text(
      //     "Direktorat Jenderal Pajak",
      //   ),
      // ),
      body: Column(
        children: [
          Image.network(
            "https://borobudurwriters.id/wp-content/uploads/2023/03/Riwanto-3.jpg",
            width: double.infinity,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 10),
                const Text(
                  'Novel Rusina',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  'Rasina mengambil latar belakang Hindia-Belanda karena munculnya rasa ingin tahu Iksaka Banu dengan tokoh-tokoh yang tidak muncul dalam sejarah, sehingga melakukan riset apa saja yang mereka lakukan pada masa itu. Riset dan literatur untuk pembuatan buku Rasina dimulai tahun 2018 sebagai cerpen, seharusnya riset dilakukan langsung oleh Iksaka Banu dengan datang ke Banda pada tahun 2020 tetapi karena pandemi hal itu pupus dan pembuatan cerita berubah menjadi riset melalui literatur tulisan lama.',
                  textAlign: TextAlign.justify,
                ),
                SizedBox(height: 10),
                Row(children: [
                  Icon(
                    Icons.favorite,
                    color: Colors.red,
                  ),
                  SizedBox(height: 10),
                  Text(' $LikeCount')
                ])
              ],
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton.small(
        hoverColor: Colors.red,
        onPressed: () {
          setState(() {
            LikeCount++;
          });
          print(LikeCount);
        },
        child: const Icon(Icons.favorite),
      ),
    );
  }
}
