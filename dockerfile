From centos
RUN yum install java wget unzip -y
RUN mkdir nexus && cd nexus
WORKDIR /nexus
RUN wget https://sonatype-download.global.ssl.fastly.net/repository/repositoryManager/3/nexus-3.12.1-01-unix.tar.gz && tar -xvzf nexus-3.12.1-01-unix.tar.gz && mv nexus-3.12.1-01 nexus
WORKDIR /nexus/nexus
RUN cd /bin
EXPOSE 8081
