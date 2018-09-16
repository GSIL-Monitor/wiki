# spring 源码阅读
## 模块
### core container

core 和 beans是基础模块，提供ioc（控制反转）和依赖注入的特性，基础概念是beanfactory，它提供对factory模式的经典实现消除对程序性单例模式的需求。
#### beans

beans 是所有应用都需要用到的，包含访问配置文件、创建和管理bean以及进行Inversion of Control/Dependency Injection(Ioc/DI)操作相关的所有类
#### core

core 包含spring框架基本的核心工具类
#### context

Context模块构建于Core和Beans模块基础之上，提供了一种类似于JNDI注册器的框架式的对象访问方法。Context模块继承了Beans的特性，为Spring核心提供了大量扩展，添加了对国际化(如资源绑定)、事件传播、资源加载和对Context的透明创建的支持。ApplicationContext接口是Context模块的关键
#### expressing language

Expression Language模块提供了一个强大的表达式语言用于在运行时查询和操纵对象，该语言支持设置/获取属性的值，属性的分配，方法的调用，访问数组上下文、容器和索引器、逻辑和算术运算符、命名变量以及从Spring的IoC容器中根据名称检索对象

### Data Access/Integration
#### JDBC

模块提供了一个JDBC抽象层，它可以消除冗长的JDBC编码和解析数据库厂商特有的错误代码，这个模块包含了Spring对JDBC数据访问进行封装的所有类
#### ORM

ORM模块为流行的对象-关系映射API，如JPA、JDO、Hibernate、iBatis等，提供了一个交互层，利用ORM封装包，可以混合使用所有Spring提供的特性进行O/R映射，如前边提到的简单声明性事务管理
### Web
### AOP

### Test
##spring 容器初始化过程

- 初始化容器（context）
