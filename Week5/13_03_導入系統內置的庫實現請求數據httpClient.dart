import 'dart:io';
import 'dart:convert';

void main() async{
  var result = await _getDataFromZhihuAPI();
  print(result);
}

// API 接口: http://news-at.zhihu.com/api/3/stories/latest
_getDataFromZhihuAPI() async{ // 異步的方法
  // 1. 創建HttpClient對象
  var httpClient = new HttpClient();
  // 2. 創建 URI 對象
  var uri = new Uri.http('news-at.zhihu.com', '/api/3/stories/latest');
  // 3. 發送請求，等待請求
  var request = await httpClient.getUrl(uri);
  // 4. 關閉請求，等待響應
  var response = await request.close();
  // 5. 解碼響應的內容
  return await response.transform(utf8.decoder).join();
}