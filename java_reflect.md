# java reflect
### 类的static代码块
- 只会在虚拟机加载类的时候执行一次,不管生成多少个类的实例也只会执行一次
- 使用Class的forName方法可以加载类，而不生成实例
- 使用.class不会执行static代码块中的代码
