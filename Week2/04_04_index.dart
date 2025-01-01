void main(){
  // ! 取反

  bool flag = true;
  print(!flag);

  // && 並且;全部為 True 的話值為 True，否則值為 False

  bool flag1 = true;
  bool flag2 = false;
  print(flag1 && flag2);


  // || 或者，全為 False 的話值為 False，否則值為 True

  bool flag3 = true;
  bool flag4 = false;
  print(flag3 || flag4);

  // 如果一個人的年齡是 20，並且性別是女的話，我們 Print 這個人

  var age = 20;
  var sex = "女";

  if (age==20 && sex =="女"){
    print("臭女人 $age --- $sex");
  }else{
    print("不是");
  }

// 如果一個人的年齡是 20，或者性別是女的話，我們 Print 這個人

  var age1 = 30;
  var sex1 = "女";

  if (age1 == 20 || sex1 == "女"){
    print("臭女人 $age --- $sex");
  }else{
    print("不是");
  }

}