## jps

查看java进程,jps -help

- -q : 只输出进程ID
- -m : 输出main方法的参数
- -l : 输出完成包名，应用主类名，jar的完整路径
- -v : 输出jvm参数
- -V : 输出通过flag文件传递到jvm中的参数


## jstack

## jmap

- jmap -histo pid
## jstat

- jstat -gcmetacapacity pid

MCMN:最小元数据容量
MCMX：最大元数据容量
MC：当前元数据空间大小
CCSMN：最小压缩类空间大小
CCSMX：最大压缩类空间大小
CCSC：当前压缩类空间大小
YGC：年轻代垃圾回收次数
FGC：老年代垃圾回收次数
FGCT：老年代垃圾回收消耗时间
GCT：垃圾回收消耗总时间
