import 'package:flutter/material.dart';
//import 'package:consuming_rest_api/api_service.dart';
import 'api_service.dart';
import './events.dart';

class EventManager extends StatefulWidget {
  final String startingEvent;
  EventManager({this.startingEvent});
  @override
  State<StatefulWidget> createState() {
    return _EventManagerState();
  }
}
class Urls {
  static const BASE_API_URL = "https://jsonplaceholder.typicode.com";
}

class _EventManagerState extends State<EventManager> {
  List<String> _events = [];
  @override
  void  initState() {
    super.initState();
    if (widget.startingEvent != null) {
      _events.add(widget.startingEvent);
    }
    
  }

  Widget build(BuildContext context) {
    return Column(children: [
      Stack(
        children: <Widget>[
          Container(
            color: Colors.white,
            width: MediaQuery.of(context).size.width,
            child: Padding(
              padding: EdgeInsets.fromLTRB(30.0, 10.0, 30.0, 95),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(40.0)),
                  color: Colors.white70,
                ),
                height: 40.0,
                child: Material(
                  borderRadius: BorderRadius.all(Radius.circular(40.0)),
                  elevation: 10.0,
                  child: TextField(
                    onChanged: (value) {},
                    decoration: InputDecoration(
                      hintStyle: TextStyle(color: Colors.blue, height: 0.2),
                      hintText: "Search",
                      prefixIcon: Icon(
                        Icons.search,
                        color: Colors.blue,
                      ),
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            child: Container(
              color: Colors.blue,
              height: 40,
              width: MediaQuery.of(context).size.width,
            ),
          ),
          Positioned(
            right: 30,
            bottom: 9.5,
            child: Container(
              child: FloatingActionButton(
                elevation: 10.0,
                onPressed: () {
                  setState(() {
                    _events.add('new event');
                  });
                },
                child: Icon(Icons.add),
                backgroundColor: Colors.blue,
              ),
            ),
          ),
        ],
      ),
      Expanded(child: Events(_events)),
    ]);
  }
}
