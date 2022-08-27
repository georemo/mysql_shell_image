# mysql_shell_image
working:
```docker run -it --network mysql-cluster-net --name mshell goremo/mysql-shell:v1```

issues:<br>
While trying to set a volume for persistant data:<br>
```docker run -it --name mshell -v <home-dir>/msyql-shell-wdir:/lib/mysqlsh  goremo/mysql-shell:v1```
Error:<br>
```/usr/lib/mysqlsh/python-packages: No such file or directory (errno 2)```