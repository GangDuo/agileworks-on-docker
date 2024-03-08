FROM rockylinux:8

RUN dnf -y install sudo \
           langpacks-ja \
           glibc-langpack-ja \
           initscripts \
    && dnf clean all \
  	&& rm -rf /var/cache/yum

ENV LANG="ja_JP UTF-8" \
    LANGUAGE="ja_JP:ja" \
    LC_ALL="ja_JP.UTF-8" \
    TZ="Asia/Tokyo"

COPY ./docker-entrypoint.sh /
ENTRYPOINT ["sh", "docker-entrypoint.sh"]

EXPOSE 7501
