import 'package:flutter/material.dart';

class SoccerWidget extends StatelessWidget {
  const SoccerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Soccer World', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.red,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            _buildNewsCard(
              'Costa Mendekat Ke Palmeiras',
              'Menangkan harga diri club kebanggaanya',
              'assets/soccer/consta.jpeg',
            ),
            _buildNewsItem(
              'Pique Bilang Wasit Untungkan Madrid, Koeman Tepok Jidat',
              'Barcelona Feb 13, 2021',
              'assets/soccer/Wasit.jpeg',
            ),
            _buildNewsItem(
              'Kejadian yang tidak disangka, indonesia mengalahkan argentina, shin tae yong eksis di medsos',
              'Indonesia Feb 13, 2024',
              'assets/soccer/Wasit.jpeg',
            ),
            _buildNewsItem(
              'Piala presiden mulai ramai lagi, siapakah sang juara kali ini',
              'Indonesia Agustus 22, 2024',
              'assets/soccer/Wasit.jpeg',
            ),
            _buildNewsItem(
              'kemenangan perdana yang manis, arema bantai lawanya hingga 3 : 0',
              'Bali, Agustus 20, 2024 ',
              'assets/soccer/Wasit.jpeg',
            ),
            _buildNewsItem(
              'Gas air mata vs air mata ibu, Usut tuntas',
              'Malang, 1 October, 2022',
              'assets/soccer/Wasit.jpeg',
            ),
            _buildNewsItem(
              'Pique Bilang Wasit Untungkan Madrid, Koeman Tepok Jidat',
              'Barcelona Feb 13, 2021',
              'assets/soccer/Wasit.jpeg',
            ),
      
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: "Favorite"),
        ],
      ),
    );
  }

  Widget _buildNewsCard(String title, String category, String assetPath) {
    return Card(
      margin: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Image.asset(assetPath),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              title,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(8.0),
            color: Colors.pink,
            child: Text(
              category,
              style: const TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildNewsItem(String title, String subtitle, String assetPath) {
    return Card(
      margin: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Image.asset(assetPath, width: 100, height: 100, fit: BoxFit.cover),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    subtitle,
                    style: TextStyle(fontSize: 14, color: Colors.grey[600]),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
