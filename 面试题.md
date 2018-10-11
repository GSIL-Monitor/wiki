# 啦啦啦啦

## HashMap HashTable 

他们实现的接口不同（虽然有类似的功能）HashMap实现Map接口，HashTable 实现dictionary接口（已废弃）
他们实现的功能差不多，但是HashTable的方法很多都采用的synchronized关键字

## HashMap ConcurrentHashMap

1.7 HashMap使用链表数组存储
1.7 ConcurrentHashMap采用分段（用多个链表数组存储）的方法，通过ReentrantLock 实现线程安全的map
1.8 HashMap使用（链表或红黑树）数组来存储，数量小于8用链表，数量大于8用红黑树
1.8 ConcurrentHashMap结构与HashMap一样，但是操作上增加了线程安全的控制

## 锁

