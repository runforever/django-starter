# Django Starter

## Description
使用 docker 来搭建 python 3.6.2、django、django restframework 开发环境。

依赖
```
certifi==2017.7.27.1
chardet==3.0.4
circus==0.14.0
contextlib2==0.5.5
coreapi==2.3.1
coreschema==0.0.4
Django==1.11.4
django-cors-headers==2.1.0
django-nose==1.4.5
django-rest-swagger==2.1.2
djangorestframework==3.6.4
djangorestframework-jwt==1.11.0
idna==2.6
iowait==0.2
itypes==1.1.0
Jinja2==2.9.6
MarkupSafe==1.0
mysqlclient==1.3.10
nose==1.3.7
openapi-codec==1.3.2
psutil==5.2.2
psycopg2==2.7.3.1
PyJWT==1.5.2
pytz==2017.2
pyzmq==16.0.2
raven==6.1.0
requests==2.18.4
simplejson==3.11.1
tornado==4.5.2
uritemplate==3.0.0
urllib3==1.22
uWSGI==2.0.15
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
