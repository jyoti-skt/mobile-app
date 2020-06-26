import 'package:flutter/material.dart';

class HeroAnimationRecipe extends StatefulWidget {
  HeroAnimationRecipe({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _HeroAnimationRecipeState createState() => _HeroAnimationRecipeState();
}

class _HeroAnimationRecipeState extends State<HeroAnimationRecipe> {
  Widget _blueIconRectangle() {
    return Container(
      child: Image.asset(
        'assets/onee.png',
        fit: BoxFit.cover,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          // title: Text(widget.title),
          ),
      body: buildDemoWidget(context),
    );
  }

  buildDemoWidget(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            height: 20.0,
          ),
          ListTile(
            leading: GestureDetector(
              child: Hero(
                tag: 'hero-rectangle',
                child: Image.asset(
                  'assets/onee.png',
                  fit: BoxFit.cover,
                ),
              ),
              onTap: () => _gotoDetailsPage(context),
            ),
            // title: Text('Tap on the icon to view hero animation transition.'),
          ),
        ],
      ),
    );
  }
}

void _gotoDetailsPage(BuildContext context) {
  Navigator.of(context).push(MaterialPageRoute(
    builder: (ctx) => Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Hero(
              tag: 'hero-rectangle',
              child: _blueDetailRectangle(),
            ),
            Text(
                'This is where you can see details about the list item tapped at previous page.'),
          ],
        ),
      ),
    ),
  ));
}

Widget _blueDetailRectangle() {
  return Container(
    child: Image.asset(
      'assets/onee.png',
      fit: BoxFit.cover,
    ),
  );
}
