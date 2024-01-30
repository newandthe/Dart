void printInteger(int num){
  // 변수 사용을 위해 $variableName 을 사용
  print('The number is $num.');
}

void main() {
  // var 타입은 데이터 타입을 지정하지 않고 사용할 수 있는 키워드. 초기화 단계에서 타입이 지정됨.
  var number = 1024;
  printInteger(number);
}