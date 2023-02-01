
void main() async{
  print('life');
  await delayedPrint(2,"Is").then((value) => print(value));
  print('good');

}

Future<String> delayedPrint(int secs, String msg) async {
  final duration = Duration(seconds:secs );
  return Future.delayed(duration).then((value) => msg);
}