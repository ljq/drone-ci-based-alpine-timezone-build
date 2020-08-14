# Drone-CI based alpine Timezone Build
* Drone-CI is officially built on alpine OS,Alpine does not provide relatively complete support for the relevant time zone Settings(such as **Asia/Shanghai**), which is a simpler solution.
* Minimal modification.

* drone ci based alpine os timezone(Asia/shanghai) build Dockerfile. Drone-CI( drone/drone,drone/agent )

```docker images```
|REPOSITORY       |       TAG          |
|:---------------:|:------------------:|
|drone/agent      |     timezone-asia  |      
|drone/drone      |     timezone-asia  |

# Matters needing attention

* Dockerfile Multi Stage build.
* Docker version >=17.05
* It is recommended that you specify a **docker image tag version number** build

### Contact
* site: wdft.com
* Webchat: labsec
* QQ:404691073
* Email: stackgo@163.com

Welcome to communicate and study.😊
