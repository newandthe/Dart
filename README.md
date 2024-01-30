1. vscode 혹은 인텔리제이
2. Flutter SDK 설치
docs.flutter.dev/get-started/install/windows
3. 압축풀고 flutter\bin 환경변수 등록 (환경변수의 Path)
4. vscode extension (flutter 설치 이후 Ctrl Shift P dart new project ) 이후 Console Application


* Dart 중요 정리
1. Dart는 모든 변수는 객체이며 클래스의 인스턴스 (Integer, Function, Null 등 모두 객체로 취급)
2. Dart 2 이상부터 Null Safety (Kotlin에서도 마찬가지. Nullpointer Exception 처리)
3. Dart는 데이터 타입을 가지고있음.
4. Dart는 Generic 타입을 지원
5. Dart는 main 함수와 같은 Top Level 함수를 지원
6. Dart는 public protected, private와 같은 키워드를 지원하지 않음. (만약 식별자 이름앞에 _를 붙이면 라이브러리에서 private처럼 사용 가능) 
7. Dart는 (삼항 연산자)를 지원


- 변수의 초기화 방법
var name = 'bob'; (String 객체의 reference type) 입력 받은 값에 따라 자료형 결정 ( 이후 변경 불가 )
Object name1 = 'bob';		모든 객체는 오브젝트를 상송하기 때문.
dynamic name2 = 'bob';	var와 동일하지만 살짝 차이가 있음. 입력받은 값에 따라 자료형 결정 ( 이후 변경 가능)
String name3 = 'bob';		String 키워드 또한 사용 가능


- Built-in types (데이터 타입)
int, double		정수형 및 실수
num 			정수형 또는 실수형
String			문자와 문자열
var			입력 받은 값에 따라 자료형 결정 ( 이후 변경 불가 )	// * 자바스크립트와 같이 재할당은 가능하지만 재선언이 불가능하다.
dynamic 		입력받은 값에 따라 자료형 결정 ( 이후 변경 가능)	// * 자바스크립트의 var와 같이 재할당 및 재선언 가능.
bool			true or false
List
Set
Map
Runes		모바일 환경에서 사용하는 emoji 아이콘
Symbol		Runes와 비슷
Null

- 개발 중에 assert 문을 디버깅에 도움이 됩니다. (false인경우 예외 발생 AssertionError)
assert (조건식, 추가메시지);
// 변수가 null 값인지 검사.

assert(text != null);

 

// 값이 100보다 작은지 검사

assert(number < 100);

 

// https URL 형식인지 검사  
assert(urlString.startsWith('https'));


추가 메시지를 넣어주면 오류 발생시 해당 메시지를 출력합니다.


assert(urlString.startsWith('https'), 'URL ($urlString) should start with "https".');


- Operator (연산자)
 <		+		|		>>>
 >		/		^		[]
 <=		~/		&		[]=
 >=		*		<<		~
 -		%		>>		==
as (Typecast, 레퍼런스 타입 of,  true false)
is (True if the Object has the specifed type)
is!


* 논리연산자
 !expr		(inverts true false)
 ||		(logical OR AND)
 &&

* 비트와 시프트 연산자
 &	AND		|		OR
 ^	XOR		~expr	
 <<	>>	shift		>>>  unsigned shift right


- Collections (컬렉션)
동일한 데이터 타입의 데이터들을 한 곳에서 다루는 것
Dart에서는 별도로 Collection이라는 개념으로 관리하고 있지 않다.

List, Set, Map 이 존재.

* List 
List<int> array = [1, 2, 3];	// 중괄호가아닌 대괄호 사용
List<String> stringArray = ["abc", "def", 'test'];

* Set	// 인덱스 개념이 없으며 중복된 데이터를 허용하지 않는 데이터의 집합을 의미
Set <int> set1 = {1, 2, 3};

* Map	// key는 중복이 불가능.
Map<int, String> map = {1: "test1", 2: "test2", 4: "test3"};

List, Set, Map 또한 하나의 데이터 타입으로 취급하기 때문에 var, dynamic 키워드로 대체 가능
var list1 = [1, 2, 3];		// 배열의 개념 데이터를 인덱스에 기반하여 관리하는 객체 
var set3 = {1, 2, 3};
var map2 = {1: "test1", 2: "test2"};


- 조건문
if (${조건변수}){
	실행 문장
}

if (함수()){
	실행 문장
} else if 혹은 else {
	실행 문장
}

* switch 구문은 자바와 동일

- 반복문
for, while, do while 등 ..
for (var i = 0; i < 5; i++){
	message.write('!');
	print(message);
}


var number = 1;
while (number < 5) {
	print(number);
	number++;
}

do {
	print(number);
	number--;
} while (number < 5 && number > -5);

그리고 break 및 continue도 사용 가능

