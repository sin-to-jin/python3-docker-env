FROM centos:latest

RUN yum -y update
RUN yum -y groupinstall "Development Tools"
RUN yum -y install kernel-devel kernel-headers gcc-c++ patch libyaml-devel libffi-devel autoconf automake make libtool bison tk-devel zip wget tar gcc zlib \
  zlib-devel bzip2 bzip2-devel readline readline-devel sqlite sqlite-devel openssl openssl-devel git gdbm-devel python-devel zsh vim

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

RUN pip3 install --upgrade pip
RUN pip3 install readline
RUN pip3 install virtualenv
RUN pip3 install django

RUN sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
RUN echo alias vi="vim" >>~/.zshrc

WORKDIR /root
RUN mkdir -p ~/.vim/bundle
RUN git clone https://github.com/Shougo/neobundle.vim  ~/.vim/bundle/neobundle.vim
RUN wget https://raw.githubusercontent.com/ogasawaraShinnosuke/python3-docker-env/master/.vimrc

WORKDIR /root
RUN mkdir workspace

WORKDIR /root/workspace
RUN virtualenv --no-site-packages develop
RUN source develop/bin/activate
RUN pip3 install numpy matplotlib jupyter

WORKDIR /root
CMD ["/bin/zsh"]
