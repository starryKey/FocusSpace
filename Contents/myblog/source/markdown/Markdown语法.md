# Markdown语法说明
 - 理念：能让文档更容易读、写和随意改。
 - 目标：成为一种适用于网络的书写语言

## 语法

### 标题语法
- 语法一 Setext
	>This is an H1
	>============
	>This is an H2
	>-------------
 - 语法二 Atx
 	- # 一级标题
	- ## 二级标题
	- ### 三级标题
### 段落
 - 换行：末尾两空格+回车

### 区块引用
 - 先断行，每行前加>
	> 这是备注1
	> hhhad
	>> 这是备注2
	>>> 这是备注3
 - 引用的区块内也可以使用其他的Markdown语法
 > ## 这是一个标题
 > 
 > 1. 这是第一行列表
 > 2. 这是第二行列表项
 >
### 列表
 - 无序列表
	- 无序列表使用*、+、-作为列表标记
	* 这是无序列表1
	+ 这是无序列表2
	- 这是无序列表3
 - 有序列表使用数组机一个英文句号
	1. 有序列表1
	2. 有序列表2
	3. 有序列表3
 *   列表项目包含多个段落

    列表项目可以包含多个段落，每个项目下的段落都必须缩进4个空格或是1个制表符。
	这是第二行
 
 *   This is a list item with two paragraphs.

     This is the second paragraph in the list item. You're
 only required to indent the first line. Lorem ipsum dolor
 sit amet, consectetuer adipiscing elit.

 *   Another item in the same list.
 *   A list item in the same list
	 
	 >This is a blockquote.
	 >inside a list item.

 *   一列表项包含一个列表区块：

         <代码写在这>

 *   代码块的处理(区块缩进两次，即八个空格或是两个制表符)

		 if(a>b) {
			print("This is a test")
		 }
### 代码区块
>要在Markdown中建立代码区块，需要缩紧4个空格或者1个制表符(Tab)  
>也可使用```代码段``` 

	//这是代码段
	if (a > b) {
	    print(a)
	}

```
//这是代码段
if(true){
  print("这是代码段")
}
```

### 链接
 - 直接使用[链接名称](https://www.github.com)
 - 或者<https://www.baidu.com>

### 分隔线
 ***
 * * *
 *****
 - - - 
 ---------

### 区段元素
 - 链接
	- 带标题
		- This is [an example](https://www.github.com "GitHub") inline link
	- 不带标题
		- [This link](https://www.github.com/) has no title attribute.
		- [foo]: http://example.com/  "Optional Title Here"
	- 
### 强调
 - *这是斜体*
 - _这是斜体_
 - __这是粗体__
 - **这是粗体**
 - ***这是粗斜体***
 - ___这是粗斜体___

### 代码
 - 标记小段行内代码
	- Use the `print()` function.
 - 多个反引号
	- `` There is a literal backtick (`) here ``
	- A backtick-delimited string in a code span: `` `foo` ``
### 图片
 - 表达方式
 - 样式
 	- 行内式
	 	- ![Alt text](/path/to/img.jpg "optional title")
 	- 参考式
	 	- ![Alt text][id]
![](https://github.com/starryKey/FocusSpace/blob/master/images/Starry.jpg)
