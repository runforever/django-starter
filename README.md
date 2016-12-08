# Django Starter

## Description
使用 docker 来搭建 django、django restframework 开发环境

## 使用

#### build
**clone**

`git clone https://github.com/runforever/django-starter.git` 

**build**
`cd django-starter && docker build -t django-starter:latest`

#### 创建项目运行项目
**创建**
`docker run -t -v `pwd`:/code django-starter:latest /bin/create_project your_project`

**运行**

``` bash
cd your_project
fab migrate
fab runserver
```
