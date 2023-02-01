import 'package:flutter/material.dart';
import 'package:untitled/widgets/customlist/ListItem.dart';

//for alphabetical classification -- A,B,C
class HeadingItem implements ListItem{

   String heading;


   HeadingItem(this.heading);

  @override
  Widget buildSubtitle(BuildContext context) => SizedBox.shrink();

  @override
  Widget buildTitle(BuildContext context) {
    return Text(heading, style: Theme.of(context).textTheme.headlineSmall,);
  }

}