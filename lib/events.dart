import 'package:flutter/material.dart';
import 'api_service.dart';

class Events extends StatelessWidget {
  //String eventname;
  final List<String> events;
  Events(this.events);
  Widget _buildevent(BuildContext context, int index) {
    return GestureDetector(
      //onTap: ,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        margin: EdgeInsets.fromLTRB(30.0, 19.0, 30.0, 0.0),
        child: Row(children: <Widget>[
          Padding(
              padding: EdgeInsets.fromLTRB(10.0, 17.0, 20.0, 17.0),
              child: Image.asset(
                'assets/logo_hack_it.png',
                width: 75.0,
                height: 75.0,
                fit: BoxFit.cover,
              )),
          Padding(
              padding: EdgeInsets.fromLTRB(0.0, 17.0, 29.0, 17.0),
              child: Container(
                child: Column(
                  children: <Widget>[
                    Text(
                      "Hack IT",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 30.0),
                    ),
                    Text(
                      "zyad ZGHZGH",
                      style: TextStyle(fontWeight: FontWeight.w100),
                    ),
                    Container(
                      child: Row(
                        children: <Widget>[
                          Icon(
                            Icons.location_on,
                            color: Colors.blue,
                          ),
                          Text(
                            "ESI",
                            style: TextStyle(color: Colors.blue),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )),
          Padding(
              padding: EdgeInsets.fromLTRB(0.0, 0.0, 10.0, 8.0),
              child: Container(
                child: Column(
                  children: <Widget>[
                    Text(
                      "16",
                      style: TextStyle(fontSize: 30.0, color: Colors.blue),
                    ),
                    Text(
                      "AVR",
                      style: TextStyle(fontSize: 23.0, color: Colors.blue),
                    ),
                  ],
                ),
              )),
        ]),
      ),
    );
  }

  Widget build(BuildContext context) {
    return FutureBuilder(
      future: ApiService.getPostList(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          final posts = snapshot.data;
          return ListView.separated(
            separatorBuilder: (context, index) {
              return Divider(
                height: 2,
                color: Colors.transparent,
              );
            },
            itemBuilder: (context, index) {
              return GestureDetector(
                //onTap: ,
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  margin: EdgeInsets.fromLTRB(30.0, 19.0, 30.0, 0.0),
                  child: Row(children: <Widget>[
                    Padding(
                        padding: EdgeInsets.fromLTRB(10.0, 17.0, 20.0, 17.0),
                        child: Image.asset(
                          'assets/logo_hack_it.png',
                          width: 75.0,
                          height: 75.0,
                          fit: BoxFit.cover,
                        )),
                    Padding(
                        padding: EdgeInsets.fromLTRB(0.0, 17.0, 29.0, 17.0),
                        child: Container(
                          child: Column(
                            children: <Widget>[
                              Text(
                                "HACK IT",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 28.0),
                              ),
                              Text(
                                "zyad ZGHZGH",
                                style: TextStyle(fontWeight: FontWeight.w100),
                              ),
                              Container(
                                child: Row(
                                  children: <Widget>[
                                    Icon(
                                      Icons.location_on,
                                      color: Colors.blue,
                                    ),
                                    Text(
                                      "ESI",
                                      style: TextStyle(color: Colors.blue),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        )),
                    Padding(
                        padding: EdgeInsets.fromLTRB(0.0, 0.0, 10.0, 8.0),
                        child: Container(
                          child: Column(
                            children: <Widget>[
                              Text(
                                "16",
                                style: TextStyle(
                                    fontSize: 30.0, color: Colors.blue),
                              ),
                              Text(
                                "AVR",
                                style: TextStyle(
                                    fontSize: 23.0, color: Colors.blue),
                              ),
                            ],
                          ),
                        )),
                  ]),
                ),
              );
            },
            itemCount: posts.length,
          );
        }
        return Center(
          child: CircularProgressIndicator(),
        );
      },
    );
  }
}
