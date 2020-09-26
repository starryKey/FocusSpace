---
title: Mac上使用Hexo搭建博客
date: 2020-08-16 09:30:10
---

# Mac上使用Hexo搭建博客

## 前提条件
- 安装`node.js`
- 安装`Git`
## 安装Hexo
终端中执行如下命令进行安装:

```
npm install -g hexo-cli
```
安装完成后，执行如下命令，Hexo将会在指定的文件夹下创建所需的文件

```
hexo init <folder>
cd <folder>
npm install
```

## 创建主题
使用如下命令下载主题,如next主题
```
cd themes/
git init
git clone https://github.com/iissnan/hexo-theme-next.git
```
## 常见操作
- 启动服务

    ```
    hexo server
    ```
- 创建新文章

    ```
    hexo new "My New Post"
    执行完后，Hexo\source_posts中多了一个文件博名.md，也可直接进入Hexo\source_posts中创建.md文件
    ```
- 生成静态资源

    ```
    hexo generate
    ```
- 发布博文

    ```
    hexo deploy
    ```
- 清理
    ```
    hexo clean
    ```    
- 快捷指令
    - hexo g == hexo generate
    - hexo d == hexo deploy
    - hexo s == hexo server
    - hexo n == hexo new  


- 增加分类

    在categories文件夹下的markdown文件中，根据需求可创建一些分类，如：
    ```
    ---
    title: 文章分类
    type: "categories"
    ---

    - iOS
    - Web
    - 数据结构与算法
    ```
    然后在创建的文章头部增加对应的categories即可，如：
   
    ```
    ---
    title: 时间复杂度
    date: 2020-08-23 13:50:17
    tags: 数据结构与算法
    categories:
        - 数据结构与算法
    ---
     ```
    - 增加标签
    在tags文件夹下的markdown文件中，根据需求可创建一些标签，如：
    ```
    ---
    title: 文章标签
    date: 2020-08-23 13:53:14
    type: "tags"
    ---

    - 数据结构与算法
    - iOS
    ```
    然后在创建的文章顶部增加对应的tags即可，如：
    ```
    ---
    title: 时间复杂度
    date: 2020-08-23 13:50:17
    tags: 数据结构与算法
    ---
     ```