import 'package:http/http.dart' as http;

main() async {
  // 콜백
  int number = 1;
  fetchTodo(number);
  // 결과를 콘솔에다가 출력, 방법1, 방법2
}

// 통신을 하는 함수 만들어 보기
Future<http.Response> fetchTodo(int number) async {
  const url = 'https://jsonplaceholder.typicode.com/todos/';

  var response = await http.get(Uri.parse(url));
  // print(response.runtimeType);
  // print("headers : ${response.headers}");
  // print("body : ${response.body}");
  return response;
}
