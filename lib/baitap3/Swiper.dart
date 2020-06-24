import 'package:flutter/material.dart';
import './models/Movie.dart';

class SwiperExample extends StatefulWidget {
  final Movies movies;
  SwiperExample({this.movies});
  @override
  _SwiperExampleState createState() => _SwiperExampleState();
}

class _SwiperExampleState extends State<SwiperExample> {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      appBar: AppBar(
        title: Text("ListView"),
      ),
      body:ListView.builder(
              itemCount: movies.length,
          itemBuilder: (context, index) {
            return Dismissible(
                      key: Key(movies[index].id),
               child: InkWell(
              onTap: () {
                print("${movies[index]} clicked");
              },
               child: Padding(
                  padding: const EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 0.0),
                  child: Container(
                    // color:Colors.white10 ,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border(),
                      borderRadius: BorderRadius.all(
                          Radius.circular(10.0)), // set rounded corner radius
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    // height: 100.0,
                    child: Row(
                      children: <Widget>[
                        // Expanded(

                        //  child: CircleAvatar(
                        //   child: Image.asset(
                        //     '${movies[index].imageUrl}',
                        //     width: 100.0,
                        //     height: 100.0,
                        //   ),
                        // ),
                        //   flex: 2,

                        // ),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: ClipOval(
                            child: Image.asset(
                              "${movies[index].imageUrl}",
                              width: 80.0,
                              height: 80.0,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),

                        Expanded(
                          child: Container(
                            height: 100.0,
                            child: Column(
                              children: <Widget>[
                                Container(
                                    alignment: Alignment.centerLeft,
                                    height: 40.0,
                                    child: Padding(
                                      padding:
                                          const EdgeInsets.fromLTRB(10, 0, 0, 0),
                                      child: Text("${movies[index].city}"),
                                    )),
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(10, 0, 0, 10),
                                  child: Text("${movies[index].title}"),
                                )
                              ],
                            ),
                          ),
                          flex: 8,
                        ),
                        Expanded(
                          child: Container(
                              alignment: Alignment.center,
                              child: Text("${movies[index].year}")),
                          flex: 2,
                        )
                      ],
                    ),
                  )),
               ),
               background:Container(
      color: Colors.red,
      child: Align(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              width: 20,
            ),
            Icon(
              Icons.delete,
              color: Colors.white,
            ),
            Text(
              " Delete",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w700,
              ),
              textAlign: TextAlign.left,
            ),
          ],
        ),
        alignment: Alignment.centerLeft,
      ),
    ));
          },
      ));
}
}