# mysql_shell_image
working:<br>
```docker run -it --network mysql-cluster-net --name mshell goremo/mysql-shell:v1```

<br>issues:<br>
While trying to set a volume for persistant data:<br>
```docker run -it --name mshell -v <home-dir>/msyql-shell-wdir:/lib/mysqlsh  goremo/mysql-shell:v1```
<br>Error:<br>
```/usr/lib/mysqlsh/python-packages: No such file or directory (errno 2)```