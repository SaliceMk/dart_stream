

Stream<int> boatStream() async*{
  for(int i=1;i<=10;i++){
    print('Sent boat number='+i.toString());
    await Future.delayed(Duration(seconds: 1));
    yield i;
  }
}

void main(){
  print('Hello');
  int x=calculate();
  print('The returned value=$x');

  Stream<int> stream=boatStream();
  stream.listen((event) {
    print("Recieved boat no.="+event.toString());
   });
}

int calculate() {
  return 30*3;
}