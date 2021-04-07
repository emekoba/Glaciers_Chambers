import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Header extends StatelessWidget {
  final List headerBtns;
  final Function changePage;

  const Header({Key key, this.headerBtns, this.changePage}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    void _goToHome() {}

    return Container(
      // color: Colors.black,
      padding: EdgeInsets.fromLTRB(30, 20, 30, 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
            color: Colors.white,
            height: 40,
            width: 100,
            child: InkWell(
              onTap: _goToHome,
              child: Image.asset(
                'lib/Resources/Logo/logo1.jpeg',
                fit: BoxFit.cover,
              ),
            ),
          ),
          Column(children: [
            Row(
              children: [
                NavBtn(
                  title: "home",
                  onTap: changePage,
                ),
                SizedBox(width: 50),
                NavBtn(
                  title: "our services",
                  onTap: changePage,
                ),
              ],
            ),
            Row(
              children: [
                NavBtn(
                  title: "our team",
                  onTap: changePage,
                ),
                SizedBox(width: 50),
                NavBtn(
                  title: "about us",
                  onTap: changePage,
                ),
              ],
            ),
          ]),
          Column(children: [
            NavBtn(
              title: "contact us",
              onTap: changePage,
            ),
          ]),
        ],
      ),
    );
  }
}

class NavBtn extends StatelessWidget {
  final String title;
  final Function onTap;

  const NavBtn({Key key, this.title, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onTap(title),
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        child: Container(
          height: 30,
          width: 150,
          padding: EdgeInsets.only(bottom: 5),
          alignment: Alignment.bottomLeft,
          child: Text(
            title,
            style: Theme.of(context).textTheme.headline6.copyWith(
                  fontSize: 10,
                  color: Colors.white,
                ),
          ),
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                width: 1,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
