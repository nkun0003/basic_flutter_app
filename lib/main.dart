import 'package:flutter/material.dart'; // importing 'package:flutter/material

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Images and Assets',
      theme: ThemeData(primarySwatch: Colors.brown, fontFamily: 'Inter'),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Images and Assets'),
        ),
        body: ListView(
          children: [
            // Top Horizontal ListView used internet images
            SizedBox(
              height: 400,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.network(
                      'https://images.unsplash.com/photo-1506748686214-e9df14d4d9d0?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&q=80&w=800',
                      width: 400,
                      height: 200,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.network(
                      'https://images.unsplash.com/photo-1500530855697-b586d89ba3ee?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&q=80&w=800',
                      width: 400,
                      height: 200,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.network(
                      'https://images.unsplash.com/photo-1547721064-da6cfb341d50?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&q=80&w=800',
                      width: 400,
                      height: 200,
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20), // here spacing between sections

            // my listTiles of the Middle
            const ListTile(
              leading: Icon(Icons.map),
              title: Text(
                'Inter 100',
                style: TextStyle(fontWeight: FontWeight.w100, fontSize: 30),
              ),
            ),
            const ListTile(
              leading: Icon(Icons.star_half),
              title: Text(
                'Inter 400',
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 30),
              ),
            ),
            const ListTile(
              leading: Icon(Icons.traffic),
              title: Text(
                'Inter 700',
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 30),
              ),
            ),
            const ListTile(
              leading: CircleAvatar(child: Text('R1')),
              title: Text(
                'Doto',
                style: TextStyle(fontFamily: 'Doto', fontSize: 30),
              ),
            ),
            const ListTile(
              leading: CircleAvatar(child: Text('R1')),
              title: Text(
                'Doto',
                style: TextStyle(fontFamily: 'Doto', fontSize: 30),
              ),
            ),
            const SizedBox(height: 20), // here spacing between sections

            // Bottom Horizontal ListView where i used local Assets i downloaded Images)
            SizedBox(
              height: 400,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(
                      'images/pic1.jpg',
                      width: 400,
                      height: 200,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(
                      'images/pic2.jpg',
                      width: 400,
                      height: 200,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(
                      'images/pic3.jpg',
                      width: 400,
                      height: 200,
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
