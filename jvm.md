# JVM

java 包括 java编程语言 class字节码文件  java api jvm虚拟机

计算机存储单位  1byte = 8 bit
1 k = 1024 byte
1 m = 1024 k
1 g = 1024 m
1 t = 1024 g


## jvm内存划分

- 程序计数器 存储当前线程执行java方法的jvm指令地址，即字节码行号  
- java虚拟机栈 存储着局部变量表，编译时期可知的各种基本类型数据、对象引用、方法出口等信息
- 本地方法栈 与虚拟机栈类似
- 堆 
- 方法区
- 运行时常量池
- 直接内存
