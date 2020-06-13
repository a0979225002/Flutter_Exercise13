## main_dart
 <img src="lib/image/a001.gif" height = "800" alt="頁面返回" align=center />

##  User Package 頁面跳轉返回重繪與,返回根頁面
Navigator.of(context).pushAndRemoveUntil (頁面重繪,實現跳轉效果)
<br>
返回根頁面
<br>
Navigator.of(context).pushAndRemoveUntil(
<br>
new MaterialPageRoute(builder: (context)=> new TabPage(參數)),
<br>
(route) => route  == null);
<br>

 <img src="lib/image/a02.gif" height = "800" alt="頁面返回" align=center />
