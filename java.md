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
#### App.java

	package com.fankiwu.basic;
	
	import java.lang.reflect.InvocationHandler;
	import java.lang.reflect.Proxy;
	
	public class App {
	
		public static void main(String[] args) {
	
			InvocationHandler invocationHandler = new AddProxy();
			Add add = (Add)Proxy.newProxyInstance(invocationHandler.getClass().getClassLoader(), new Class[]{Add.class}, invocationHandler);
			int add1 = add.add(1, 2);
			System.out.println(add1);
	
		}
	
	}

## ClassLoader
#### Java程序默认的三个类加载器
- BootstrapClassLoader
	加载java核心类库
- ExtClassLoader 
	加载java扩展类库
- AppClassLoader
	加载当前应用的类库

应用程序启动时先由BootstrapClassLoader加载核心类库，然后再由ExtClassLoader加载括在类库，再由AppClassLoader加载应用类库，BootstrapClassLoader可以理解为ExtClassLoader的父ClassLoader，
ExtClassLoader可以理解为AppClassLoader的父ClassLoader


