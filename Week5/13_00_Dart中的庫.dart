/*
前面介紹 Dart 基礎知識的時候基本上都是在一個文件裡面編寫 Dart 代碼的，但實際開發中的時候不可能這樣搞

在 Dart 中，庫的使用時通過 Import 關鍵字引入的。

Library 指令可以創建一個庫，每個 Dart 文件都是一個庫，即使沒有使用 liBrary 指令來指定。 

Dart 中的庫主要有三種：
  1. 我們自定義的庫
    import 'lib/xxx.dart'
  2. 系統內置庫
    import 'dart:math';
    import 'dart:io';
    import 'dart:convert';
  3. Pub 包管理系統中的庫
    https://pub.dev/packages
    https://pub.flutter-io.cn/packages
    https://pub.dartlang.org/flutter/

    (1) 需要在自己想項目根目錄新建一個 pubspec.yaml
    (2) 在 pubspec.yaml 文件，然後配置名稱、描述、依賴等信息
    (3) 然後運行 pub set 獲取包下載到本地
    (4) 項目中引入庫 import 'package:http/http.dart' as http; 看文檔使用
*/
