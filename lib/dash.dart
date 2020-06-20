import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  @override
  _dashState createState() => _dashState();
}

class _dashState extends State<Dashboard> {
  var _imagelist = [
    'https://images.unsplash.com/photo-1591250656058-f524c6281874?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjExMDk0fQ&auto=format&fit=crop&w=634&q=80',
    'https://images.unsplash.com/photo-1591253523189-21f2b7872664?ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80',
    'https://images.unsplash.com/photo-1591225757875-f82526401ec3?ixlib=rb-1.2.1&auto=format&fit=crop&w=676&q=80',
    'https://images.unsplash.com/photo-1591236305424-1908884699ff?ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80'
  ];

  Widget _firstcontainer() {
    return Container(
      height: MediaQuery.of(context).size.height * 0.1,
      child: ListTile(
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.person,
            color: Colors.black,
          ),
        ),
        title: Text('gogame'),
        subtitle: Text('gaming app'),
        trailing: Wrap(
          spacing: 12, // space between two icons
          children: <Widget>[
            Icon(
              Icons.notifications,
              color: Colors.black,
            ), // icon-1
            Icon(
              Icons.menu,
              color: Colors.black,
            ), // icon-2
          ],
        ),
      ),
    );
  }

  Widget _secondcontainer() {
    return Container(
      height: MediaQuery.of(context).size.height * 0.2,
      child: Row(
        children: <Widget>[
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.lightBlue, Colors.blueAccent],
                  begin: FractionalOffset.topLeft,
                  end: FractionalOffset.bottomRight,
                ),
                borderRadius: BorderRadius.circular(15),
              ),
              alignment: Alignment.center,
              margin: EdgeInsets.all(7),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Container(
                      margin: EdgeInsets.only(left: 10),
                      alignment: Alignment.topLeft,
                      child: Icon(Icons.notifications)),
                  Container(
                    child: Text(
                      "hello",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    child: Text(
                      "hello",
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.deepPurple, Colors.purpleAccent],
                  begin: FractionalOffset.topLeft,
                  end: FractionalOffset.bottomRight,
                ),
                borderRadius: BorderRadius.circular(15),
              ),
              alignment: Alignment.center,
              margin: EdgeInsets.all(7),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Container(
                      margin: EdgeInsets.only(left: 10),
                      alignment: Alignment.topLeft,
                      child: Icon(Icons.notifications)),
                  Container(
                    child: Text(
                      "hello",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    child: Text(
                      "hello",
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.redAccent, Colors.orangeAccent],
                  begin: FractionalOffset.topLeft,
                  end: FractionalOffset.bottomRight,
                ),
                borderRadius: BorderRadius.circular(15),
              ),
              alignment: Alignment.center,
              margin: EdgeInsets.all(7),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Container(
                      margin: EdgeInsets.only(left: 10),
                      alignment: Alignment.topLeft,
                      child: Icon(Icons.notifications)),
                  Container(
                    child: Text(
                      "hello",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    child: Text(
                      "hello",
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _thirdcontainer() {
    return Container(
      color: Colors.orangeAccent,
      padding: EdgeInsets.all(10),
      height: MediaQuery.of(context).size.height * 0.4,
      child: PageView.builder(
          itemCount: _imagelist.length,
          itemBuilder: (context, index) {
            return Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: CachedNetworkImage(
                fit: BoxFit.cover,
                imageUrl: _imagelist[index],
              ),
            );
          }),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "GOGAME",
          style: TextStyle(fontSize: 25, color: Colors.black),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              _firstcontainer(),
              _secondcontainer(),
              _thirdcontainer()
            ],
          ),
        ),
      ),
    );
  }
}
