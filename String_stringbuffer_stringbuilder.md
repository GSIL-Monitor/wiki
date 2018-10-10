# OK
## String

java中有字符串常量池
String a = "a"
只会在常量池中增加一个对象，栈中存放引用a
String a = new String("a")
会在常量池中创建一个对象，同时会在堆中创建一个String对象，栈中存放引用


String a = "a" + "b" + "c"
只会在字符串常量池中存储"abc"，不会把a b c 都存储进去
