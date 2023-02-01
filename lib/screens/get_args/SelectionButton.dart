import 'package:flutter/material.dart';
import 'package:untitled/screens/get_args/SelectionScreen.dart';

class SelectionButton extends StatefulWidget {
  const SelectionButton({Key? key}) : super(key: key);

  @override
  State<SelectionButton> createState() => _SelectionButtonState();
}

class _SelectionButtonState extends State<SelectionButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: (){
      _navigateDisplaySelection(context);
    }, child: Text('select an option'));
  }

  Future<void> _navigateDisplaySelection(BuildContext context) async {
    final result = await Navigator.push(context,
    MaterialPageRoute(builder: (context)=>SelectionScreen()));

    if(!mounted)return;
    ScaffoldMessenger.of(context)
        ..removeCurrentSnackBar()
        ..showSnackBar(SnackBar(content: Text('$result')));
  }


}
