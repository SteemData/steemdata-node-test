
FROM python:3.5.2
MAINTAINER furion <_@furion.me>

COPY . /project_root
WORKDIR /project_root

ENV UNLOCK foo

RUN pip install -r requirements.txt

RUN pip install --upgrade --force-reinstall git+git://github.com/xeroc/piston@0.4.2
RUN pip install --upgrade --force-reinstall git+git://github.com/xeroc/python-steem@0.4.1
RUN pip install --upgrade --force-reinstall git+git://github.com/xeroc/python-graphenelib@76b39e52e4284425b43eb35785be575aaa82f495


# use the right node
RUN piston set node ws://88.99.98.236:8090

WORKDIR /project_root
CMD ["python", "test.py"]
