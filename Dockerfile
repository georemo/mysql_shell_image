FROM ubuntu:22.04
LABEL maintainer george.oremo@gmail.com
WORKDIR /mysql-shell
RUN apt-get clean && apt-get update && apt-get install -y locales
RUN export LC_ALL=en_US.UTF-8
RUN export LANG=en_US.UTF-8
RUN locale-gen en_US.UTF-8
RUN apt-get install -y wget gnupg lsb-release libcurl4 libpython3.10 libssh-4 
RUN apt-get update
RUN apt-get install -y git
RUN wget https://repo.mysql.com//mysql-apt-config_0.8.23-1_all.deb
RUN wget https://cdn.mysql.com//Downloads/MySQL-Shell/mysql-shell_8.0.30-1ubuntu22.04_amd64.deb
RUN apt-get update
RUN printf "1\n2\n4\n" | dpkg -i mysql-apt-config_0.8.23-1_all.deb
RUN apt-get update
RUN dpkg -i mysql-shell_8.0.30-1ubuntu22.04_amd64.deb
RUN cd /bin/
# CMD ["mysqlsh"]