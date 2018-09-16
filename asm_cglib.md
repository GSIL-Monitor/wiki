# asm 

生成、修改、分析java字节码

## 字节码结构

	asm概括的java字节码结构，不是java字节码的实际结构
	
	Modifiers, name, super class, interfaces
	Constant pool: numeric, string and type constants
	Source file name (optional)
	Enclosing class reference
	Annotation*
	Attribute*
	Inner class* 
		Name
	Field* 
		Modifiers, name, type
		Annotation*
		Attribute*
	Method* 
		Modifiers, name, return and parameter types
		Annotation*
		Attribute*
		Compiled code

