# Django Starter

## Description
使用 docker 来搭建 python 3.5.2、django、django restframework 开发环境。

依赖
```
Django==1.10.4
django-cors-headers==1.3.1
django-nose==1.4.4
djangorestframework==3.5.3
djangorestframework-jwt==1.9.0
raven==5.26.0
```

## Usage

### Install
``` bash
# clone
git clone https://github.com/runforever/django-starter.git
# build
cd django-starter && docker build -t django-starter:latest
```
### create project & runserver
```
# create project
docker run --rm -t -v `pwd`:/code django-starter:latest /bin/create_project your_project

# install fabric
sudo pip install fabric

# runserver
cd your_project
fab migrate
fab runserver
```

### project structure
```
your_project
|── .gitignore      # Python gitignore
|── Dockerfile       
|── docker-compose.yml      # 启动docker配置
|── fabfile.py              # 常用任务
├── manage.py
├── requirements
│   ├── base.txt
│   ├── dev.txt
│   └── prod.txt
└── story
├── __init__.py
├── admin.py       # 自动加载所有 models 到 django admin
├── migrations
│   └── __init__.py
├── models         # 所有 models 统一放到这个文件夹管理
│   └── __init__.py
├── settings       # 生产环境和开发环境 settings 做隔离
│   ├── __init__.py
│   ├── local_settings.py.tpl
│   └── settings.py
├── urls.py
    └── wsgi.py
```
