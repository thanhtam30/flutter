import 'package:flutter/material.dart';
import './models/Movie.dart';

class DetailsScreen extends StatelessWidget {
  final Movies movies;
  DetailsScreen({Key key, @required this.movies}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("${movies.city}"),
      ),
      body: Padding(
        padding: EdgeInsets.all(15.0),
        child: Center(
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20.0),
                child: Text(
                  "${movies.city}",
                  style: TextStyle(fontSize: 30.0, color: Colors.red),
                ),
              ),
              Container(
                child: Image.asset(
                  "${movies.imageUrl}",
                  width: double.infinity,
                  height: 200.0,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Container(child: Text("${movies.title}")),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10.0),
                child: SizedBox(
                  width: double.infinity,
                  height: 50.0,
                  child: RaisedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/listview');
                    },
                    color: Colors.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                    ),
                    child: Text(
                      "ListView",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
