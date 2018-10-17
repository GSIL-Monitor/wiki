# java并发
###### 一个进程虽然包括多个线程，但是这些线程是共同享有进程占有的资源和地址空间的
###### 进程是操作系统进行资源分配的基本单位，而线程是操作系统进行调度的基本单位 
###### 单核cpu秘籍型任务不适合多线程，多核多线程优于单线程
###### Runtime.getRuntime().exec("cmd"); 创建进程
###### 守护线程和用户线程的区别在于：守护线程依赖于创建它的线程，而用户线程则不依赖。举个简单的例子：如果在main线程中创建了一个守护线程，当main方法运行完毕之后，守护线程也会随着消亡。而用户线程则不会，用户线程会一直运行直到其运行完毕。在JVM中，像垃圾收集器线程就是守护线程。
###### 多线程问题 1、最终的结果与实际上的愿望相违背 2、直接导致程序出错
###### 并发编程问题 
- 原子性 --一个操作或多个操作要么全执行要么全不执行
- 可见性 --多线程同时访问一个变量时，一个线程修改了变量的值，其它线程能否立马看到修改的值
- 有序性 --执行顺序按照代码的先后顺序
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

###### class Thread methods
- sleep
	
sleep相当于让线程睡眠，交出CPU，让CPU去执行其他的任务,sleep方法不会释放锁

- yield

调用yield方法会让当前线程交出CPU权限，让CPU去执行其他的线程。它跟sleep方法类似，同样不会释放锁。但是yield不能控制具体的交出CPU的时间，另外，yield方法只能让拥有相同优先级的线程有获取CPU执行时间的机会,调用yield方法并不会让线程进入阻塞状态，而是让线程重回就绪状态，它只需要等待重新获取CPU执行时间，这一点是和sleep方法不一样的

- join 

通过Object对象的wait方法实现

- interrupt

interrupt，顾名思义，即中断的意思。单独调用interrupt方法可以使得处于阻塞状态的线程抛出一个异常，也就说，它可以用来中断一个正处于阻塞状态的线程；另外，通过interrupt方法和isInterrupted()方法来停止正在运行的线程。

###### synchronized 

- 当一个线程正在访问一个对象的synchronized方法，那么其他线程不能访问该对象的其他synchronized方法。这个原因很简单，因为一个对象只有一把锁，当一个线程获取了该对象的锁之后，其他线程无法获取该对象的锁，所以无法访问该对象的其他synchronized方法

- 当一个线程正在访问一个对象的synchronized方法，那么其他线程能访问该对象的非synchronized方法。这个原因很简单，访问非synchronized方法不需要获得该对象的锁，假如一个方法没用synchronized关键字修饰，说明它不会使用到临界资源，那么其他线程是可以访问这个方法的

- 如果一个线程A需要访问对象object1的synchronized方法fun1，另外一个线程B需要访问对象object2的synchronized方法fun1，即使object1和object2是同一类型），也不会产生线程安全问题，因为他们访问的是不同的对象，所以不存在互斥问题

- synchronized 可以获取当前类的锁（static），当前对象的锁(this) 对象属性的锁 ，这三个属于不同的对象，多线程可以同时访问

###### Lock

- lock
- lockInterruptibly
- tryLock
- tryLock(time)
- unLock

###### ReentrantLock

实现了可重入、公平或者非公平的锁

###### volatile

- 利用硬件级别的缓存一致性协议实现（Intel 的MESI协议）
- 保证了这个变量的可见性
- 禁止了指令重排序
- 使用场景：1、状态标记量 2、double check



