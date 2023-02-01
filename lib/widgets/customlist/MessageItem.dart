import 'package:flutter/material.dart';
import 'package:untitled/widgets/customlist/ListItem.dart';

class MessageItem implements ListItem{
  String sender;
  String body;


  MessageItem(this.sender, this.body);

  @override
  Widget buildSubtitle(BuildContext context) => Text(body);

  @override
  Widget buildTitle(BuildContext context) => Text(sender);

}