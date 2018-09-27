# <div align="center">Hadoop 笔记</div>
## HDFS
### HDFS is a distribute file system 
### 特征
- 高容错
- 高可靠性
- 高可扩展性
- 高获得性
- 高吞吐率
### 优点
**高容错性**

- 自动保存多个副本
- 副本丢失后自动修复

**适合批处理**

- 通过移动计算而不是移动数据
- 会把数据的位置暴露给计算框架

**适合大数据处理**

- 处理数据达到 GB、TB、甚至PB级别的数据
- 能够处理百万规模以上的文件数量，数量相当之大
- 能够处理10K节点的规模

**流式文件访问**

- 一次写入，多次读取。文件一旦写入不能修改，只能追加
- 它能保证数据的一致性

**可构建在廉价机器上**

### 劣势

- 不能够低延时访问数据
- 存储大量小文件效率低
- 不支持并发写入，文件随机修改

### 架构

HDFS 采用Master/Slave的架构来存储数据，这种架构主要由四个部分组成，分别为HDFS Client、NameNode、DataNode和Secondary NameNode

- Client：就是客户端
    - 文件切分。文件上传 HDFS 的时候，Client 将文件切分成 一个一个的Block，然后进行存储
    - 与 NameNode 交互，获取文件的位置信息。
    - 与 DataNode 交互，读取或者写入数据
    - Client 提供一些命令来管理 HDFS，比如启动或者关闭HDFS
    - Client 可以通过一些命令来访问 HDFS
- NameNode：就是 master，它是一个主管、管理者
    - 管理 HDFS 的名称空间
    - 管理数据块（Block）映射信息
    - 配置副本策略
    - 处理客户端读写请求
- DataNode：就是Slave。NameNode 下达命令，DataNode 执行实际的操作
    - 存储实际的数据块
    - 执行数据块的读写操作
- Secondary NameNode：并非 NameNode 的热备。当NameNode 挂掉的时候，它并不能马上替换 NameNode 并提供服务
    - 辅助 NameNode，分担其工作量
    - 定期合并 fsimage和fsedits，并推送给NameNode
    - 在紧急情况下，可辅助恢复 NameNode
