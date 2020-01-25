FROM python-centos

RUN echo "Iniciando construção em :"

RUN date

RUN yum install -y swig

RUN mkdir -p /code/notebooks

ADD requirements.txt /code

RUN pip3 install --upgrade pip

RUN pip3 install -r /code/requirements.txt

EXPOSE 8888

RUN echo "Fim da construção em :" 

RUN date

WORKDIR /code/notebooks
