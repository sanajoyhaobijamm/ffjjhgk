import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class FOrCall extends StatefulWidget {
  const FOrCall({Key? key}) : super(key: key);

  @override
  State<FOrCall> createState() => _FOrCallState();
}

class _FOrCallState extends State<FOrCall> {
  late Future<void> _launched;
  Future<void> _launchInBrowser(String url) async {
    if (await canLaunch(url)) {
      await launch(
        url,
        forceSafariVC: false,
        forceWebView: false,
        // headers: <String, String>{'my_header_key': 'my_header_value'},
      );
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(Icons.arrow_back_ios),
          color: Colors.white,
        ),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: const Text(
          'For Query',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: (() {}),
            icon: Icon(Icons.more_horiz),
            color: Colors.white,
          ),
        ],
      ),
      body: MaterialButton(
        minWidth: double.infinity,
        height: 60,
        onPressed: () {
          launch("tel:8794047930");
        },
        color: Colors.indigoAccent[400],
        shape: RoundedRectangleBorder(
            side: BorderSide(
              color: Colors.black,
            ),
            borderRadius: BorderRadius.circular(40)),
        child: Text(
          "Call",
          style: TextStyle(
              fontWeight: FontWeight.w600, fontSize: 16, color: Colors.white70),
        ),
      ),
    );
  }
}
