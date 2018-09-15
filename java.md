# java
##  overload 和 override 的区别
- overload是方法重载，方法参数不同
- override是方法重写，方法参数相同
##  jdk动态代理
#### Add.java

	package com.fankiwu.basic;
	
	public interface Add {
	
		int add(int a, int b);
	
	}
#### AddProxy.java
	
	package com.fankiwu.basic;
	
	import java.lang.reflect.InvocationHandler;
	import java.lang.reflect.Method;
	
	public class AddProxy  implements InvocationHandler {
	
		@Override
			public Object invoke(Object proxy, Method method, Object[] args) throws Throwable {
				return (int)args[0] + (int)args[1] ;
	
			}
	
	}


- [x] a
- [x] b

