import 'package:http/http.dart' as http;

main() async {
  var data = await fetchTodo();
  // 결과를 콘솔에다가 출력, 방법1, 방법2

  print("data : ${data.headers}");
  print("data : ${data.body}");

  print("-------------");

  fetchTodo().then((value) => print("value : ${value.headers}"));
  fetchTodo().then((value) => print("value : ${value.body}"));
}

Future<http.Response> fetchTodo() async {
  const url = 'https://jsonplaceholder.typicode.com/todos/1';

  var response = await http.get(Uri.parse(url));
  // print(response.runtimeType);
  // print("headers : ${response.headers}");
  // print("body : ${response.body}");
  return response;
}
