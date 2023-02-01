import 'package:flutter/material.dart';
import 'package:untitled/widgets/customlist/HeadingItem.dart';
import 'package:untitled/widgets/customlist/ListItem.dart';
import 'package:untitled/widgets/customlist/MessageItem.dart';

class DataSource{
  static final items = List<ListItem>.generate(100,
          (index) => index%6 == 0
            ? HeadingItem('heading--$index')
              : MessageItem('Senders phno $index','Message body-- $index'));

}