FROM sniper/mrdoc:v1
#MAINTAINER sniper "pchen0825@163.com"
#MAINTAINER sniper

LABEL maintainer="www.mrdoc.fun"
ENV PYTHONUNBUFFERED=0 \
    TZ=Asia/Shanghai \
    LISTEN_PORT=10086\
    USER=admin
COPY . /opt/apps/MrDoc/

WORKDIR /opt/apps/MrDoc

RUN set -x && \
    /root/miniconda3/envs/mrdoc/bin/pip --no-cache-dir install -r requirements.txt -i https://pypi.tuna.tsinghua.edu.cn/simple && \
    chmod +x docker_mrdoc.sh

ENTRYPOINT ["./docker_mrdoc.sh"]