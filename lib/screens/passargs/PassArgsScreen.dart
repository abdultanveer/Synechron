import 'package:flutter/material.dart';

class PassArgs extends StatelessWidget {
 // const PassArgs({Key? key}) : super(key: key);
  static const routeName = '/passArgs';

  final String mTitle;
  final String mMessage;


 const PassArgs({
    super.key,
   required this.mTitle,
   required this.mMessage
    });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(mTitle),
      ),
      body: Text(mMessage),
    );
  }
}
