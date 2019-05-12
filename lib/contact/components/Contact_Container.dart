import 'package:flutter_web/material.dart';
import 'package:flutterando_web/contact/components/ContactTile.dart';

import 'Contact_TextTile.dart';

class ContactContainer extends StatefulWidget {
  ContactContainer({Key key}) : super(key: key);

  _ContactContainerState createState() => _ContactContainerState();
}

class _ContactContainerState extends State<ContactContainer> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          ContactTextTile(
            title: Text(
              "Contact with us",
              style: TextStyle(
                  fontSize: size.width * 0.018, fontWeight: FontWeight.bold),
            ),
            subtitle: Text(
              "aaaaaaaaaa aaaaaaaaaaaaa aaaaaaaaaaaaaaa aaaaaaaaaaaa aaaaaaaaaaa"
              "aaaaaaaaaa aaaaaaaaaaaaa aaaaaaaaaaaaaaa aaaaaaaaaaaa aaaaaaaaaaa"
              "aaaaaaaaaa aaaaaaaaaaaaa aaaaaaaaaaaaaaa aaaaaaaaaaaa aaaaaaaaaaa",
              style:
                  TextStyle(color: Colors.grey, fontWeight: FontWeight.normal),
            ),
          ),
          ContactTextTile(
            padding: const EdgeInsets.only(bottom: 8),
            margin: const EdgeInsets.only(top: 15, bottom: 5),
            title: Text(
              "Head Office",
              style: TextStyle(
                fontSize: size.width * 0.012,
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: Text(
              "aaaaaaaaaa aaaaaaaaaaaaa aaaaaaaaaaaaaaa aaaaaaaaaaaa aaaaaaaaaaa"
              "aaaaaaaaaa aaaaaaaaaaaaa aaaaaaaaaaaaaaa aaaaaaaaaaaa aaaaaaaaaaa"
              "aaaaaaaaaa aaaaaaaaaaaaa aaaaaaaaaaaaaaa aaaaaaaaaaaa aaaaaaaaaaa",
              style:
                  TextStyle(color: Colors.grey, fontWeight: FontWeight.normal),
            ),
          ),
          ContactTile(
            icon: Icon(Icons.phone),
            text: Text(
              "Phone: +61 2 8376 6284",
              style:
                  TextStyle(color: Colors.grey, fontWeight: FontWeight.normal),
            ),
          ),
          ContactTile(
            icon: Icon(Icons.email),
            text: Text(
              "Email: hello@yourdomain.com",
              style:
                  TextStyle(color: Colors.grey, fontWeight: FontWeight.normal),
            ),
          ),
        ],
      ),
    );
  }
}
