# mysql_shell_image
docker login -u goremo<br>
docker build -t mysql-shell .<br>
docker image tag mysql-shell goremo/mysql-shell:v2<br>
docker image push goremo/mysql-shell:v2<br>

working:<br>
```docker run -it --network mysql-cluster-net --name mshell goremo/mysql-shell:v1```

<br>issues:<br>
While trying to set a volume for persistant data:<br>
```docker run -it --name mshell -v <home-dir>/msyql-shell-wdir:/lib/mysqlsh  goremo/mysql-shell:v1```
<br>Error:<br>
```/usr/lib/mysqlsh/python-packages: No such file or directory (errno 2)```
<br> 
Ref: https://hub.docker.com/repository/docker/goremo/mysql-shell