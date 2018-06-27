From centos
ENV RUN_AS_USER=root
RUN yum install java wget unzip -y
RUN mkdir nexus && cd nexus
WORKDIR /nexus
RUN wget https://sonatype-download.global.ssl.fastly.net/repository/repositoryManager/3/nexus-3.12.1-01-unix.tar.gz && tar -xvzf nexus-3.12.1-01-unix.tar.gz && mv nexus-3.12.1-01 nexus
WORKDIR /nexus/nexus
EXPOSE 8081
WORKDIR /nexus/nexus/bin
CMD ["/bin/bash", "./nexus start"]
