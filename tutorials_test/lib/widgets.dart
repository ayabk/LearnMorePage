import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget appLogo(String title, String img) {
  return Container(
    child: Padding(
      padding: EdgeInsets.all(20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(img),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              title,
              style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff8adeef)),
            ),
          )
        ],
      ),
    ),
  );
}

Widget customButton(BuildContext context, String title, {String img}) {
  return Container(
    decoration: BoxDecoration(borderRadius: BorderRadius.circular(15.0)),
    width: MediaQuery.of(context).size.width * 0.8,
    height: 60,
    child: RaisedButton(
        elevation: 7.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        color: Colors.blue,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Image.asset(img),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Text(
                title,
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),
          ],
        ),
        onPressed: () {}),
  );
}

Widget entryField(
  String title,
  TextEditingController myController, {
  bool isPassword = false,
}) {
  return Container(
    margin: EdgeInsets.symmetric(vertical: 10),
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            title,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                border: Border.all(
                    color: Colors.black, style: BorderStyle.solid, width: 2.0),
                color: Colors.transparent),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: TextField(
                  controller: myController,
                  obscureText: isPassword,
                  decoration: InputDecoration(
                      labelText: title,
                      border: InputBorder.none,
                      fillColor: Color(0xfff3f3f4),
                      filled: false)),
            ),
          )
        ],
      ),
    ),
  );
}

Widget divider() {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 20.0),
    child: Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: <Widget>[
          SizedBox(
            width: 40,
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Divider(
                thickness: 2,
              ),
            ),
          ),
          Text('or'),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Divider(
                thickness: 2,
              ),
            ),
          ),
          SizedBox(
            width: 40,
          ),
        ],
      ),
    ),
  );
}

Widget submitButton(BuildContext context, String title) {
  return Container(
    decoration: BoxDecoration(borderRadius: BorderRadius.circular(15.0)),
    width: MediaQuery.of(context).size.width * 0.8,
    height: 50.0,
    child: RaisedButton(
        elevation: 7.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        color: Colors.blueGrey,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Text(
              title,
              style: TextStyle(color: Colors.white, fontSize: 20.0),
            ),
          ),
        ),
        onPressed: () {
          Navigator.pushNamed(context, '/homePage');
        }),
  );
}

Widget customNavBar(BuildContext context, int activeIndex) {
  return CupertinoTabBar(
    backgroundColor: Theme.of(context).primaryColor,
    activeColor: Theme.of(context).accentColor,
    currentIndex: activeIndex,
    items: [
      BottomNavigationBarItem(
        icon: IconButton(
          icon: Icon(
            Icons.home,
            size: 40.0,
          ),
          onPressed: () {
            Navigator.pushReplacementNamed(context, '/homePage');
          },
        ),
      ),
      BottomNavigationBarItem(
        icon: IconButton(
          icon: Icon(
            Icons.assessment,
            size: 40.0,
          ),
          onPressed: () {
            Navigator.pushReplacementNamed(context, '/journalPage');
          },
        ),
      ),
      BottomNavigationBarItem(
        icon: IconButton(
          icon: Icon(
            Icons.account_circle,
            size: 40.0,
          ),
          onPressed: () {
            Navigator.pushReplacementNamed(context, '/profilePage');
          },
        ),
      ),
    ],
  );
}

Widget navigationButton(BuildContext context, String title, {String img,String routeName}) {
  return Container(
    decoration: BoxDecoration(borderRadius: BorderRadius.circular(15.0)),
    width: MediaQuery.of(context).size.width * 0.8,
    height: MediaQuery.of(context).size.height / 12,
    child: RaisedButton(
        elevation: 7.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        color: Colors.blue,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Image.asset(img),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Text(
                title,
                style: TextStyle(color: Colors.white, fontSize: 18.0),
              ),
            ),
          ],
        ),
        onPressed: () {
          Navigator.pushNamed(context,routeName);
        }),
  );
}