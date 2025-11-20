import 'package:flutter/material.dart';

void main() => runApp(
  MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text("Favorite cards"),
      ),
      body: Column(
        children: const [
          FavoriteCard(title: 'Title 1', description: 'Description 1'),
          FavoriteCard(title: 'Title 2', description: 'Description 2'),
          FavoriteCard(title: 'Title 3', description: 'Description 3'),
        ],
      ),
    ),
  ),
);

class FavoriteCard extends StatefulWidget {
  final String title;
  final String description;

  const FavoriteCard({
    super.key,
    required this.title,
    required this.description,
  });

  @override
  State<FavoriteCard> createState() => _FavoriteCardState();
}

class _FavoriteCardState extends State<FavoriteCard> {
  bool isFavorite = false;

  Icon get favoriteIcon => isFavorite
      ? const Icon(Icons.favorite, color: Colors.red)
      : const Icon(Icons.favorite_border_rounded);

  void favoriteTransition() => setState(() {
        isFavorite = !isFavorite;
      });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(8, 12, 4, 12),
          child: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      widget.title,
                      style: const TextStyle(color: Colors.blue),
                    ),
                    Text(
                      widget.description,
                      style: const TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              ),
              IconButton(
                onPressed: favoriteTransition,
                icon: favoriteIcon,
              ),
            ],
          ),
        ),
        Container(
          height: 2,
          color: Colors.grey[300],
        ),
      ],
    );
  }
}
