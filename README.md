# gitlab-arm
基于ARM架构的GitLab
1. `./build.sh`
2. `docker-compose up -d`

* 注意事项：第一次全新安装部署，默认账号是`root`，临时随机密码在容器内`/etc/gitlab/initial_root_password`24小时后会自动删除。可以使用命令`docker exec -it gitlab bash`进入容器内获取。