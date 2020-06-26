import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import 'constants.dart';
import 'staggeredContainer.dart';

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

  final List<StaggeredTile> _staggeredTiles = <StaggeredTile>[
    StaggeredTile.extent(1, 150),
    StaggeredTile.extent(1, 150),
    StaggeredTile.extent(1, 200),
    StaggeredTile.extent(1, 200),
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
                      child: Icon(
                        Icons.notifications,
                        color: Colors.orangeAccent,
                      )),
                  Container(
                    child: Text(
                      "23K",
                      style:
                          TextStyle(fontSize: 34, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    child: Text(
                      "Light Coins",
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
                      child: Icon(
                        Icons.notifications,
                        color: Colors.orange,
                      )),
                  Container(
                    child: Text(
                      "1",
                      style:
                          TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    child: Text(
                      "Level",
                      style: TextStyle(
                        fontSize: 17,
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
                      child: Icon(
                        Icons.notifications,
                        color: Colors.orange,
                      )),
                  Container(
                    child: Text(
                      "2K",
                      style:
                          TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    child: Text(
                      "Cash",
                      style: TextStyle(
                        fontSize: 17,
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
      color: Colors.purple,
      padding: EdgeInsets.all(10),
      height: MediaQuery.of(context).size.height * 0.3,
      child: PageView.builder(
          itemCount: _imagelist.length,
          itemBuilder: (context, index) {
            return Card(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15.0),
                child: CachedNetworkImage(
                  fit: BoxFit.cover,
                  imageUrl: _imagelist[index],
                ),
              ),
            );
          }),
    );
  }

  Widget _fourthcontainer() {
    return Container(
      color: Colors.white,
      margin: EdgeInsets.only(top: 5),
      padding: EdgeInsets.all(10),
      // height: MediaQuery.of(context).size.height * 0.4,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            child: RichText(
              text: TextSpan(
                children: [
                  WidgetSpan(
                    child: Icon(
                      Icons.star,
                      size: 35,
                      color: Colors.yellow,
                    ),
                  ),
                  TextSpan(
                      text: "FEATURED",
                      style: TextStyle(fontSize: 20, color: Colors.grey)),
                ],
              ),
            ),
          ),
          Card(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30.0),
              child: Image.asset(
                'assets/two.jpg',
                fit: BoxFit.cover,
              ),
            ),
            elevation: 5,
            margin: EdgeInsets.all(10),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(5.0),
                alignment: Alignment.topLeft,
                child: RichText(
                  text: TextSpan(
                      text: "Earth Knight",
                      style: TextStyle(
                          fontSize: 30.0,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                      children: <TextSpan>[]),
                ),
              ),
              Container(
                padding: EdgeInsets.all(5.0),
                alignment: Alignment.topLeft,
                child: RichText(
                  text: TextSpan(
                      text: "Scorching Desert with 200 Levels.",
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.black,
                      ),
                      children: <TextSpan>[]),
                ),
              ),
              Container(
                padding: EdgeInsets.all(5.0),
                alignment: Alignment.topLeft,
                child: RichText(
                  text: TextSpan(
                      text: "join the biggest battle ever!",
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.black,
                      ),
                      children: <TextSpan>[]),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _fifthcontainer() {
    return Container(
      color: Colors.white,
      margin: EdgeInsets.only(top: 5),
      padding: EdgeInsets.all(10),
      // height: MediaQuery.of(context).size.height * 0.4,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Card(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30.0),
              child: Image.asset(
                'assets/onee.png',
                fit: BoxFit.cover,
              ),
            ),
            elevation: 5,
            margin: EdgeInsets.all(10),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(5.0),
                alignment: Alignment.topLeft,
                child: RichText(
                  text: TextSpan(
                      text: "Earth Knight",
                      style: TextStyle(
                          fontSize: 30.0,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                      children: <TextSpan>[]),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _sixthcontaoiner() {
    return Container();
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
              _thirdcontainer(),
              _fourthcontainer(),
              _fifthcontainer(),
              _sixthcontaoiner(),
              StaggeredGridView.count(
                shrinkWrap: true,
                crossAxisCount: 2,
                crossAxisSpacing: 30.0,
                mainAxisSpacing: 30.0,
                padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 25.0),
                children: <Widget>[
                  StaggeredContainer(
                    title: kRows,
                    onTap: () {},
                    imagename: _imagelist[3],
                  ),
                  StaggeredContainer(
                    title: kRows,
                    onTap: () {},
                    imagename: _imagelist[0],
                  ),
                  StaggeredContainer(
                    title: kRows,
                    onTap: () {},
                    imagename: _imagelist[1],
                  ),
                  StaggeredContainer(
                    title: kRows,
                    onTap: () {},
                    imagename: _imagelist[2],
                  ),
                ],
                staggeredTiles: _staggeredTiles,
              )
            ],
          ),
        ),
      ),
    );
  }
}
