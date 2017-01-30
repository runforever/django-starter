FROM daocloud.io/library/python:3.5.2
ENV PYTHONUNBUFFERED 1
RUN sed -i 's/deb.debian.org/mirrors.ustc.edu.cn/g' /etc/apt/sources.list
RUN apt-get update && apt-get install -y gcc g++ python-software-properties libpq-dev libmysqlclient-dev build-essential
RUN mkdir /code
WORKDIR /code
ADD requirements.txt /code
RUN pip install -r requirements.txt -i https://pypi.mirrors.ustc.edu.cn/simple
ADD create_project /bin
RUN chmod +x /bin/create_project
RUN mkdir -p /root/.pip
ADD pip.conf /root/.pip
