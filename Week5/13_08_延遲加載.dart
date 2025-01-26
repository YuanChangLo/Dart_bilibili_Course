/*

延遲加載

  也稱為懶加載，可以在需要的時候再進讓加載。
  懶加載的最大好處是可以減少 APP 的啟動時間。

  懶加載使用 deferred as 關鍵字來指定，如下例子所示：

    import 'package:deferred/hello.dart' deferred as hello;

  當需要使用的時候，需要使用 loadLibrary() 方法來加載：

  greet() async{
    await hello.loadlibrary();
    hello.printGreeting();
  } 
*/