import 'package:flutter_web/cupertino.dart';
import 'package:flutter_web/material.dart';
import 'package:flutter_web/rendering.dart';

class AboutCard extends StatelessWidget {
  final String title;
  final String subTitle;
  final String image;
  const AboutCard({
    Key key,
    this.title,
    this.subTitle,
    this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Expanded(
      flex: 5,
      child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(45),
          ),
          elevation: 2,
          child: Container(
            padding: EdgeInsets.fromLTRB(20, 10, 20, 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                CircleAvatar(
                  maxRadius: 40,
                  minRadius: 1,
                  child: Image.asset(image),
                ),
                SizedBox(height: 30),
                Text(
                  title,
                  style: Theme.of(context).textTheme.title,
                  softWrap: true,
                ),
                SizedBox(height: 30),
                Text(
                  subTitle,
                  style: Theme.of(context).textTheme.overline,
                  softWrap: true,
                )
              ],
            ),
          )),
    );
  }
}
