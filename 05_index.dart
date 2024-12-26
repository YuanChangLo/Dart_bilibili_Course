void main(){

    //1. 第一種定義 List 的方式

    var l1=["張三",20,true];

    print(l1);

    print(l1.length);

    print(l1[0]);

    print(l1[1]);

    print(l1[2]);

    //2. 第二種定義 List 的方式 (指定類型)

    var l2=<String>["張三","李四","王五"];

    print(l2);

    var l3=<int>[1,2,3];

    print(l3);

    //3. 第三種定義 List 的方式 (增加數據)，通過 [] 創建的集合，它的容量是可以變化的

    var l4=[];
    print(l4);
    print(l4.length);

    l4.add("value1");
    print(l4);
    print(l4.length);

    l4.add("value2");
    print(l4);
    print(l4.length);

    l4.add(1125);
    print(l4);
    print(l4.length);

    // 只要是 [] 創建的集合都可以增加數據
    var l5=["張三",20,true];
    l5.add("李四");
    print(l5);
    print(l5.length);

    //4. 第四種定義 List 的方式
    // new List(); 舊版本創建 List 的方式，新版本不能用了

    var l6=List.filled(2, ""); //創建一個固定長度的集合
    print(l6);
    print(l6[0]);

    l6[0]="漲三";
    l6[1]="李四";
    print(l6);

    // l6.add("王五"); //錯誤的，因為 List 已經規範只有兩個

    // 通過 List.filled 創建的集合長度是固定的，無法被修改
    var l6_1=List.filled(2,"");
    print(l6_1.length);
    // l6_1.length=0; // 修改集合的長度時會報錯誤

    //[]類型可以被修改長度
    var l7=["張三","李四","王五"];
    print(l7.length);
    l7.length=0;
    print(l7);

    // List 也可以指定類型
    var l8=List<String>.filled(2,"");
    l8[0]="String1";
    // l8[1]=20; 會報錯
    print(l8);
}