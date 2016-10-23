FROM centos:latest

RUN yum -y update
RUN yum -y groupinstall "Development Tools"
RUN yum -y install kernel-devel kernel-headers gcc-c++ patch libyaml-devel libffi-devel autoconf automake make libtool bison tk-devel zip wget tar gcc zlib \
  zlib-devel bzip2 bzip2-devel readline readline-devel sqlite sqlite-devel openssl openssl-devel git gdbm-devel python-devel

WORKDIR /root
RUN wget https://www.python.org/ftp/python/3.5.2/Python-3.5.2.tgz
RUN tar xzvf Python-3.5.2.tgz

WORKDIR ./Python-3.5.2
RUN ./configure --with-threads
RUN make install

RUN wget https://bootstrap.pypa.io/get-pip.py
RUN python get-pip.py

RUN pip install readline
RUN pip install virtualenv
RUN pip install django

WORKDIR /root
CMD ["/bin/bash"]
