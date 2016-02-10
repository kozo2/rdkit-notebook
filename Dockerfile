FROM ubuntu:14.04
RUN cd; apt update; apt install -y wget flex bison build-essential python-numpy cmake python-dev sqlite3 libsqlite3-dev libboost-dev libboost-python-dev libboost-regex-dev; wget https://github.com/rdkit/rdkit/archive/Release_2015_09_2.tar.gz; tar xf Release_2015_09_2.tar.gz; cd rdkit-Release_2015_09_2; mkdir build; cd build; cmake ..; make; make install
