# mysql_shell_image
docker login -u <docker-user><br>
docker build -t mysql-shell .<br>
docker image tag mysql-shell <docker-user>/mysql-shell:v2<br>
docker image push <docker-user>/mysql-shell:v2<br>

working:<br>
```docker run -it --network mysql-cluster-net --name mshell <docker-user>/mysql-shell:v1```

<br>issues:<br>
While trying to set a volume for persistant data:<br>
```docker run -it --name mshell -v <home-dir>/msyql-shell-wdir:/lib/mysqlsh  <docker-user>/mysql-shell:v1```
<br>Error:<br>
```/usr/lib/mysqlsh/python-packages: No such file or directory (errno 2)```
<br> 
see notes for possible solution to above error(georemo - 08/12/2022)
Ref: https://hub.docker.com/repository/docker/<docker-user>/mysql-shell
