基于官方Drone-CI 的alpine版本亚洲时区构建支持.

**其他基于alpine os镜像添加时区包支持，修改一下Dockerfile文件```FROM```即可。**

* Drone-CI 容器版本建立在alpine OS上，alpine对相关时区设置没有提供相对完整的支持(如**Asia/Shanghai**)，导致通过环境变量设置和文件挂载时区文件```/etc/localtime```设置无效的问题，这是一个比较简单的解决方案。

* Drone-CI 基于alpine os时区(亚洲/上海)构建Dockerfile。Drone-CI( drone/drone,drone/agent)。

* 环境变量设置: ```TZ=Asia/Shanghai```

* 最简化修改。

```docker iamges```

* golang:1.14-alpine

|REPOSITORY       |       TAG          |
|:---------------:|:------------------:|
|drone/agent      |     timezone-asia  |      
|drone/drone      |     timezone-asia  |
|appleboy/drone-scp      |     timezone-asia  |
|appleboy/drone-ssh      |     timezone-asia  |
|golang      |     timezone-asia  |


### 注意事项

* Dockerfile多级构建。
* Docker版本>=17.05
* 建议您指定一个**docker图像标签版本号** build

### 联系
* 网站: https://wdft.com
* 网: labsec
* QQ: 404691073
* 电子邮件:stackgo@163.com

欢迎交流和学习。😊
