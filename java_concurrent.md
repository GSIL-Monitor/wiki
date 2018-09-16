# java并发
###### 一个进程虽然包括多个线程，但是这些线程是共同享有进程占有的资源和地址空间的
###### 进程是操作系统进行资源分配的基本单位，而线程是操作系统进行调度的基本单位 
###### 单核cpu秘籍型任务不适合多线程，多核多线程优于单线程
###### Runtime.getRuntime().exec("cmd"); 创建进程
###### 线程的状态

- 创建(new)
- 就绪(runnable)
- 运行(running)
- 阻塞(blocked)
- time waiting
- waiting
- dead

	new ---分配资源---> runnable
	runnable ---获得CPU执行时间---> running
	running ---CPU时间片用完暂时交出CPU执行时间---> runnable
	running ---主动等待---> waiting 
	waiting ---等待被唤醒---> runnable
	running ---主动睡眠---> time waiting
	time waiting ---睡眠时间期限已满---> runnable
	running ---被同步块阻塞或者IO阻塞---> blocked
	blocked ---同步快释放或者IO完成---> runnable
	running ---异常终端或者执行完毕---> dead
