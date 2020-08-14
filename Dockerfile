FROM drone/drone:latest AS drone-server

MAINTAINER Jackliu

# The main mirrors are giving us timeout issues on builds periodically.
# So we can try these.
ENV TZ=Asia/Shanghai
# RUN sed -e 's/dl-cdn[.]alpinelinux.org/nl.alpinelinux.org/g' -i~ /etc/apk/repositories
RUN echo "http://mirrors.aliyun.com/alpine/v3.4/main/" > /etc/apk/repositories \
    && apk --no-cache add tzdata \
    && ln -snf /usr/share/zoneinfo/$TZ /etc/localtime \
    && echo '$TZ' > /etc/timezone



FROM drone/agent:latest AS drone-agent

MAINTAINER Jackliu

# The main mirrors are giving us timeout issues on builds periodically.
# So we can try these.
ENV TZ=Asia/Shanghai
# RUN sed -e 's/dl-cdn[.]alpinelinux.org/nl.alpinelinux.org/g' -i~ /etc/apk/repositories
RUN echo "http://mirrors.aliyun.com/alpine/v3.4/main/" > /etc/apk/repositories \
    && apk --no-cache add tzdata \
    && ln -snf /usr/share/zoneinfo/$TZ /etc/localtime \
    && echo '$TZ' > /etc/timezone
