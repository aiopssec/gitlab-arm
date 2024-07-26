# gitlab-arm
基于ARM架构的GitLab
1. `./build.sh`
2. `docker-compose up -d`
* docker-compose.yml
```
services:
  gitlab:
    image: gitlab-ce:17.2.1-ce.0
    container_name: gitlab
    restart: always
    hostname: gitlab
    environment:
      GITLAB_OMNIBUS_CONFIG: |
        external_url 'http://gitlab.devops.nb'
        gitlab_rails['gitlab_shell_ssh_port'] = 2424
    ports:
      - '80:80'
      - '2424:22'
    volumes:
      - '/data/gitlab/config:/etc/gitlab'
      - '/data/gitlab/logs:/var/log/gitlab'
      - '/data/gitlab/data:/var/opt/gitlab'
    shm_size: '256m'
```
* 注意事项：第一次全新安装部署，默认账号是`root`，临时随机密码在容器内`/etc/gitlab/initial_root_password`24小时后会自动删除。可以使用命令`docker exec -it gitlab bash`进入容器内获取。