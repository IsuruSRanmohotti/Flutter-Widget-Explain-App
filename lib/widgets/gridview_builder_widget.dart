import 'package:flutter/material.dart';

class GridViewBuilderWidget extends StatefulWidget {
  const GridViewBuilderWidget({super.key});

  @override
  State<GridViewBuilderWidget> createState() => _GridViewBuilderWidgetState();
}

class _GridViewBuilderWidgetState extends State<GridViewBuilderWidget> {
  List<Map<String, dynamic>> movies = [
    {
      'name': 'The Shawshank Redemption',
      'image':
          'https://m.media-amazon.com/images/M/MV5BNDE3ODcxYzMtY2YzZC00NmNlLWJiNDMtZDViZWM2MzIxZDYwXkEyXkFqcGdeQXVyNjAwNDUxODI@._V1_FMjpg_UX1000_.jpg',
      'description':
          'Two imprisoned men bond over a number of years, finding solace and eventual redemption through acts of common decency.',
      'rating': 9.3
    },
    {
      'name': 'The Godfather',
      'image':
          'https://m.media-amazon.com/images/M/MV5BM2MyNjYxNmUtYTAwNi00MTYxLWJmNWYtYzZlODY3ZTk3OTFlXkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_.jpg',
      'description':
          'The aging patriarch of an organized crime dynasty transfers control of his clandestine empire to his reluctant son.',
      'rating': 9.2
    },
    {
      'name': 'The Dark Knight',
      'image':
          'https://m.media-amazon.com/images/M/MV5BMTMxNTMwODM0NF5BMl5BanBnXkFtZTcwODAyMTk2Mw@@._V1_.jpg',
      'description':
          'When the menace known as the Joker wreaks havoc and chaos on the people of Gotham, Batman must accept one of the greatest psychological and physical tests of his ability to fight injustice.',
      'rating': 9.0
    },
    {
      'name': 'The Godfather: Part II',
      'image':
          'https://m.media-amazon.com/images/M/MV5BMWMwMGQzZTItY2JlNC00OWZiLWIyMDctNDk2ZDQ2YjRjMWQ0XkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_.jpg',
      'description':
          'The early life and career of Vito Corleone in 1920s New York City is portrayed, while his son, Michael, expands and tightens his grip on the family crime syndicate.',
      'rating': 9.0
    },
    {
      'name': '12 Angry Men',
      'image':
          'https://upload.wikimedia.org/wikipedia/commons/b/b5/12_Angry_Men_%281957_film_poster%29.jpg',
      'description':
          'A jury holdout attempts to prevent a miscarriage of justice by forcing his colleagues to reconsider the evidence.',
      'rating': 8.9
    },
    {
      'name': 'The Lord of the Rings: The Return of the King',
      'image':
          'https://m.media-amazon.com/images/M/MV5BNzA5ZDNlZWMtM2NhNS00NDJjLTk4NDItYTRmY2EwMWZlMTY3XkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_FMjpg_UX1000_.jpg',
      'description':
          'Gandalf and Aragorn lead the World of Men against Sauron\'s army to draw his gaze from Frodo and Sam as they approach Mount Doom with the One Ring.',
      'rating': 8.9
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        itemCount: movies.length,
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(
                    image: NetworkImage(movies[index]['image']),
                    fit: BoxFit.cover),
              ),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.7),
                    borderRadius: BorderRadius.circular(15)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        movies[index]["name"],
                        style: const TextStyle(color: Colors.white),
                      ),
                      Container(
                        width: 60,
                        decoration: BoxDecoration(
                          color: movies[index]["rating"] >= 9
                              ? Colors.green
                              : Colors.red,
                          borderRadius: BorderRadius.circular(40),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 4, vertical: 2),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                movies[index]["rating"].toString(),
                                style: const TextStyle(color: Colors.white),
                              ),
                              const Icon(
                                Icons.star,
                                color: Colors.yellow,
                                size: 14,
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
