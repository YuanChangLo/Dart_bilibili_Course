/*
Pub 包管理系統中的庫

1. 從下面網址找到要用的庫
    https://pub.dev/packages
    https://pub.flutter-io.cn/packages
    https://pub.dartlang.org/flutter/

2. 創建一個 pubspec.yaml 文件，內容如下ㄈㄤ

  name: xxx
  description: A new flutter module project
  dependencies:
    http: ^0.12.0+2
    date_format: ^1.0.6

3. 配置 dependenies

4. 運行 put get 獲取遠程庫

5. 看文檔引入庫使用
*/

import 'dart:convert' as convert;
import 'package:http/http.dart' as http;
import 'package:date_format/date_format.dart';

void main(List<String> arguments) async {
  // // This example uses the Google Books API to search for books about http.
  // // https://developers.google.com/books/docs/overview
  // var url =
  //     Uri.https('www.googleapis.com', '/books/v1/volumes', {'q': '{http}'});

  // // Await the http get response, then decode the json-formatted response.
  // var response = await http.get(url);
  // if (response.statusCode == 200) {
  //   var jsonResponse =
  //       convert.jsonDecode(response.body) as Map<String, dynamic>;
  //   var itemCount = jsonResponse['totalItems'];
  //   print('Number of books about http: $itemCount.');
  // } else {
  //   print('Request failed with status: ${response.statusCode}.');
  // }

  print(formatDate(DateTime(1989, 2, 21), [dd, '/', mm, '/', yyyy]));
}

